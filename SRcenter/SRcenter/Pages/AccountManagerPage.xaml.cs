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
    /// Логика взаимодействия для AccountManagerPage.xaml
    /// </summary>
    public partial class AccountManagerPage : Page
    {
        public AccountManagerPage()
        {
            InitializeComponent(); 
            DataContext = SRcenterEntities.GetContext().Users.ToList();
            TbName.Text = AuthInfo.U_name;
            TbPhone.Text = AuthInfo.U_phone;
            TbEmail.Text = AuthInfo.U_email;
            TbIP.Text = AuthInfo.U_ip;
            TbBirth.Text = AuthInfo.U_birthday.ToString("dd.MM.yyyy");
        }
    }
}
