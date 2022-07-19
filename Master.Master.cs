using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Grocery_shopping
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Login"]!=null)
            {
                Button1.Visible = false;
                Button2.Visible = false;
                Button3.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("about1.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Button1.Visible = true;
            Button2.Visible = true;
            Button3.Visible = false;

        }
    }
}