using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoderWebApplication
{
    public partial class CorrectedTextProcess : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
          
                 if((string)(Session["LoggedIn"])!="1")
                 {
                      Response.Redirect("login.aspx");
                  }
            if ((string)(Session["userType"]) != "2")
            {
                Response.Redirect("login.aspx");
            }
            SqlDataAdapter da;
            DataSet ds = new DataSet();
            LoginName.Text = Session["UserName"].ToString();
            LoginName2.Text = Session["UserName"].ToString();
            string consString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            SqlConnection cont = new SqlConnection();
            cont.ConnectionString = @consString;
            SqlCommand cmd = new SqlCommand("CorrectedTextProcess", cont);
            cmd.Parameters.Add(new SqlParameter("@Type", Request["type"].ToString()));
            cmd.CommandType = CommandType.StoredProcedure;
           da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            cont.Open();
            cmd.ExecuteNonQuery();
            cont.Close();
            Response.Redirect("Supervisor.aspx?success=3");
            
        }
       
        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            
        }
    }
}