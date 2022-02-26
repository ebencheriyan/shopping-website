using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Grocery_Shopping_Website
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      
            

        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            if (txtAdmin.Text == "admin" && txtAdminpass.Text == "admin")
            {
                Response.Redirect("AdminPage.aspx");
            }
        }
        }
    }

