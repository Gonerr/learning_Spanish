using learning_Spanish.View;
using learning_Spanish.ViewModel;
using System.Windows.Navigation;
using System.Windows.Controls;
using System.Windows;
using Notification;

namespace learning_Spanish
{
    public partial class MainWindow : Page
    {
        static internal AllCardsViewModel ViewModel;

        public MainWindow()
        {
            NavigationService ns = NavigationService.GetNavigationService(this);
            
                InitializeComponent();
              
                ViewModel = new AllCardsViewModel();
                DataContext = ViewModel;
                SizeChanged += MainWindow_SizeChanged;
            
            
        }

        private void MainWindow_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            UpdateFontSize();
        }

        private void UpdateFontSize()
        {
            double scaleFactor = ActualWidth / 800;
            double baseFontSize = 72; // базовый размер шрифта
            double baseHeight = 186;
            double baseWidth = 460;
        }

        private void showCards_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Statistic_Click(object sender, RoutedEventArgs e)
        {
            Statistic page = new Statistic(ViewModel);
            this.NavigationService.Navigate(page);
        }


        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }

        private void EditCards_button_click(object sender, RoutedEventArgs e)
        {
            EditCardsView page = new EditCardsView(ViewModel);
            this.NavigationService.Navigate(page);
            //// Создаем окно для навигации
            //    learning_Spanish.View.NavigationWindow navWindow = new learning_Spanish.View.NavigationWindow();
            //    navWindow.Show();

            //    // Загружаем страницу MainWindow в окно навигации
            //    learning_Spanish.MainWindow mainPage = new learning_Spanish.MainWindow();
            //    navWindow.NavigateToPage(mainPage);
        }

        private void Start_Click(object sender, RoutedEventArgs e)
        {
            StartCards page = new StartCards(ViewModel);
            this.NavigationService.Navigate(page);
        }
    }

}