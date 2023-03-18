using SRcenter.Models;
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

namespace SRcenter.Pages
{
    /// <summary>
    /// Логика взаимодействия для CouchRaspisanie.xaml
    /// </summary>
    public partial class CouchRaspisanie : Page
    {
        public CouchRaspisanie()
        {
            InitializeComponent(); 
            DataOrder.ItemsSource = SRcenterEntities.GetContext().Timetables.Where(p=>p.UserID == AuthInfo.UserID).ToList();

        }
    }
}
