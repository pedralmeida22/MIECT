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
using System.Collections.ObjectModel;

namespace Deti
{
    /// <summary>
    /// Interaction logic for Deti_Home.xaml
    /// </summary>
    public partial class Deti_Home : Page
    {
        public Deti_Home()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (cursosListBox.SelectedIndex == -1)
            {
                MessageBox.Show("Selecione um curso", "Erro", MessageBoxButton.OK);
            }
            else
            {
                String curso = ((Curso)cursosListBox.SelectedValue).Nome;
                Cursos cursospage = new Cursos(curso);
                this.NavigationService.Navigate(cursospage);
            }         
        }

        private void cursosListBox_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            String curso = ((Curso)cursosListBox.SelectedValue).Nome;
            Cursos cursospage = new Cursos(curso);
            this.NavigationService.Navigate(cursospage);
        }
    }

    public class Curso
    {
        private string _nome;
        private int _CodCurso;
        public int CodCurso
        {
            get { return _CodCurso; }
            set { _CodCurso = value; }
        }
        public string Nome
        {
            get { return _nome; }
            set { _nome = value; }
        }
    }

    public class ListaCursos : ObservableCollection<Curso>
    {
        public ListaCursos()
        {
            Add(new Curso { Nome = "Computadores e Telemática", CodCurso = 8240 }); 
            Add(new Curso { Nome = "Electrónica e Telecomunicações", CodCurso = 8204 }); 
            Add(new Curso { Nome = "Engenharia Informática", CodCurso = 8295, });
        }
    }
}
