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
using SRcenter.Models;
using System.Windows.Media.Animation;

namespace SRcenter
{
    /// <summary>
    /// Логика взаимодействия для WindowClient.xaml
    /// </summary>
    public partial class WindowClient : Window
    {
        public WindowClient()
        {
            InitializeComponent();
            MainFrame.Navigate(new ClientMainPage());
        }

        private void Backbtn_Click(object sender, RoutedEventArgs e)
        {
           if(MainFrame.CanGoBack)
            {
                MainFrame.GoBack();
            }  
        }
        private void BtnMain_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new ClientMainPage());
        }
        private void BtnAddress_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new AboutPage());
        }

        private void BtnST_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new ClientSeasonTicketPage());
        }

        private void BtnService_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new ClientServicePage());
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

        private void MainFrame_Navigated(object sender, System.Windows.Navigation.NavigationEventArgs e)
        {

        }


        private void AccountClient_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new AccountClientPage());
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
