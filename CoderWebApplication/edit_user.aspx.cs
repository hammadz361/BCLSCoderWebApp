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
    public partial class WebFormEditUser : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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
                SqlCommand cmd2 = new SqlCommand("SELECT * FROM [coder_login] WHERE [user_id]='" + Request["id"] + "'", con);
                cmd2.CommandType = CommandType.Text;
                da = new SqlDataAdapter(cmd2);
                da.Fill(ds);
                con.Open();
                cmd2.ExecuteNonQuery();
                con.Close();
                TextBox1.Text = Session["userID"].ToString();
                TextBox2.Text = ds.Tables[0].Rows[0]["password"].ToString();
                userType.SelectedValue = ds.Tables[0].Rows[0]["type"].ToString();
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
                SqlCommand cmd2 = new SqlCommand("UPDATE [coder_login] SET [username]='" + TextBox1.Text + "', [password]='" + TextBox2.Text + "', [type]='" + userType.SelectedValue + "' WHERE [user_id]='" + Request["id"] +"'", con);
                cmd2.CommandType = CommandType.Text;
                da = new SqlDataAdapter(cmd2);
                con.Open();
                cmd2.ExecuteNonQuery();
                con.Close();
                Response.Redirect("view_user.aspx?updated=1");
            }
        }
    }
}