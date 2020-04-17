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

namespace ex9
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

        private int left = 0;
        private int right = 0;
        private int db_click = 0;
        private List<Point> points = new List<Point>();

        public int GetLeft() { return left; }
        public int GetRight() { return right; }
        public int Get_db() { return db_click; }

        // posicao do click e adiciona à lista de pontos
        public void GetPosition(MouseButtonEventArgs e)
        {
            Point p = e.GetPosition(this);
            double px = p.X;
            double py = p.Y;
            Console.WriteLine("Click position: x={0} y={1}", px, py);
            x_tb.Text = px.ToString();
            y_tb.Text = py.ToString();
            
            points.Add(p);
            foreach(Point i in points)
            {
                Console.Write(i.ToString() + ", ");
            }
        }

        // distancia entre 2 pontos
        private double Dist2Points(Point p1, Point p2)
        {
            return Math.Sqrt(Math.Pow(p2.X - p1.X, 2) + Math.Pow(p2.Y - p1.Y, 2));
        }

        // soma a distancia entre todos os pontos de uma lista
        private double Distance(List<Point> l)
        {
            double total_distance = 0;
            for(int i = 0; i < l.Count - 1; i++)
            {
                double d = Dist2Points(l[i], l[i + 1]);
                total_distance += d;
                dist_tb.Text = total_distance.ToString();
            }
            Console.WriteLine("dist= {0}", total_distance);
            return total_distance;
        }

        // Eventos
        private void Window_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            left++;
            left_tb.Text = left.ToString();
            Console.WriteLine("left: {0}: ", GetLeft());
            GetPosition(e);
            dist_tb.Text = String.Format("{0:0.00}", Distance(points));
        }

        private void Window_MouseRightButtonDown(object sender, MouseButtonEventArgs e)
        {
            right++;
            right_tb.Text = right.ToString();
            Console.WriteLine("direito: {0}: ", GetRight());
            GetPosition(e);
            dist_tb.Text = String.Format("{0:0.00}", Distance(points));
        }

        private void Window_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            db_click++;
            double_tb.Text = db_click.ToString();
            Console.WriteLine("double click: {0}: ", Get_db());
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            String caption = "Final Results";
            String message = String.Format("Num of Left clicks: {0} \n Num of Right clicks: {1} \n Double clicks: {2} \n Total distance: {3}", GetLeft(), GetRight(), Get_db(), String.Format("{0:0.00}", Distance(points)));
            MessageBoxButton b = MessageBoxButton.OK;
            MessageBoxImage image = MessageBoxImage.Information;

            MessageBox.Show(message, caption, b, image);
        }
    }
}
