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

namespace pratica
{
    /// <summary>
    /// Логика взаимодействия для ListHouse.xaml
    /// </summary>
    public partial class ListHouse : Page
    {
        public ListHouse()
        {
            InitializeComponent();
            DGridHouse.ItemsSource = Practic0201Ir311v2Entities1.GetContext().Houses.ToList();
        }

        private void Add_Click(object sender, RoutedEventArgs e)
        {
            forframe.Mainframe.Navigate(new HouseAdd(null));
        }

        private void Delete_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
