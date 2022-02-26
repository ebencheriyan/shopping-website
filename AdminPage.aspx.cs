using System;
using MySql.Data.MySqlClient;
using System.Data;

namespace Grocery_Shopping_Website
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection("User Id=root;Host=localhost;Port=3308;Database=userdetails");
            MySqlDataAdapter da = new MySqlDataAdapter("Select * from userdetails.userlogin", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);

            userdetails.DataSource = ds;
            userdetails.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void userdetails_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void UserDelete_TextChanged(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection("User Id=root;Host=localhost;Port=3308;Database=userdetails");//create new connection with connection string
            string query = "Delete from userdetails.userlogin where userid=@userid";//command to be executed
            MySqlCommand cmd = new MySqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@userid", UserDelete.Text);
            conn.Open();//open connection
            cmd.ExecuteNonQuery();//execute command
            lblUserDelete.Text = "successful";//display message
            conn.Close();//close connection

        }
    }
}

       