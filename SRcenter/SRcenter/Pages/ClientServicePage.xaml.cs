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
    /// Логика взаимодействия для ClientServicePage.xaml
    /// </summary>
    public partial class ClientServicePage : Page
    {
        public ClientServicePage()
        {
            InitializeComponent();
            ListService.ItemsSource = SRcenterEntities.GetContext().Services.ToList();
        }

        private void AddServieOrder_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddOrderServicePage((sender as Button).DataContext as Service));
        }
    }
}
