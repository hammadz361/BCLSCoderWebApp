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
    public partial class WebFormcode03c : System.Web.UI.Page
    {
       // public static int click_count = 0;
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
          
                 if((string)(Session["LoggedIn"])!="1")
                 {
                      Response.Redirect("login.aspx");
                  }
            if ((string)(Session["userType"]) != "2")
            {
                Response.Redirect("login.aspx");
            }
            TextBox18.Focus();
            LoginName.Text = Session["UserName"].ToString();
            if (!IsPostBack)
            {
                string logtext = "";
                StringBuilder htmlTable = new StringBuilder();

                con.ConnectionString = @conn;
                SqlCommand cmd = new SqlCommand("load_coded_new", con);
                cmd.Parameters.Add(new SqlParameter("@type", "3"));
                cmd.CommandType = CommandType.StoredProcedure;
                //LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "load_coded_new", cmd, Session["userID"].ToString());
                logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "load_coded_new", cmd, Session["userID"].ToString());

                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    SqlCommand cmd8 = new SqlCommand("code_load", con);
                    cmd8.Parameters.Add(new SqlParameter("@type", "tools"));
                    cmd8.Parameters.Add(new SqlParameter("@grouplevel", "1"));
                    cmd8.Parameters.Add(new SqlParameter("@id", "0"));
                    cmd8.CommandType = CommandType.StoredProcedure;
                    da = new SqlDataAdapter(cmd8);
                    //LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "code_load", cmd8, Session["userID"].ToString());
                    logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Code_load", cmd8, Session["userID"].ToString());

                    da.Fill(ds7);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    cmd8.ExecuteNonQuery();
                    con.Close();

                    ListBox7_a.DataSource = ds7.Tables[0];
                    ListBox7_a.DataTextField = ds7.Tables[0].Columns[1].ToString();
                    ListBox7_a.DataValueField = ds7.Tables[0].Columns[0].ToString();
                    ListBox7_a.DataBind();

                    if (ds.Tables[0].Rows[0]["C38_2_11_2nd"].ToString() == "")
                    {
                        C38_11.Visible = false;
                    }



                    Label1.Text = ds.Tables[0].Rows[0]["KEY_"].ToString();
                    Label2.Text = ds.Tables[0].Rows[0]["BatchID"].ToString();
                    TextBox13.Text = ds.Tables[0].Rows[0]["C38_1_11"].ToString();
                    TextBox14.Text = ds.Tables[0].Rows[0]["C38_2_11"].ToString();
                    TextBox15.Text = ds.Tables[0].Rows[0]["C38_2_11_2nd"].ToString();
                    TextBox16.Text = ds.Tables[0].Rows[0]["C38_3_11"].ToString();
                    TextBox17.Text = ds.Tables[0].Rows[0]["C38_3_11_2nd"].ToString();
                    C35.Text = ds.Tables[0].Rows[0]["C35_11"].ToString();
                   // C32.Text = ds.Tables[0].Rows[0]["C32_10"].ToString();
                    C21a.Text = ds.Tables[0].Rows[0]["C21a_10"].ToString();
                    C21b.Text = ds.Tables[0].Rows[0]["C21b_10"].ToString();
                    C20a.Text = ds.Tables[0].Rows[0]["C20a_10"].ToString();
                    C20b.Text = ds.Tables[0].Rows[0]["C20b_10"].ToString();
                    C26.Text = ds.Tables[0].Rows[0]["C26_10"].ToString();
                    C25.Text = ds.Tables[0].Rows[0]["C25_10"].ToString();
                    Session["clickcount"] = "1";
                    LogBase.logg(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), logtext);
                }
                else
                {
                    Response.Redirect("supervisor.aspx?nocodeleft=1");
                }
            }
            
        }
        public bool Code_check(string code)
        {
            if (code == "")
            {
                return false;
            }
            else
            {
                con.ConnectionString = @conn;
                SqlCommand cmd = new SqlCommand("code_confirm", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@code", code));
                cmd.Parameters.Add(new SqlParameter("@type", 3));
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                //LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "code_confirm", cmd, Session["userID"].ToString());

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                if (ds.Tables[0].Rows[0]["Total"].ToString() == "0")
                    return false;
                else
                    return true;
            }
        }
        public bool BatchCompleteCheck(int BatchID, int type)
        {
            DataSet dss = new DataSet();
            con.ConnectionString = @conn;
            SqlCommand cmd = new SqlCommand("BatchCompleteCheck_New", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@batchID", BatchID));
            cmd.Parameters.Add(new SqlParameter("@type", type));
            da = new SqlDataAdapter(cmd);
            da.Fill(dss);
            //LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "BatchCompleteCheck_New", cmd, Session["userID"].ToString());

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string abc = dss.Tables[0].Rows[0]["result"].ToString();
            if (abc == "1")
            {
                return true;
            }
            else
                return false;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string logtext = "";
            ((Button)sender).Enabled = false;
            bool error = true;
            if (TextBox18.Enabled == true)
                if (Code_check(TextBox18.Text))
                    error = false;
                else
                    error = true;
            if (!error)
            {
                con.ConnectionString = @conn;
                SqlCommand cmd2 = new SqlCommand("save_re_code_new", con);
                string BatchID = Request["BatchID"];
                cmd2.CommandType = CommandType.StoredProcedure;
                cmd2.Parameters.Add(new SqlParameter("@user_id", Session["userID"]));
                cmd2.Parameters.Add(new SqlParameter("@type", "3"));
                cmd2.Parameters.Add(new SqlParameter("@a22_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@a21_value", "0"));
                cmd2.Parameters.Add(new SqlParameter("@a44_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@a43_value", "0"));
                cmd2.Parameters.Add(new SqlParameter("@c21_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@c20_value", "0"));
                cmd2.Parameters.Add(new SqlParameter("@c38_value", TextBox18.Text));
                cmd2.Parameters.Add(new SqlParameter("@c38_value2", TextBox22.Text));
                cmd2.Parameters.Add(new SqlParameter("@c35_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@batchID", Label2.Text));
                cmd2.Parameters.Add(new SqlParameter("@key_", Label1.Text));
                da = new SqlDataAdapter(cmd2);
                if ( Session["clickcount"] == "1")
                {
                    con.Open();
                    //LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "save_re_code_new", cmd2, Session["userID"].ToString());
                    logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Save_code_new", cmd2, Session["userID"].ToString());
                    LogBase.logg(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), logtext);
                   
                    cmd2.ExecuteNonQuery();
                    con.Close();
                    Session["clickcount"] = "0";
                }
                if (Request["skipnext"] == "1")
                {
                    if (BatchCompleteCheck(Convert.ToInt32(Label2.Text), 3))
                        Response.Redirect("supervisor.aspx?batchcomplete=1");
                    else
                        Response.Redirect("supervisorform3.aspx?skipnext=1");
                }
                else
                    Response.Redirect("supervisorform3.aspx");
            }
            else
            {
                Response.Write("<script>alert('Code Not Saved! You have entered one or more wrong codes');</script>");
                Response.Write("<script>window.location='supervisorform3.aspx?skipnext=1';</script>");
            }

        }
       
    }
}