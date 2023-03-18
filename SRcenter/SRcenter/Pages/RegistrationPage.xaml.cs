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
    /// Логика взаимодействия для RegistrationPage.xaml
    /// </summary>
    public partial class RegistrationPage : Page
    {
        public Client _Clients = new Client();
        
        public RegistrationPage(Client selected_Client)
        {
            InitializeComponent();
            if (selected_Client != null)
            {
                _Clients = selected_Client;
                TblockId.Visibility = Visibility.Hidden;
                TboxId.Visibility = Visibility.Hidden;
                
            }
            DataContext = _Clients;
            
        }

        private void Regbtn_Click(object sender, RoutedEventArgs e)
        {
            
            if (SRcenterEntities.GetContext().Clients.Count(x => x.C_login == TbLogin.Text) > 0)
            {
                MessageBox.Show("Пользователь с таким логинов уже существует.", 
                    "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            }

                
            try
            {
                _Clients.RoleID = 4;
                SRcenterEntities.GetContext().Clients.Add(_Clients);
                SRcenterEntities.GetContext().SaveChanges();
                MessageBox.Show("Запись изменена");
                NavigationService.GoBack();
            }
            catch 
            {
                MessageBox.Show("Ошибка при добавлении данных!", 
                    "Уведомление", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
        private void ShowPassword_PreviewMouseDown(object sender, MouseButtonEventArgs e) => ShowPasswordFunction();
        private void ShowPassword_PreviewMouseUp(object sender, MouseButtonEventArgs e) => HidePasswordFunction();
        private void ShowPassword_MouseLeave(object sender, MouseEventArgs e) => HidePasswordFunction();

        private void ShowPasswordFunction()
        {
            ShowPassword.Text = "Скрыть пароль";
            PasswordUnmask.Visibility = Visibility.Visible;
            PbPass.Visibility = Visibility.Hidden;
            PasswordUnmask.Text = PbPass.Password;
        }

        private void HidePasswordFunction()
        {
            ShowPassword.Text = "Показать пароль";
            PasswordUnmask.Visibility = Visibility.Hidden;
            PbPass.Visibility = Visibility.Visible;
        }

        private void TbPass_PasswordChanged(object sender, RoutedEventArgs e)
        {
           if (PbPass.Password != TbPass.Text)
            {
                Regbtn.IsEnabled = false;
                PbPass.Background = Brushes.LightCoral;
                PbPass.BorderBrush = Brushes.Red;
            }
            else
            {
                Regbtn.IsEnabled = true;
                PbPass.Background = Brushes.LightGreen;
                PbPass.BorderBrush = Brushes.Green;
            }
        }

        
    }
}
