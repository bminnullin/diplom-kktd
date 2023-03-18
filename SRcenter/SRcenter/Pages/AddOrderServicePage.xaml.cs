using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
    /// Логика взаимодействия для AddOrderServicePage.xaml
    /// </summary>
    public partial class AddOrderServicePage : Page
    {
        private Service _currentService = new Service();
        private OrderService _OrderService = new OrderService();
        public AddOrderServicePage(Service selection_Service)
        {
            InitializeComponent();

            _currentService = selection_Service;

            DataContext = _currentService;
            DataContext = _OrderService;

            TblockID.Visibility = Visibility.Hidden;
            TboxID.Visibility = Visibility.Hidden;

            TextBlockOrderNumber.Text = $"Оформление услуги на имя - " + $"{AuthInfo.C_name}";
            TblockPrice.Text = $"Цена к оплает: " + $"{_currentService.S_price}" + $"руб.";
            TblockSname.Text = $"{_currentService.S_name}";
        }


        private void AddOrder_Click(object sender, RoutedEventArgs e)
        {
            if (_OrderService.OrderServiceID == 0)
            {
                _OrderService.Status = "Не оформлен";
                _OrderService.ClientID = AuthInfo.ClientID;
                _OrderService.ServiceID = _currentService.ServiceID;
                SRcenterEntities.GetContext().OrderServices.Add(_OrderService);
            }
            try
            {
                SRcenterEntities.GetContext().SaveChanges();
                MessageBox.Show("Вы записались на услугу");
                NavigationService.GoBack();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }
    }
}
