using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using SRcenter.Models;
namespace SRcenter.Pages
{
    /// <summary>
    /// Логика взаимодействия для AddTimetablePage.xaml
    /// </summary>
    public partial class AddTimetablePage : Page
    {
        private Timetable _currentTimetable = new Timetable();
        public AddTimetablePage()
        {
            InitializeComponent(); 

            DataContext = _currentTimetable;
            TboxDateVisit.SelectedDate = _currentTimetable.Date;

            TbBox.Visibility = Visibility.Collapsed;
            TbKick.Visibility = Visibility.Collapsed;
            
            CmbST.ItemsSource = SRcenterEntities.GetContext().BoughtSTs.Where(p => p.ClientID == AuthInfo.ClientID).ToList();
            CmbCouch.DisplayMemberPath = "U_name";
        }


        private void BtnOk_Click(object sender, RoutedEventArgs e)
        {
            if (_currentTimetable.TimetableID == 0)
            {
                _currentTimetable.UserID = (CmbCouch.SelectedItem as User).UserID;
                _currentTimetable.ClientID = AuthInfo.ClientID;
                SRcenterEntities.GetContext().Timetables.Add(_currentTimetable);
            }
            try
            {
                SRcenterEntities.GetContext().SaveChanges();
                MessageBox.Show("Вы записались на услугу");
                NavigationService.GoBack();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.InnerException.ToString());
            }
        }



        private void BtnCancel_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void CmbST_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            int a = (CmbST.SelectedItem as BoughtST).SeasonTicket.SeasonTicketID;
            if (a == 16 || a == 18)
            {
                TbBox.Visibility = Visibility.Visible;
            } 
            if (a == 17 || a == 19)
            {
                TbKick.Visibility = Visibility.Visible;
            }
            List<User> users = SRcenterEntities.GetContext().Users.Where(p => p.Role.SeasonTickets.Any(s => s.SeasonTicketID == a)).ToList();
            CmbCouch.ItemsSource = users;
        }


    }
}
