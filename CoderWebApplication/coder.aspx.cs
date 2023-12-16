using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoderWebApplication
{
    public partial class WebFormCoder : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataSet ds2 = new DataSet();
        SqlDataAdapter da2;
        DataSet ds = new DataSet();
        string conn = ConfigurationManager.ConnectionStrings["MyConnectionString"].ToString();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                 if((string)(Session["LoggedIn"])!="1")
                 {
                      Response.Redirect("login.aspx");
                 }
                 
                LoginName.Text = Session["UserName"].ToString();
                Label1.Text = Session["UserName"].ToString();
                StringBuilder htmlTable = new StringBuilder();
                con.ConnectionString = @conn;
                SqlCommand cmd2 = new SqlCommand("Summary_user_det", con);
                var userID = Session["userID"].ToString();
                cmd2.CommandType = CommandType.StoredProcedure;
                cmd2.Parameters.Add(new SqlParameter("@userid", Session["userID"]));
                da = new SqlDataAdapter(cmd2);
                da.Fill(ds2);
                con.Open();
                cmd2.ExecuteNonQuery();
                con.Close();
                    GridView1.DataSource = ds2;
                    GridView1.DataBind();
                SqlCommand cmd = new SqlCommand("Count_uncoded_rejected", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@userid", Session["userID"]));
                da2 = new SqlDataAdapter(cmd);
                da2.Fill(ds);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }
            
        }
        
       
       
    }
}