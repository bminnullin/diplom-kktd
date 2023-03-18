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
    /// Логика взаимодействия для AddBoughtSeasonTicketPage.xaml
    /// </summary>
    public partial class AddBoughtSeasonTicketPage : Page
    {
        private OrderST _OrderST = new OrderST();
        private BoughtST _BoughtST = new BoughtST();
        public AddBoughtSeasonTicketPage(OrderST selection_orderST)
        {
            InitializeComponent();

            _OrderST = selection_orderST;
            DataContext = _OrderST;
            DataContext = _BoughtST;

            TblockID.Visibility = Visibility.Hidden;
            TboxID.Visibility = Visibility.Hidden;

            TboxDateStart.Text = "Дата начала действия";
            TboxDateStart.Foreground = Brushes.LightGray;
            TboxDateEnd.Text = "Дата окончания";
            TboxDateEnd.Foreground = Brushes.LightGray;

            TextBlockOrderNumber.Text = $"Оформление заказа № " + $"{_OrderST.OrderSTID}";
            TbClientid.Text = $"{_OrderST.ClientID}" + $" | ";
            TbCname.Text = $"{_OrderST.Client.C_name}";
            TbCphone.Text = $"{_OrderST.Client.C_phone}";


            TbSTname.Text = $"{_OrderST.SeasonTicket.ST_name}";
            TbDateOrder.Text = $"{_OrderST.DateOrder}";

            TblockSname.Text = $"{_OrderST.SeasonTicket.ST_name}";

        }

        private void AddBought_Click(object sender, RoutedEventArgs e)
        {
            if (_BoughtST.BoughtSTID == 0)
            {
                _OrderST.Status = "Принят";
                _BoughtST.ClientID = _OrderST.Client.ClientID;
                _BoughtST.SeasonTicketID = _OrderST.SeasonTicket.SeasonTicketID;
                SRcenterEntities.GetContext().BoughtSTs.Add(_BoughtST);
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

        private void TboxDateStart_GotFocus(object sender, RoutedEventArgs e)
        {
            TextBox box = sender as TextBox;
            box.Text = string.Empty;
            box.Foreground = Brushes.Black;
            box.GotFocus -= TboxDateStart_GotFocus;
        }

        private void TboxDateStart_LostFocus(object sender, RoutedEventArgs e)
        {
            TextBox box = sender as TextBox;
            if (box.Text.Trim().Equals(string.Empty))
            {
                box.Text = "Введите дату начала";
                box.Foreground = Brushes.LightGray;
                box.GotFocus += TboxDateStart_GotFocus;
            }
        }

        private void TboxDateEnd_GotFocus(object sender, RoutedEventArgs e)
        {
            TextBox box = sender as TextBox;
            box.Text = string.Empty;
            box.Foreground = Brushes.Black;
            box.GotFocus -= TboxDateEnd_GotFocus;
        }

        private void TboxDateEnd_LostFocus(object sender, RoutedEventArgs e)
        {
            TextBox box = sender as TextBox;
            if (box.Text.Trim().Equals(string.Empty))
            {
                box.Text = "Введите дату окончания";
                box.Foreground = Brushes.LightGray;
                box.GotFocus += TboxDateEnd_GotFocus;
            }
        }
    }
}
