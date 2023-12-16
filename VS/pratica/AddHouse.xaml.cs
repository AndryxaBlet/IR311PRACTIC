using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
    /// Логика взаимодействия для HouseAdd.xaml
    /// </summary>
    public partial class HouseAdd : Page
    {
        bool flag;
        private House _house = new House();
        public HouseAdd(House house)
        {
            InitializeComponent();
            if (house != null) { _house = house; flag = true; }
            else flag = false;
            DataContext = _house;
        }

        private void BtnSaveHouse_Click(object sender, RoutedEventArgs e)
        {
            using (SqlConnection conn = new SqlConnection("data source = 1-318-cls-02; initial catalog = Practic0201Ir311v2;  user id = SA; password = Qwerty123!@;"))
            {
                if (flag == false)
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand($"INSERT INTO House (ResidentialComplexID,Street,Number,BuildingCost,HouseValueAdded,IsDeleted) values (@vv1,@vv2,@vv3,@vv4,@vv5,@vv6)", conn))
                    {
                        cmd.Parameters.AddWithValue("@vv1", h1.Text);
                        cmd.Parameters.AddWithValue("@vv2", h2.Text);
                        cmd.Parameters.AddWithValue("@vv3", h3.Text);
                        cmd.Parameters.AddWithValue("@vv4", h4.Text);
                        cmd.Parameters.AddWithValue("@vv5", h5.Text);
                        cmd.Parameters.AddWithValue("@vv6", h6.Text);
                        cmd.ExecuteNonQuery();
                    }
                    MessageBox.Show("Информация сохранена успешно!");
                }
                else
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand($"UPDATE House SET ResidentialComplexID=@vv1,Street=@vv2,Number=@vv3,BuildingCost=@vv4,HouseValueAdded=@vv5,IsDeleted=@vv6 WHERE ID=@where1", conn))
                    {
                        cmd.Parameters.AddWithValue("where1", _house.ID);
                        cmd.Parameters.AddWithValue("@vv1", h1.Text);
                        cmd.Parameters.AddWithValue("@vv2", h2.Text);
                        cmd.Parameters.AddWithValue("@vv3", h3.Text);
                        cmd.Parameters.AddWithValue("@vv4", h4.Text);
                        cmd.Parameters.AddWithValue("@vv5", h5.Text);
                        cmd.Parameters.AddWithValue("@vv6", h6.Text);
                        cmd.ExecuteNonQuery();
                    }
                    MessageBox.Show("Информация изменена успешно!");
                }
                
                forframe.Mainframe.Navigate(new ListApartaments());

            }
        }
    }
}
