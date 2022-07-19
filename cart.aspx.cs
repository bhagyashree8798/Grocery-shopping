using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Online_Grocery_shopping
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["addproduct"]?.ToString() == "true")
            {
                Session["addproduct"] = "false";
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("prodID");
                dt.Columns.Add("prodname");
                dt.Columns.Add("prodimg");
                dt.Columns.Add("prodquantity");
                dt.Columns.Add("prodprice");
                dt.Columns.Add("prodtotal");


                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {

                        dr = dt.NewRow();
                        String mycon = "Data Source=DESKTOP-2NCHL9H;Initial Catalog=grocery;Integrated Security=True";
                        SqlConnection con = new SqlConnection(mycon);
                        String myquery = "insert into cart" + "(prodId, prodname, prodimg, prodprice, prodquantity, prodtotal)" +  "values (select * from product where prodID=)" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = con;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["prodID"] = ds.Tables[0].Rows[0]["prodID"].ToString();
                        dr["prodname"] = ds.Tables[0].Rows[0]["prodname"].ToString();
                        dr["prodimg"] = ds.Tables[0].Rows[0]["prodimg"].ToString();

                        dr["prodprice"] = ds.Tables[0].Rows[0]["prodprice"].ToString();

                        dr["prodquantity"] = Request.QueryString["prodquantity"];
                        Int64 prodprice = Convert.ToInt64(ds.Tables[0].Rows[0]["prodprice"].ToString());
                        Int64 prodquantity = Convert.ToInt64(Request.QueryString["prodquantity"].ToString());
                        Int64 totalprice = prodprice * prodquantity;
                        dr["prodtotal"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;


                        Response.Redirect("cart.aspx");
                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        String mycon = "Data Source=DESKTOP-2NCHL9H;Initial Catalog=grocery;Integrated Security=True";
                        SqlConnection con = new SqlConnection(mycon);

                        String myquery = "insert into cart" + "(prodId, prodname, prodimg, prodprice, prodquantity, prodtotal)" + "values (select * from product where prodID=)" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = con;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["prodID"] = ds.Tables[0].Rows[0]["prodID"].ToString();
                        dr["prodname"] = ds.Tables[0].Rows[0]["prodname"].ToString();
                        dr["prodimg"] = ds.Tables[0].Rows[0]["prodimg"].ToString();
                        
                        dr["prodprice"] = ds.Tables[0].Rows[0]["prodprice"].ToString();

                        dr["prodquantity"] = Request.QueryString["prodquantity"];
                        Int64 prodprice = Convert.ToInt64(ds.Tables[0].Rows[0]["prodprice"].ToString());
                        Int64 prodquantity = Convert.ToInt64(Request.QueryString["prodquantity"].ToString());
                        Int64 totalprice = prodprice * prodquantity;
                        dr["prodtotal"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Response.Redirect("cart.aspx");

                    }
                }


            }
            else
            {
                DataTable dt;
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }   
        
    }
    
}