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
using GMap.NET;
using GMap.NET.MapProviders;
using GMap.NET.WindowsPresentation;
using GMap.NET.WindowsForms.Markers;
using GMap.NET.WindowsForms.ToolTips;
using System.Net;
using GMap.NET.WindowsForms;
using System.Windows.Forms;

namespace SRcenter.Pages
{
    /// <summary>
    /// Логика взаимодействия для AboutPage.xaml
    /// </summary>
    public partial class AboutPage : Page
    {
        public AboutPage()
        {
            InitializeComponent();
        }

        private void GMap_Loaded(object sender, RoutedEventArgs e)
        {
            GMaps.Instance.Mode = AccessMode.ServerAndCache; //выбор подгрузки карты – онлайн или из ресурсов
            GooglMap.MapProvider = GoogleMapProvider.Instance; //какой провайдер карт используется (в нашем случае гугл) 
            GooglMap.MinZoom = 10; //минимальный зум
            GooglMap.MaxZoom = 16; //максимальный зум
            GooglMap.Zoom = 16; // какой используется зум при открытии
            GooglMap.Position = new PointLatLng(55.816708, 49.129601);// точка 
            GooglMap.MouseWheelZoomType = MouseWheelZoomType.MousePositionAndCenter; // как приближает (просто в центр карты или по положению мыши)
            GooglMap.CanDragMap = true; // перетаскивание карты мышью
            GooglMap.DragButton =  MouseButton.Left; // какой кнопкой осуществляется перетаскивание
            GooglMap.ShowCenter = false; //показывать или скрывать красный крестик в центре
            GooglMap.ShowTileGridLines = false; //показывать или скрывать тайлы

            GMap.NET.WindowsPresentation.GMapMarker marker = new GMap.NET.WindowsPresentation.GMapMarker(new PointLatLng(55.816708, 49.129601));

            marker.Shape = new Image
            {
                Source = new BitmapImage(new Uri(@"E:\Всякое\Колледж\Курс 4\Диплом\SRcenter\SRcenter\bin\Release\MapMarker.png")),
                Width = 40,
                Height = 40,
                ToolTip = "Furniture SHOP",
                Visibility = Visibility.Visible
            };
            GooglMap.Markers.Add(marker);
        }

    }
}
