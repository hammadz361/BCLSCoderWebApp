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
    public partial class WebFormSettings : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if ((string)(Session["LoggedIn"]) != "1")
                {
                    Response.Redirect("login.aspx");
                }
                if ((string)(Session["userType"]) != "1")
                {
                    Response.Redirect("login.aspx");
                }
                LoginName.Text = Session["UserName"].ToString();
                LoginName2.Text = Session["UserName"].ToString();

                SqlDataAdapter da;
                DataSet ds = new DataSet();
                string conn = ConfigurationManager.ConnectionStrings["MyConnectionString"].ToString();
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @conn;
                SqlCommand cmd2 = new SqlCommand("SELECT * FROM [settings]", con);
                cmd2.CommandType = CommandType.Text;
                da = new SqlDataAdapter(cmd2);
                da.Fill(ds);
                con.Open();
                cmd2.ExecuteNonQuery();
                con.Close();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    TextBox1.Text = ds.Tables[0].Rows[0]["BatchTotal"].ToString();
                    TextBox2.Text = ds.Tables[0].Rows[0]["SamplePercentage"].ToString();
                    TextBox3.Text = ds.Tables[0].Rows[0]["MatchingThreshold"].ToString();
                }
            }
        }
       
        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            bool error = false;
            if (TextBox1.Text == "")
            {
                error = true;
                Response.Write("<script>alert('Batch Total Value is Missing');</script>");
            }
            else if (TextBox2.Text == "")
            {
                error = true;
                Response.Write("<script>alert('Sampling Percentage Value is missing');</script>");
            }
            else if (TextBox3.Text == "")
            {
                error = true;
                Response.Write("<script>alert('Matching Threshold Value is missing');</script>");
            }

            if (error)
            {

            }
            else
            {
                SqlDataAdapter da;
                DataSet ds = new DataSet();
                string conn = ConfigurationManager.ConnectionStrings["MyConnectionString"].ToString();
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @conn;
                SqlCommand cmd2 = new SqlCommand("update_settings", con);
                cmd2.Parameters.Add(new SqlParameter("@batchtotal", TextBox1.Text));
                cmd2.Parameters.Add(new SqlParameter("@matchper", TextBox2.Text));
                cmd2.Parameters.Add(new SqlParameter("@threshold", TextBox3.Text));
                cmd2.CommandType = CommandType.StoredProcedure;
                da = new SqlDataAdapter(cmd2);
                con.Open();
                cmd2.ExecuteNonQuery();
                con.Close();
                Response.Redirect("settings.aspx?updated=1");
            }
        }
    }
}