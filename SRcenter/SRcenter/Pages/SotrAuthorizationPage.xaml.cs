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
    /// Логика взаимодействия для SotrAuthorizationPage.xaml
    /// </summary>
    public partial class SotrAuthorizationPage : Page
    {
        public SotrAuthorizationPage()
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
                        List<User> users = SRcenterEntities.GetContext().Users.ToList();
                        User c = users.FirstOrDefault(p => p.U_password == TbPass.Password && p.U_login == TbLogin.Text);
                        if (c != null)
                        {
                            //MessageBox.Show("Сотрудник авторизовался");
                            AuthInfo.UserID = c.UserID;
                            AuthInfo.U_name = c.U_name;
                            AuthInfo.U_phone = c.U_phone;
                            AuthInfo.U_email = c.U_email;
                            AuthInfo.U_ip = c.U_ip;
                            AuthInfo.U_birthday = c.U_bitrhday;
                            AuthInfo.U_photo = c.U_photo;

                            WindowAdmin admin = new WindowAdmin();
                            WindowCoach coach = new WindowCoach();
                            WindowManager manager = new WindowManager();
                            WindowTrainer trainer = new WindowTrainer();

                            switch (c.RoleID)
                            {
                                case 1:
                                    admin.Show();
                                    Application.Current.MainWindow.Close();
                                    break;
                                case 2:
                                    manager.Show();
                                    Application.Current.MainWindow.Close();
                                    break;
                                case 5:
                                    coach.Show();
                                    Application.Current.MainWindow.Close();
                                    break;
                                case 6:
                                    coach.Show();
                                    Application.Current.MainWindow.Close();
                                    break;
                                case 7:
                                    trainer.Show();
                                    Application.Current.MainWindow.Close();
                                    break;
                                case 8:
                                    trainer.Show();
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
