using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace Grocery_Shopping_Website
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

      

        protected void btnCheckout_Click1(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection("User Id=root;Host=localhost;Port=3308;Database=userdetails");
            string query = "INSERT INTO userdetails.address (name,email,address,city,zip,state)VALUES(@name,@email,@address,@city,@zip,@state)";//command to be executed
            MySqlCommand cmd = new MySqlCommand(query, conn);//create instance and pass command and connection string
            cmd.Parameters.AddWithValue("@name", txtName.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@city", txtCity.Text);
            cmd.Parameters.AddWithValue("@zip", txtZip.Text);
            cmd.Parameters.AddWithValue("@state", txtState.Text);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("OrderConfirmation.aspx");

        }







        }
        
    }
