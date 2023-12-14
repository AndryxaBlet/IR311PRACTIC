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
    /// Логика взаимодействия для ListRealEstate.xaml
    /// </summary>
    public partial class ListApartaments : Page
    {
        public ListApartaments()
        {
            InitializeComponent();
            DGridApartaments.ItemsSource = Practic0201Ir311Entities.GetContext().Apartaments.ToList();        
        }
        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            forframe.Mainframe.Navigate(new ApartmentsAdd((sender as Button).DataContext as Apartament));
        }
    }
}
