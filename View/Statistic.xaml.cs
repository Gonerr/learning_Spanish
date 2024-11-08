using learning_Spanish.ViewModel;
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

namespace learning_Spanish.View
{
    /// <summary>
    /// Логика взаимодействия для Statistic.xaml
    /// </summary>
    public partial class Statistic : Page
    {
        internal Statistic(AllCardsViewModel viewModel)
        {
            InitializeComponent();
            DataContext = viewModel;
        }

        private void Exit_button_click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.GoBack();
        }
    }
}
