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
    /// Логика взаимодействия для AddBoughtServicePage.xaml
    /// </summary>
    public partial class AddBoughtServicePage : Page
    {
        private OrderService _OrderService = new OrderService();
        private BoughtService _BoughtService = new BoughtService(); 
        public AddBoughtServicePage(OrderService selection_OrderService)
        {
            InitializeComponent();

            _OrderService = selection_OrderService; 
            DataContext = _OrderService;
            DataContext = _BoughtService;

            TblockID.Visibility = Visibility.Hidden;
            TboxID.Visibility = Visibility.Hidden;

            TextBlockOrderNumber.Text = $"Оформление заказа № " + $"{_OrderService.OrderServiceID}";
            TbClientid.Text = $"{_OrderService.ClientID}" + $" | ";
            TbCname.Text = $"{_OrderService.Client.C_name}";
            TbCphone.Text = $"{_OrderService.Client.C_phone}";


            TbSname.Text = $"{_OrderService.Service.S_name}";
            TbVisit.Text = $"{_OrderService.DateVisit}";

            TblockSname.Text = $"{_OrderService.Service.S_name}";

        }
        private void AddBought_Click(object sender, RoutedEventArgs e)
        {
            if (_BoughtService.BoughtServiceID == 0)
            {
                _OrderService.Status = "Принят";
                _BoughtService.ClientID = _OrderService.Client.ClientID;
                _BoughtService.ServiceID = _OrderService.Service.ServiceID;
                SRcenterEntities.GetContext().BoughtServices.Add(_BoughtService);
            }
            try
            {
                SRcenterEntities.GetContext().SaveChanges();
                MessageBox.Show("Покупка оформлена");
                NavigationService.GoBack();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }
    }
}
