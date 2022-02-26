using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Windows.Forms;

namespace Grocery_Shopping_Website
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection("User Id=root;Host=localhost;Port=3308;Database=userdetails");//create new connection with connection string
            string query = "INSERT INTO userdetails.userlogin (username,password,emailid,mobno)VALUES(@username,@password,@emailid,@mobno)"; //command to be executed using named parameters
            MySqlCommand cmd = new MySqlCommand(query, conn);//create instance and pass command and connection string
            cmd.Parameters.AddWithValue("@username", txtName.Text); //initializing named apramters
            cmd.Parameters.AddWithValue("@password", txtPass.Text);
            cmd.Parameters.AddWithValue("@emailid", txtEmail.Text);
            cmd.Parameters.AddWithValue("@mobno", txtMobno.Text);

            try
            {
                conn.Open();//open connection
                cmd.ExecuteNonQuery();//execute command
                Label1.Text = "successful";//display message
                conn.Close();//close connection
                Response.Redirect("homepage.html");
            }
            catch (MySqlException) // catch duplicate data error
            {
                Label2.Text = "Duplicate data";
            }
        }
    }
}

/*int i=cmd.ExecuteNonQuery();
            if (i > 0)
            {
                MessageBox.Show("saved");

            }
            else
            {
                MessageBox.Show("unsuccessful");
            }*/

