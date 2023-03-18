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
    /// Логика взаимодействия для AddOrderSeasonTicketPage.xaml
    /// </summary>
    public partial class AddOrderSeasonTicketPage : Page
    {
        private SeasonTicket _seasonTicket = new SeasonTicket();
        private OrderST _OrderST = new OrderST();

        public AddOrderSeasonTicketPage(SeasonTicket selected_ST)
        {
            InitializeComponent();

            _seasonTicket = selected_ST;

            DataContext = _seasonTicket; 
            DataContext = _OrderST;

            TblockID.Visibility = Visibility.Hidden;
            TboxID.Visibility = Visibility.Hidden;

            List<SeasonTicket> STs = SRcenterEntities.GetContext().SeasonTickets.OrderBy(p => p.ST_name).ToList();

            TextBlockOrderNumber.Text = $"Оформление абонемента на имя - " + $"{AuthInfo.C_name}";
            TblockPrice.Text = $"Цена к оплает: " + $"{_seasonTicket.ST_price}" + $"руб.";
            TblockSname.Text = $"{_seasonTicket.ST_name}";
            TblockDateOrder.Text = $"{DateTime.Now.ToString("dd.MM.yyy")}";
        }

        private void AddOrder_Click(object sender, RoutedEventArgs e)
        {
            if (_OrderST.OrderSTID == 0)
            {
                _OrderST.Status = "Не оформлен";
                _OrderST.ClientID = AuthInfo.ClientID;
                _OrderST.DateOrder = DateTime.Now;
                _OrderST.SeasonTicketID = _seasonTicket.SeasonTicketID;
                SRcenterEntities.GetContext().OrderSTs.Add(_OrderST);
            }
            try
            {
                SRcenterEntities.GetContext().SaveChanges();
                MessageBox.Show("Заявка отправлена, ожидайте звонок оператора");
                NavigationService.GoBack();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }
    }
}
