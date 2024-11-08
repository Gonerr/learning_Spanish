using learning_Spanish.Data;
using learning_Spanish.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using learning_Spanish.Model;
using System.Windows.Shapes;

namespace learning_Spanish.View
{
    public partial class EditCardsView : Page
    {

        AllCardsViewModel _viewModel;
        internal EditCardsView(AllCardsViewModel viewModel)
        {
            InitializeComponent();
            DataContext = viewModel;
            _viewModel = viewModel;

            //Closing += EditCardsView_Closing;
        }

        private void ListBoxItem_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            var listBoxItem = sender as ListBoxItem;
            if (listBoxItem != null)
            {
                // Получаем DataContext ListBoxItem, который является объектом Card
                var card = listBoxItem.DataContext as Card;
                if (card != null)
                {
                    // Вызываем команду EditCommand с передачей параметра SelectedCard
                    if (DataContext is AllCardsViewModel viewModel)
                    {
                        viewModel.EditCommand.Execute(card);
                    }
                }
            }
        }

        //private void EditCardsView_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        //{
        //    // Сохраняем данные при закрытии окна
        //    ((AllCardsViewModel)DataContext).SaveData();
        //}
        private void DataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void Exit_button_click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.GoBack();
        }

        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            CardView cardWindow = new CardView(_viewModel);
            cardWindow.Show();
        }
    }
}
