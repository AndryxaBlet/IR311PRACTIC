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
    /// Логика взаимодействия для ApartmentsAdd.xaml
    /// </summary>
    public partial class ApartmentsAdd : Page
    {
        private Apartament _appart = new Apartament();
        public ApartmentsAdd(Apartament apartament)
        {
            InitializeComponent();
            if (apartament != null) _appart = apartament;

            DataContext = _appart;
        }

        private void BtnSaveApartaments_Click(object sender, RoutedEventArgs e)
        {
            //StringBuilder errors = new StringBuilder();
            //if (_appart.ID < 0  && Practic0201Ir311Entities.GetContext().Apartaments.ToList().Contains()==true)
            //    errors.AppendLine("Укажите дейтвительный ID");
            //if (_appart.HouseID < 1)
            //    errors.AppendLine("Укажите дейтвительный Number");
            //if (_appart.Number < 1)
            //    errors.AppendLine("Укажите название отеля");
            //if (_appart.Area < 0)
            //    errors.AppendLine("Укажите название отеля");
            //if (_appart.CountOfRooms < 1)
            //    errors.AppendLine("Укажите название отеля");
            //if (_appart.Section < 0)
            //    errors.AppendLine("Кол-во звёзд - число от 1 до 5");
            //if (_appart.Floor < 1)
            //    errors.AppendLine("Выберите страну");
            //if (_appart.IsSold)
            //    errors.AppendLine("Выберите страну");
            //if (_appart.BuildingCost < 0)
            //    errors.AppendLine("Выберите страну");
            //if (_appart.ApartmentValueAdded < 0)
            //    errors.AppendLine("Выберите страну");
            //if (errors.Length > 0)
            //{
            //    MessageBox.Show(errors.ToString());
            //    return;
            //}
            //if (_appart.ID == 0)
            //    Practic0201Ir311Entities.GetContext().Apartaments.Add(_appart);
            //try
            //{
            //    Practic0201Ir311Entities.GetContext().SaveChanges();
            //    MessageBox.Show("Информация сохранена");
            //}
            //catch (Exception ex) { MessageBox.Show(ex.Message.ToString()); }
        }
    }
}
