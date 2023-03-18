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
using SRcenter.Pages;

namespace SRcenter
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            MainFrame.Navigate(new MainPage());
        }

        private void Auth_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new AuthorizationPage());
        }

        private void MainSearch_Click(object sender, RoutedEventArgs e)
        {

        }
        private void Back_Click(object sender, RoutedEventArgs e)
        {
            if (MainFrame.CanGoBack)
            {
                MainFrame.GoBack();
            }
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
        private void BtnMain_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new MainPage());
        }

        private void BtnService_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new ServicePage());
        }

        private void BtnST_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new SeasonTicketPage());
        }

        private void BtnAddress_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new AboutPage());
        }

        private void MainFrame_Navigated(object sender, NavigationEventArgs e)
        {

        }
        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            MessageBoxResult x = MessageBox.Show("Вы действительно хотите закрыть", "Выйти", MessageBoxButton.OKCancel, MessageBoxImage.Question);
            if (x == MessageBoxResult.Cancel)
                e.Cancel = true;
        }
    }
}
