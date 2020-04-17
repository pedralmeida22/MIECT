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
using System.Windows.Media.Animation;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace ex6
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void b1_Click(object sender, RoutedEventArgs e)
        {
            b1.Content = "hello there";
            SolidColorBrush init_color = new SolidColorBrush(Colors.DarkGray);
            this.Background = init_color;
            ColorAnimation colorAnim = new ColorAnimation()
            {
                Duration = new Duration(TimeSpan.FromMilliseconds(2000)),
                To = Colors.LightGray
            };
            init_color.BeginAnimation(SolidColorBrush.ColorProperty, colorAnim);
        }
    }
}
