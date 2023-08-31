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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        StringBuilder htmlTable = new StringBuilder();
//LogBase logbase = new LogBase();
       // public static LogBase logbase = new LogBase();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conn = ConfigurationManager.ConnectionStrings["MyConnectionString"].ToString();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @conn;

            SqlCommand cmd = new SqlCommand("login", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@username", TextBox1.Text));
            cmd.Parameters.Add(new SqlParameter("@password", TextBox2.Text));
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
          //  LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff") + ".txt").ToString(), "Login_Attempt", cmd, TextBox1.Text);
           // LogHelper //Log(LogTarget.File, "Heello");
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["userID"] = ds.Tables[0].Rows[0]["user_id"].ToString();
                Session["userName"] = ds.Tables[0].Rows[0]["USERNAME"].ToString();
                Session["userType"] = ds.Tables[0].Rows[0]["type"].ToString();
                Session["LoggedIn"] = "1";
                if (ds.Tables[0].Rows[0]["type"].ToString()=="1")
                {
                    Response.Redirect("admin.aspx");
                }
                else if (ds.Tables[0].Rows[0]["type"].ToString() == "2")
                {
                    Response.Redirect("supervisor.aspx");
                }
                else
                {
                    Response.Redirect("coder.aspx");
                }
                
            }
            else {
                Session["LoggenIn"] = "0";
            }
           
        }
    }
}