using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Data.SqlClient;
using System.Windows.Shapes;

namespace pratica
{
    /// <summary>
    /// Логика взаимодействия для stats.xaml
    /// </summary>
    public partial class stats : Page
    {
        public stats()
        {
            InitializeComponent();
            dgridstats2.Visibility = Visibility.Hidden;
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            int temp = Convert.ToInt32(txt1.Text);
            Practic0201Ir311v2Entities1.GetContext().CostKV1(temp);
            dgridstats.ItemsSource = null;
            dgridstats.ItemsSource=Practic0201Ir311v2Entities1.GetContext().rreessuullttss11.ToList();
            dgridstats2.Visibility = Visibility.Hidden;
            dgridstats.Visibility = Visibility.Visible;

        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            Practic0201Ir311v2Entities1.GetContext().PribOtKV();
            dgridstats.ItemsSource = null;
            dgridstats.ItemsSource = Practic0201Ir311v2Entities1.GetContext().rreessuullttss11.ToList();
            dgridstats2.Visibility = Visibility.Hidden;
            dgridstats.Visibility = Visibility.Visible;
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            Practic0201Ir311v2Entities1.GetContext().Prib3();
            dgridstats2.ItemsSource = null;
            dgridstats2.ItemsSource = Practic0201Ir311v2Entities1.GetContext().results2.ToList();
            dgridstats2.Visibility = Visibility.Visible;
            dgridstats.Visibility = Visibility.Hidden;
        }
    }
}
