﻿using System;
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
    
    public partial class WebForm9 : System.Web.UI.Page
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
            try
            {

                SqlConnection con = new SqlConnection(strcon);

                SqlCommand cmd = new SqlCommand("select * from customerr where custname=@custname and custpass=@custpass", con);
                cmd.Parameters.AddWithValue("@custname", TextBox1.Text);
                cmd.Parameters.AddWithValue("@custpass", TextBox2.Text);
                SqlDataAdapter dr = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                dr.Fill(dt);
                con.Open();
                cmd.ExecuteNonQuery();
                if (dt.Rows.Count > 0)
                {
                    Session["Login"] = TextBox1.Text;
                    Response.Redirect("~/about1.aspx");

                }
                else
                {
                    Response.Write("<script>alert('Invalid name');</Script>");
                }

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        

    }
    }
}