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

namespace FormTours
{
    /// <summary>
    /// Логика взаимодействия для HotelImage.xaml
    /// </summary>
    public partial class HotelImage : Window
    {
        public HotelImage()
        {
            try
            {
                InitializeComponent();
                ToursIR311Entities tourbase = new ToursIR311Entities();
                DG.ItemsSource = tourbase.HotelImages.ToList();
            }
            catch (Exception e)
            { }
        }
    }
}
