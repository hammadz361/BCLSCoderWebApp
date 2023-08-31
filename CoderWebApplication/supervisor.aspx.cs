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
    public partial class WebFormsupervisor : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        DataSet ds1 = new DataSet();
        DataSet ds2 = new DataSet();
        DataSet ds3 = new DataSet();
        DataSet ds4 = new DataSet();
        DataSet ds5 = new DataSet();
        DataSet ds6 = new DataSet();
        DataSet ds7 = new DataSet();
        DataSet ds8 = new DataSet();
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
                 if((string)(Session["userType"])!="2")
                 {
                    Response.Redirect("coding.aspx");
                 }
                LoginName.Text = Session["UserName"].ToString();
                Label1.Text = Session["UserName"].ToString();
                StringBuilder htmlTable = new StringBuilder();
                con.ConnectionString = @conn;
                SqlCommand cmd = new SqlCommand("summary", con);
                cmd.CommandType = CommandType.StoredProcedure;
                da = new SqlDataAdapter(cmd);
               // LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff") + ".txt").ToString(), "Summary", cmd, Session["userID"].ToString());
                
                da.Fill(ds);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                
               if (ds.Tables[0].Rows.Count > 0)
                {
                    summary.DataSource = ds.Tables[0];
                    summary.DataBind();
                    //Label2.Text = ds.Tables[0].Rows[0]["total"].ToString();
                    //Label3.Text = ds.Tables[0].Rows[0]["progress"].ToString();
                    //Label4.Text = ds.Tablsses[0].Rows[0]["coded"].ToString();
                    //Label5.Text = ds.Tables[0].Rows[0]["accept"].ToString();
                    //Label6.Text = ds.Tables[0].Rows[0]["reject"].ToString();
                }
               
            }
            
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //base.VerifyRenderingInServerForm(control);
        }
        
       
       
    }
}