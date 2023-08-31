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
    public partial class WebFormAdmin : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string conn = ConfigurationManager.ConnectionStrings["MyConnectionString"].ToString();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
          
                 if((string)(Session["LoggedIn"])!="1")
                 {
                      Response.Redirect("login.aspx");
                  }
            if ((string)(Session["userType"]) != "1")
            {
                Response.Redirect("login.aspx");
            }
            LoginName.Text = Session["UserName"].ToString();
            LoginName2.Text = Session["UserName"].ToString();
            con.ConnectionString = @conn;
            SqlCommand cmd = new SqlCommand("summary", con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label2.Text = ds.Tables[0].Rows[0]["TotalBatch"].ToString();
                Label3.Text = ds.Tables[0].Rows[0]["TotalInprogress"].ToString();
                Label4.Text = ds.Tables[0].Rows[0]["TotalCodded"].ToString();
                Label5.Text = ds.Tables[0].Rows[0]["TotalAccept"].ToString();
                Label6.Text = ds.Tables[0].Rows[0]["TotalReject"].ToString();
            }
        }
       
        protected void Button1_Click(object sender, EventArgs e)
        {
        }
       
    }
}