using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace Grocery_Shopping_Website
{
    public partial class Contact_Us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lstMessage_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection("User Id=root;Host=localhost;Port=3308;Database=userdetails");
            string query = "INSERT INTO userdetails.feedback (username,message)VALUES(@username,@message)";
            MySqlCommand cmd = new MySqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@message", txtMessage.Text);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

        }
    }
}