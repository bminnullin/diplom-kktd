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
    /// Логика взаимодействия для ManagerSeasonTicketPage.xaml
    /// </summary>
    public partial class ManagerSeasonTicketPage : Page
    {
        public ManagerSeasonTicketPage()
        {
            InitializeComponent();
            DataOrder.ItemsSource = SRcenterEntities.GetContext().OrderSTs.ToList();
        }

        private void AddBoughtST_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new  AddBoughtSeasonTicketPage((sender as Button).DataContext as OrderST));
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                SRcenterEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                DataOrder.ItemsSource = SRcenterEntities.GetContext().OrderSTs.ToList();
            }
        }
    }
}
