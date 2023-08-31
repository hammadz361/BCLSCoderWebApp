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
    public partial class WebFormViewUser : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        DataSet ds1 = new DataSet();
        DataSet ds8 = new DataSet();
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
            SqlCommand cmd = new SqlCommand("SELECT [user_id], [username], (SELECT COUNT(DISTINCT[BatchID]) FROM[industries_codes] WHERE[Coder_ID] =[coder_login].[user_id]) as TotalBatches, (SELECT COUNT(*) FROM[industries_codes] WHERE[Coder_ID] =[coder_login].[user_id]) as TotalCodedEntries,  CASE WHEN[type] = '3' THEN  'Coder' Else 'Supervisor' End as  [Type] FROM [coder_login] WHERE[type] != '1'", con);
            cmd.CommandType = CommandType.Text;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            if (!object.Equals(ds.Tables[0], null))
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
           
        }
    }
}