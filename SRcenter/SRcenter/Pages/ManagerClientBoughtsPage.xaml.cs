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
    /// Логика взаимодействия для ManagerClientBoughtsPage.xaml
    /// </summary>
    public partial class ManagerClientBoughtsPage : Page
    {
        private Client client = new Client();
        public ManagerClientBoughtsPage(Client selection_Client)
        {
            InitializeComponent(); 
            DataContext = SRcenterEntities.GetContext().Clients.ToList();
            TbName.Text = selection_Client.C_name;
            TbPhone.Text = selection_Client.C_phone;
            TbEmail.Text = selection_Client.C_email;
            TbBirth.Text = selection_Client.C_birthday.ToString("dd.MM.yyyy");

            List<BoughtService> boughtServices = SRcenterEntities.GetContext().BoughtServices.Where(p => p.ClientID == selection_Client.ClientID).ToList();
            List<BoughtST> boughtST = SRcenterEntities.GetContext().BoughtSTs.Where(p => p.ClientID == selection_Client.ClientID).ToList();
            List<Timetable> timetable = SRcenterEntities.GetContext().Timetables.Where(p => p.ClientID == selection_Client.ClientID).ToList();
            ListService.ItemsSource = boughtServices;
            ListSeasonTicket.ItemsSource = boughtST;
            ListTimetable.ItemsSource = timetable;
        }
    }
}
