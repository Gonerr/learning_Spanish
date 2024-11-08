using Notification;
using System;
using System.Collections.Generic;
using System.IO;
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
using System.Windows.Shapes;

namespace learning_Spanish.View
{
    /// <summary>
    /// Логика взаимодействия для NavigationWindow.xaml
    /// </summary>
    public partial class NavigationWindow : Window
    {
        public NavigationWindow()
        {
            try
            {
                InitializeComponent();
                // После инициализации компонентов окна, запускаем проверку в Trial
                Trial.Check(this);
                Page mainWindow = new MainWindow();
                NavigateToPage(mainWindow);
            }
            catch (Exception ex)
            {
                File.WriteAllText("C:\\Users\\{User}\\Documents\\error_log.txt", ex.ToString());
            }
        }

        public void NavigateToPage(Page page)
        {
            MainFrame.Navigate(page);
        }
    }
}
