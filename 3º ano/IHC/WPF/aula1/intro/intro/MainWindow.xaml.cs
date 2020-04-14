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

namespace intro
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

        private void Window_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            Console.WriteLine("Olá mundo!");
        }

        private void Window_Activated(object sender, EventArgs e)
        {
            Console.WriteLine("window activated!");
        }

        /*
        private void Window_MouseMove(object sender, MouseEventArgs e)
        {
            Console.WriteLine("mouse moving, be careful");
        }
        */

        private void Button1_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Olá mundo! Agr do botão");
        }
    }
}
