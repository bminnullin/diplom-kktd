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
    /// Логика взаимодействия для AuthorizationPage.xaml
    /// </summary>
    public partial class AuthorizationPage : Page
    {

        public AuthorizationPage()
        {
            InitializeComponent();
            TbLogin.Text = "Введите логин";
            TbLogin.Foreground = Brushes.LightGray;
            TbPass.Password = "Введите пароль";
            TbPass.Foreground = Brushes.LightGray;
        }

        private void OKbtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                
                if (TbLogin.Text.Length > 0)
                {
                    if (TbPass.Password.Length > 0)
                    {
                        List<Client> clients = SRcenterEntities.GetContext().Clients.ToList();
                        Client c = clients.FirstOrDefault(p => p.C_password == TbPass.Password && p.C_login == TbLogin.Text);
                        if ( c != null)
                        {
                            //MessageBox.Show("Пользовательно авторизовался");
                            AuthInfo.ClientID = c.ClientID;
                            AuthInfo.C_name = c.C_name;
                            AuthInfo.C_phone = c.C_phone;
                            AuthInfo.C_email = c.C_email;
                            AuthInfo.C_birthday = c.C_birthday;
                            WindowClient client = new WindowClient();
                            switch (c.RoleID)
                            {
                                case 4:
                                    client.Show();
                                    Application.Current.MainWindow.Close();
                                    break;
                            }
                        }
                        else
                        MessageBox.Show("Пользовательно не найден");
                        return;     
                    }
                    else MessageBox.Show("Введите пароль");
                }
                else MessageBox.Show("Введите логин");
            }
            catch
            {
                MessageBox.Show("Ошибка при авторизации!",
                    "Уведомление", MessageBoxButton.OK, MessageBoxImage.Error); 
            }
        }
        private void Regbtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new RegistrationPage(null));
        }

        private void ShowPassword_PreviewMouseDown(object sender, MouseButtonEventArgs e) => ShowPasswordFunction();
        private void ShowPassword_PreviewMouseUp(object sender, MouseButtonEventArgs e) => HidePasswordFunction();
        private void ShowPassword_MouseLeave(object sender, MouseEventArgs e) => HidePasswordFunction();

        private void ShowPasswordFunction()
        {
            ShowPassword.Text = "Скрыть пароль";
            PasswordUnmask.Visibility = Visibility.Visible;
            TbPass.Visibility = Visibility.Hidden;
            PasswordUnmask.Text = TbPass.Password;
        }

        private void HidePasswordFunction()
        {
            ShowPassword.Text = "Показать пароль";
            PasswordUnmask.Visibility = Visibility.Hidden;
            TbPass.Visibility = Visibility.Visible;
        }

        private void Sotrbtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new SotrAuthorizationPage());
        }

        private void TbLogin_GotFocus(object sender, RoutedEventArgs e)
        {
            TextBox box = sender as TextBox;
            box.Text = string.Empty;
            box.Foreground = Brushes.Black;
            box.GotFocus -= TbLogin_GotFocus;
        }

        private void TbLogin_LostFocus(object sender, RoutedEventArgs e)
        {

            TextBox box = sender as TextBox;
            if (box.Text.Trim().Equals(string.Empty))
            {
                box.Text = "Введите логин";
                box.Foreground = Brushes.LightGray;
                box.GotFocus += TbLogin_GotFocus;
            }
        }

        private void TbPass_GotFocus(object sender, RoutedEventArgs e)
        {
            PasswordBox box = sender as PasswordBox;
            box.Password = string.Empty;
            box.Foreground = Brushes.Black;
            box.GotFocus -= TbPass_GotFocus;
        }

        private void TbPass_LostFocus(object sender, RoutedEventArgs e)
        {
            PasswordBox box = sender as PasswordBox;
            if (box.Password.Trim().Equals(string.Empty))
            {
                box.Password = "Введите пароль";
                box.Foreground = Brushes.LightGray;
                box.GotFocus += TbPass_GotFocus;
            }
        }
    }
}
