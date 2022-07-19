using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace Online_Grocery_shopping
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["addproduct"] = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
            Response.Redirect("cart.aspx");
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["addproduct"] = true;
            Response.Redirect("cart.aspx?ID=" + e.CommandArgument.ToString());
        }
    }
}