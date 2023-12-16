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
    /// Логика взаимодействия для AddResidentialComples.xaml
    /// </summary>
    public partial class AddResidentialComples : Page
    {
        private ResidentialComplex _residentialComplex = new ResidentialComplex();
        bool flag;
        public AddResidentialComples(ResidentialComplex residentialComplex)
        {
            InitializeComponent();
            if (residentialComplex != null) { flag = true; _residentialComplex = residentialComplex; if(_residentialComplex.IsDeleted==true) r6.IsChecked = true; else r6.IsChecked = false; }

            DataContext = _residentialComplex;
        }

        private void BtnSaveApartaments_Click(object sender, RoutedEventArgs e)
        {
            using (SqlConnection conn = new SqlConnection("data source = 1-318-cls-02; initial catalog = Practic0201Ir311v2;  user id = SA; password = Qwerty123!@;"))
            {
                if (flag == false)
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand($"INSERT INTO ResidentialComplex (Name,City,Status,BuildingCost,ComplexValueAdded,IsDeleted) values (@v1,@v2,@v3,@v4,@v5,@v6)", conn))
                    {
                        bool temp;
                        cmd.Parameters.AddWithValue("@v1", r1.Text);
                        cmd.Parameters.AddWithValue("@v2", r2.Text);
                        cmd.Parameters.AddWithValue("@v3", r3.SelectedItem);
                        cmd.Parameters.AddWithValue("@v4", r4.Text);
                        cmd.Parameters.AddWithValue("@v5", r5.Text);
                        if (r6.IsChecked == true) temp = true;
                        else temp = false;
                        cmd.ExecuteNonQuery();
                    }
                    MessageBox.Show("Информация сохранена успешно!");
                }
                else
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand($"UPDATE ResidentialComplex SET Name=@v1,City=@v2,Status=@v3,BuildingCost=@v4,ComplexValueAdded=@v5,IsDeleted=@v6 WHERE ID=@where1", conn))
                    {
                        bool temp;
                        cmd.Parameters.AddWithValue("where1", _residentialComplex.ID);
                        cmd.Parameters.AddWithValue("@v1", r1.Text);
                        cmd.Parameters.AddWithValue("@v2", r2.Text);
                        cmd.Parameters.AddWithValue("@v3", r3.SelectedItem);
                        cmd.Parameters.AddWithValue("@v4", r4.Text);
                        cmd.Parameters.AddWithValue("@v5", r5.Text);
                        if (r6.IsChecked == true) temp = true;
                        else temp = false;
                        cmd.Parameters.AddWithValue("@v6", temp);

                        cmd.ExecuteNonQuery();
                    }
                    MessageBox.Show("Информация изменена успешно!");
                }
                forframe.Mainframe.Navigate(new ListApartaments());
            }
        }
    }
}
