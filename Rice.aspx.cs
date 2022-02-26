using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;

namespace Grocery_Shopping_Website
{
    public partial class productdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addtocart_Click(object sender, EventArgs e)
        {
           Session["product_name"] = "Rice";
           Session["quantity"] = 1;
           MySqlConnection conn = new MySqlConnection("User Id=root;Host=localhost;Port=3308;Database=userdetails");
           conn.Open();
           MySqlCommand cmd = new MySqlCommand("Insert into userdetails.cart(product_name,quantity) values(@product_name,@quantity)", conn);
          
           cmd.Parameters.AddWithValue("@product_name", Session["product_name"].ToString());
           cmd.Parameters.AddWithValue("@quantity", Session["quantity"].ToString());
           cmd.ExecuteNonQuery();
        }

       

        protected void txtQuantity_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtRice_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Dal_Click(object sender, EventArgs e)
        {

        }

      

       
        
    }
}