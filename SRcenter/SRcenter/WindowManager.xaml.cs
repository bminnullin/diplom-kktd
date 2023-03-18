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
using System.Windows.Shapes;
using SRcenter.Pages;

namespace SRcenter
{
    /// <summary>
    /// Логика взаимодействия для WindowManager.xaml
    /// </summary>
    public partial class WindowManager : Window
    {
        public WindowManager()
        {
            InitializeComponent();
            MainFrame.Navigate(new ManagerClientsPage());
        }


        private void MainFrame_Navigated(object sender, System.Windows.Navigation.NavigationEventArgs e)
        {

        }

        private void MainFrame_ContentRendered(object sender, EventArgs e)
        {
            if (MainFrame.CanGoBack)
            {
                Backbtn.Visibility = Visibility.Visible;
            }
            else
            {
                Backbtn.Visibility = Visibility.Collapsed;
            }
        }

        private void BtnService_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new  ManagerServicePage());
        }

        private void BtnST_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new ManagerSeasonTicketPage());
        }

        private void BtnClients_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new ManagerClientsPage());
        }

        private void Backbtn_Click(object sender, RoutedEventArgs e)
        {
            if (MainFrame.CanGoBack)
            {
                MainFrame.GoBack();
            }
        }
        private void AccountManagerBtn_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new AccountManagerPage());
        }

        private void ExitAccount_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult x = MessageBox.Show("Вы действительно хотите выйти из профиля", "Выйти", MessageBoxButton.OKCancel, MessageBoxImage.Question);
            if (x == MessageBoxResult.OK)
            {
                MainWindow main = new MainWindow();
                main.Show();
                Close();
            }
        }
        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            MessageBoxResult x = MessageBox.Show("Вы действительно хотите закрыть", "Выйти", MessageBoxButton.OKCancel, MessageBoxImage.Question);
            if (x == MessageBoxResult.Cancel)
                e.Cancel = true;
        }

    }
}
