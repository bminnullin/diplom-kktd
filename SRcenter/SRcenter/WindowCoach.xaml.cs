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
    /// Логика взаимодействия для WindowCoach.xaml
    /// </summary>
    public partial class WindowCoach : Window
    {
        public WindowCoach()
        {
            InitializeComponent();
        }

        private void BtnRasp_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new CouchRaspisanie());
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

        private void AccountCoachBtn_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new AccountCouchPage());
        }

        private void Backbtn_Click(object sender, RoutedEventArgs e)
        {
            if (MainFrame.CanGoBack)
            {
                MainFrame.GoBack();
            }
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
