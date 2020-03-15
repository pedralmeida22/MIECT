using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace g1ex3
{
    public partial class Form1 : Form
    {
        SqlConnection cn = new SqlConnection();
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void TestDBConnection(String dbServer, String dbName, String userName, String userPass)
        {           
            cn = new SqlConnection("Data Source = " + dbServer + " ;" + "Initial Catalog = " + dbName + "; uid = " + userName + ";" + "password = " + userPass);
            try
            {
                cn.Open();
                if (cn.State == ConnectionState.Open)
                {
                    MessageBox.Show("Successful connection to database " + cn.Database + " on the " + cn.DataSource + " server", "Connection Test");

                }

            }
            catch (Exception e)
            {
                MessageBox.Show("FAILED TO OPEN CONNECTION TO DATABASE DUE TO THE FOLLOWING ERROR", "Connection Test");
            }
            /*
            if (cn.State == ConnectionState.Open)
            {
                cn.Close();
            }
            */
        }

        private string GetTableContent(SqlConnection cn)
        {
            if (cn.State == ConnectionState.Closed)
            {
                return "";
            }
            string str = "";
            int cnt = 1;
            SqlCommand sqlcmd = new SqlCommand("SELECT * FROM Hello", cn);
            SqlDataReader reader;
            reader = sqlcmd.ExecuteReader();
            while (reader.Read())
            {
                str += cnt.ToString() + " - " + reader.GetInt32(reader.GetOrdinal("MsgID")) + ", ";
                str += reader.GetString(reader.GetOrdinal("MsgSubject"));
                str += "\n";
                cnt += 1;
            }

            return str;
        }

        private void connectionbt_Click(object sender, EventArgs e)
        {
            TestDBConnection(textBox1.Text, textBox2.Text, textBox2.Text, textBox3.Text);
        }

        private void tablebt_Click(object sender, EventArgs e)
        {
            string caption = "Table Content";
            MessageBox.Show(GetTableContent(cn), caption, MessageBoxButtons.OK);
        }
    }
}

