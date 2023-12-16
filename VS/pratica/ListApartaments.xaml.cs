using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Data.SqlClient;
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
            DGridApartaments.ItemsSource = Practic0201Ir311v2Entities1.GetContext().Apartaments.ToList();
        }
        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            forframe.Mainframe.Navigate(new ApartmentsAdd((sender as Button).DataContext as Apartament));
        }

        private void Add_Click(object sender, RoutedEventArgs e)
        {
            forframe.Mainframe.Navigate(new ApartmentsAdd(null));
        }

        private void Delete_Click(object sender, RoutedEventArgs e)
        {
            if (DGridApartaments.SelectedIndex != -1)
            {
                Apartament xdxd=new Apartament();
                xdxd = DGridApartaments.SelectedItem as Apartament;
                using (SqlConnection conn = new SqlConnection("data source = 1-318-cls-02; initial catalog = Practic0201Ir311v2;  user id = SA; password = Qwerty123!@;"))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand($"UPDATE Apartaments SET IsDeleted='True' WHERE ID=@idwh", conn))
                    {
                        cmd.Parameters.AddWithValue("@idwh",xdxd.ID);
                        cmd.ExecuteNonQuery();
                    }
                }
                DGridApartaments.ItemsSource = null;
                DGridApartaments.ItemsSource = Practic0201Ir311v2Entities1.GetContext().Apartaments.ToList();
            }
        }

        private void DGridApartaments_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
