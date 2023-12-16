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
    /// Логика взаимодействия для menu.xaml
    /// </summary>
    public partial class menu : Page
    {
        public menu()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            forframe.Mainframe.Navigate(new ListApartaments());
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            forframe.Mainframe.Navigate(new ListHouse());
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            forframe.Mainframe.Navigate(new ListResidentialComplex());
        }

        private void bn4_Click(object sender, RoutedEventArgs e)
        {
            forframe.Mainframe.Navigate(new stats());
        }
    }
}
