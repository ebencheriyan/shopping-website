using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Windows.Forms;


namespace Grocery_Shopping_Website
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUser.Text;//assign variable to textbox
            string password = txtPass.Text;
            MySqlConnection conn = new MySqlConnection("User Id=root;Host=localhost;Port=3308;Database=userdetails");//create new connection
            MySqlDataAdapter sda = new MySqlDataAdapter("Select Count(*) from userdetails.userlogin where username='" + txtUser.Text + "' and password='" + txtPass.Text + "'", conn);//execute command
            DataTable dt = new DataTable();//create new datatable
            sda.Fill(dt);//fill data in datatable
            if (dt.Rows[0][0].ToString()=="1") //check if data exists in database
            {
                Label2.Text="login successfull"; //display success message
                Session["username"] = txtUser.Text;
                Response.Redirect("homepage.html");
            }
            else 
            {
                Label2.Text = "Login unsuccessful.Please <a href='Registration.aspx'>Register</a>"; //display error message
            }


        

                


        }

        protected void AdminLogin_Click(object sender, EventArgs e)
        {
        }
    }
}