using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Online_Grocery_shopping
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            
             SqlConnection con = new SqlConnection(strcon);
            if (IsValid)
            {


                SqlCommand cmd = new SqlCommand("Insert into customerr (custname,custemail,custadd,custphone,custpass)values (@custname,@custemail,@custadd,@custphone,@custpass)", con);
                cmd.Parameters.AddWithValue("@custname", TextBox1.Text);
                cmd.Parameters.AddWithValue("@custemail", TextBox2.Text);
                cmd.Parameters.AddWithValue("@custadd", TextBox3.Text);
                cmd.Parameters.AddWithValue("@custphone", TextBox4.Text);
                cmd.Parameters.AddWithValue("@custpass", TextBox5.Text);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Register successfully');</Script>");
                Response.Redirect("Login.aspx");
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                
                
            }





        }
    }
}