using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
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
    /// Логика взаимодействия для ApartmentsAdd.xaml
    /// </summary>
    public partial class ApartmentsAdd : Page
    {
        private Apartament _appart = new Apartament();
        bool flag;
        public ApartmentsAdd(Apartament apartament)
        {
            InitializeComponent();
            if (apartament != null) { flag = true; _appart = apartament;  if (_appart.IsDeleted == true) v7.IsChecked = true; else v7.IsChecked = false; }
            else flag = false;
            DataContext = _appart;
        }

        private void BtnSaveApartaments_Click(object sender, RoutedEventArgs e)
        {
            using (SqlConnection conn = new SqlConnection("data source = 1-318-cls-02; initial catalog = Practic0201Ir311v2;  user id = SA; password = Qwerty123!@;"))
            {
                if (flag == false)
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand($"INSERT INTO Apartaments (HouseID,Number,Area,CountOfRooms,Section,Floor,IsSold,BuildingCost,ApartmentValueAdded,IsDeleted) values (@v1,@v2,@v3,@v4,@v5,@v6,@v7,@v8,@v9,@v10)", conn))
                    {
                        bool temp;
                        cmd.Parameters.AddWithValue("@v1", Convert.ToInt32(v1.Text));
                        cmd.Parameters.AddWithValue("@v2", v2.Text);
                        cmd.Parameters.AddWithValue("@v3", v3.Text);
                        cmd.Parameters.AddWithValue("@v4", v4.Text);
                        cmd.Parameters.AddWithValue("@v5", v5.Text);
                        cmd.Parameters.AddWithValue("@v6", v6.Text);
                        if (v7.IsChecked == true) temp = true;
                        else temp = false;
                        cmd.Parameters.AddWithValue("@v7", temp);
                        cmd.Parameters.AddWithValue("@v8", v8.Text);
                        cmd.Parameters.AddWithValue("@v9", Convert.ToInt32(v9.Text));
                        cmd.Parameters.AddWithValue("@v10", v10.Text);
                        cmd.ExecuteNonQuery();
                    }
                    MessageBox.Show("Информация сохранена успешно!");
                }
                else
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand($"UPDATE Apartaments SET HouseID=@v1,Number=@v2,Area=@v3,CountOfRooms=@v4,Section=@v5,Floor=@v6,IsSold=@v7,BuildingCost=@v8,ApartmentValueAdded=@v9,IsDeleted=@v10 WHERE ID=@where1", conn))
                    {
                        bool temp;
                        cmd.Parameters.AddWithValue("where1", _appart.ID);
                        cmd.Parameters.AddWithValue("@v1", Convert.ToInt32(v1.Text));
                        cmd.Parameters.AddWithValue("@v2", v2.Text);
                        cmd.Parameters.AddWithValue("@v3", v3.Text);
                        cmd.Parameters.AddWithValue("@v4", v4.Text);
                        cmd.Parameters.AddWithValue("@v5", v5.Text);
                        cmd.Parameters.AddWithValue("@v6", v6.Text);
                        if (v7.IsChecked == true) temp = true;
                        else temp = false;
                        cmd.Parameters.AddWithValue("@v7", temp);
                        cmd.Parameters.AddWithValue("@v8", v8.Text);
                        cmd.Parameters.AddWithValue("@v9", Convert.ToInt32(v9.Text));
                        cmd.Parameters.AddWithValue("@v10", v10.Text);
                        cmd.ExecuteNonQuery();
                    }
                    MessageBox.Show("Информация изменена успешно!");
                }
                forframe.Mainframe.Navigate(new ListApartaments());

            }


        }
    }
}
