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
    /// Логика взаимодействия для ManagerClientsPage.xaml
    /// </summary>
    public partial class ManagerClientsPage : Page
    {
        public ManagerClientsPage()
        {
            InitializeComponent();
            DataOrder.ItemsSource = SRcenterEntities.GetContext().Clients.ToList();
        }

        private void ClientBoughts_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ManagerClientBoughtsPage((sender as Button).DataContext as Client));
        }

        private void DataOrder_LoadingRow(object sender, DataGridRowEventArgs e)
        {
           
        }
    }
}
