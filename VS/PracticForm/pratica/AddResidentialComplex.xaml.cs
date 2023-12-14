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
    /// Логика взаимодействия для AddResidentialComples.xaml
    /// </summary>
    public partial class AddResidentialComples : Page
    {
        private ResidentialComplex _residentialComplex = new ResidentialComplex();
        public AddResidentialComples(ResidentialComplex residentialComplex)
        {
            InitializeComponent();
            if (residentialComplex != null) _residentialComplex = residentialComplex;

            DataContext = _residentialComplex;
        }
    }
}
