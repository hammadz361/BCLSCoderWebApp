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
    public partial class WebFormAddUser : System.Web.UI.Page
    {
       
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
                Response.Write("<script>alert('Username is Missing');</script>");
            }
            else if (TextBox2.Text == "")
            {
                error = true;
                Response.Write("<script>alert('Password is missing');</script>");
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
                SqlCommand cmd2 = new SqlCommand("INSERT INTO [coder_login] (username,password,type) Values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + userType.SelectedValue + "')", con);
                cmd2.CommandType = CommandType.Text;
                da = new SqlDataAdapter(cmd2);
                con.Open();
                cmd2.ExecuteNonQuery();
                con.Close();
                Response.Redirect("add_user.aspx?added=1");
            }
        }
    }
}