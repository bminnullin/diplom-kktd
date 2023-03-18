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
    /// Логика взаимодействия для AccountClientPage.xaml
    /// </summary>
    public partial class AccountClientPage : Page
    {
        public static WindowClient window;
        public AccountClientPage()
        {
            InitializeComponent();
            DataContext = SRcenterEntities.GetContext().Clients.ToList(); 
            TbName.Text = AuthInfo.C_name;
            TbPhone.Text = AuthInfo.C_phone;
            TbEmail.Text = AuthInfo.C_email;
            TbBirth.Text = AuthInfo.C_birthday.ToString("dd.MM.yyyy");

            List<BoughtService> boughtServices = SRcenterEntities.GetContext().BoughtServices.Where(p => p.ClientID == AuthInfo.ClientID).ToList();            
            List<BoughtST> boughtST = SRcenterEntities.GetContext().BoughtSTs.Where(p => p.ClientID == AuthInfo.ClientID).ToList();
            List<Timetable> timetable = SRcenterEntities.GetContext().Timetables.Where(p => p.ClientID == AuthInfo.ClientID).ToList();
            ListService.ItemsSource = boughtServices;
            ListSeasonTicket.ItemsSource = boughtST;
            ListTimetable.ItemsSource = timetable;
        }


        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            List<BoughtService> boughtServices = SRcenterEntities.GetContext().BoughtServices.Where(p => p.ClientID == AuthInfo.ClientID).ToList();
            List<BoughtST> boughtST = SRcenterEntities.GetContext().BoughtSTs.Where(p => p.ClientID == AuthInfo.ClientID).ToList();
            List<Timetable> timetable = SRcenterEntities.GetContext().Timetables.Where(p => p.ClientID == AuthInfo.ClientID).ToList();
            ListService.ItemsSource = boughtServices;
            ListSeasonTicket.ItemsSource = boughtST;
            ListTimetable.ItemsSource = timetable;
        }

        private void AddTimetable_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddTimetablePage());
        }
    }
}
