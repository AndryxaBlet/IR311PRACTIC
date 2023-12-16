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
    /// Логика взаимодействия для ListResidentialComplex.xaml
    /// </summary>
    public partial class ListResidentialComplex : Page
    {
        public ListResidentialComplex()
        {
            InitializeComponent();
            DGridResidentialComplex.ItemsSource = Practic0201Ir311v2Entities1.GetContext().ResidentialComplexes.ToList();
        }

        private void Delete_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Add_Click(object sender, RoutedEventArgs e)
        {
            forframe.Mainframe.Navigate(new AddResidentialComples(null));
        }
    }
}
