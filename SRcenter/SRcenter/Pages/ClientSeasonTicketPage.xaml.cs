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
    /// Логика взаимодействия для ClientSeasonTicketPage.xaml
    /// </summary>
    public partial class ClientSeasonTicketPage : Page
    {
        public ClientSeasonTicketPage()
        {
            InitializeComponent();
            ListSeasonTicket.ItemsSource = SRcenterEntities.GetContext().SeasonTickets.ToList();

        }
        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                ListSeasonTicket.ItemsSource = null;
                SRcenterEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                ListSeasonTicket.ItemsSource = SRcenterEntities.GetContext().SeasonTickets.OrderBy(p => p.ST_name).ToList();
                List<SeasonTicket> SeasonTickets = SRcenterEntities.GetContext().SeasonTickets.OrderBy(p => p.ST_name).ToList();
                ListSeasonTicket.ItemsSource = SeasonTickets;
            }
        }

        private void PriceVozST_Click(object sender, RoutedEventArgs e)
        {
            var SeasonTickets = SRcenterEntities.GetContext().SeasonTickets.ToList();
            SeasonTickets = SeasonTickets.OrderByDescending(p => p.ST_price).ToList();
            PriceVozST.Visibility = Visibility.Collapsed;
            PriceUbST.Visibility = Visibility.Visible;
            ListSeasonTicket.ItemsSource = SeasonTickets;

        }
        private void PriceUbST_Click(object sender, RoutedEventArgs e)
        {
            var SeasonTickets = SRcenterEntities.GetContext().SeasonTickets.ToList();
            SeasonTickets = SeasonTickets.OrderBy(p => p.ST_price).ToList();
            PriceUbST.Visibility = Visibility.Collapsed;
            PriceVozST.Visibility = Visibility.Visible;
            ListSeasonTicket.ItemsSource = SeasonTickets;
        }

        private void AddSeasonTicketOrder_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddOrderSeasonTicketPage((sender as Button).DataContext as SeasonTicket));
        }
    }
}
