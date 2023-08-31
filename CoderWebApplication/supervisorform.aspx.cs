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
    public partial class WebFormcodeWebFormcode01a : System.Web.UI.Page
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
            TextBox24.Focus();
            LoginName.Text = Session["UserName"].ToString();
            if (!IsPostBack)
            {
                string logtext = "";
                StringBuilder htmlTable = new StringBuilder();

                con.ConnectionString = @conn;

                SqlCommand cmd = new SqlCommand("load_coded_new", con);
                cmd.Parameters.Add(new SqlParameter("@type", "1"));
                cmd.CommandType = CommandType.StoredProcedure;
                da = new SqlDataAdapter(cmd);
                logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "load_coded_new", cmd, Session["userID"].ToString());

                //LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "load_coded_new", cmd, Session["userID"].ToString());

               da.Fill(ds);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    if (ds.Tables[0].Rows[0]["A22a_3"].ToString() == "" && ds.Tables[0].Rows[0]["A22b_3"].ToString() == "")
                    {
                        ListBox1_a.Enabled = false;
                        ListBox1_b.Enabled = false;
                        ListBox1_c.Enabled = false;
                        TextBox24.Enabled = false;
                        A22.Visible = false;
                    }
                    else
                    {
                        SqlCommand cmd2 = new SqlCommand("code_load", con);
                        cmd2.Parameters.Add(new SqlParameter("@type", "industries"));
                        cmd2.Parameters.Add(new SqlParameter("@grouplevel", "1"));
                        cmd2.Parameters.Add(new SqlParameter("@id", "0"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds1);
                        //LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "code_load", cmd, Session["userID"].ToString());
                        logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "code_load", cmd2, Session["userID"].ToString());

                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        ListBox1_a.DataSource = ds1.Tables[0];
                        ListBox1_a.DataTextField = ds1.Tables[0].Columns[1].ToString();
                        ListBox1_a.DataValueField = ds1.Tables[0].Columns[0].ToString();
                        ListBox1_a.DataBind();
                    }
                    if (ds.Tables[0].Rows[0]["A44a_4"].ToString() == "" && ds.Tables[0].Rows[0]["A44b_4"].ToString() == "")
                    {
                        ListBox2_a.Enabled = false;
                        ListBox2_b.Enabled = false;
                        ListBox2_c.Enabled = false;
                        TextBox23.Enabled = false;
                        A44.Visible = false;
                    }
                    else
                    {
                        SqlCommand cmd3 = new SqlCommand("code_load", con);
                        cmd3.Parameters.Add(new SqlParameter("@type", "industries"));
                        cmd3.Parameters.Add(new SqlParameter("@grouplevel", "1"));
                        cmd3.Parameters.Add(new SqlParameter("@id", "0"));
                        cmd3.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd3);
                        da.Fill(ds2);
                        //LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "code_load", cmd, Session["userID"].ToString());
                        logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "code_load", cmd, Session["userID"].ToString());

                        con.Open();
                        cmd3.ExecuteNonQuery();
                        con.Close();
                        ListBox2_a.DataSource = ds2.Tables[0];
                        ListBox2_a.DataTextField = ds2.Tables[0].Columns[1].ToString();
                        ListBox2_a.DataValueField = ds2.Tables[0].Columns[0].ToString();
                        ListBox2_a.DataBind();
                    }
                    if (ds.Tables[0].Rows[0]["C21a_10"].ToString() == "" && ds.Tables[0].Rows[0]["C21b_10"].ToString() == "")
                    {
                        ListBox3_a.Enabled = false;
                        ListBox3_b.Enabled = false;
                        ListBox3_c.Enabled = false;
                        TextBox22.Enabled = false;
                        C21.Visible = false;
                    }
                    else
                    {
                        SqlCommand cmd4 = new SqlCommand("code_load", con);
                        cmd4.Parameters.Add(new SqlParameter("@type", "industries"));
                        cmd4.Parameters.Add(new SqlParameter("@grouplevel", "1"));
                        cmd4.Parameters.Add(new SqlParameter("@id", "0"));
                        cmd4.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd4);
                        da.Fill(ds3);
                        //LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "code_laod", cmd, Session["userID"].ToString());
                        logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "code_laod", cmd, Session["userID"].ToString());

                        con.Open();
                        cmd4.ExecuteNonQuery();
                        con.Close();
                        ListBox3_a.DataSource = ds3.Tables[0];
                        ListBox3_a.DataTextField = ds3.Tables[0].Columns[1].ToString();
                        ListBox3_a.DataValueField = ds3.Tables[0].Columns[0].ToString();
                        ListBox3_a.DataBind();
                    }
                   


                    Label1.Text = ds.Tables[0].Rows[0]["KEY_"].ToString();
                    Label2.Text = ds.Tables[0].Rows[0]["BatchID"].ToString();
                    TextBox1.Text = ds.Tables[0].Rows[0]["A22a_3"].ToString();
                    TextBox2.Text = ds.Tables[0].Rows[0]["A22b_3"].ToString();
                    TextBox3.Text = ds.Tables[0].Rows[0]["A44a_4"].ToString();
                    TextBox4.Text = ds.Tables[0].Rows[0]["A44b_4"].ToString();
                    TextBox5.Text = ds.Tables[0].Rows[0]["C21a_10"].ToString();
                    TextBox6.Text = ds.Tables[0].Rows[0]["C21b_10"].ToString();
                    A23.Text = ds.Tables[0].Rows[0]["A23"].ToString();
                    A21a.Text = ds.Tables[0].Rows[0]["A21a_3"].ToString();
                    A21b.Text = ds.Tables[0].Rows[0]["A21b_3"].ToString();
                    A24.Text = ds.Tables[0].Rows[0]["A24_3"].ToString();
                    A43.Text = ds.Tables[0].Rows[0]["A43a_4"].ToString();
                    A43b.Text = ds.Tables[0].Rows[0]["A43b_4"].ToString();
             //       TextBox24.Text = ds.Tables[0].Rows[0]["A22_CodedValue"].ToString();
            //        TextBox22.Text = ds.Tables[0].Rows[0]["C21_CodedValue"].ToString();
             //       TextBox23.Text = ds.Tables[0].Rows[0]["A44_CodedValue"].ToString();

                    A45.Text = ds.Tables[0].Rows[0]["A45_4"].ToString();
                    C20a.Text = ds.Tables[0].Rows[0]["C20a_10"].ToString();
                    C20b.Text = ds.Tables[0].Rows[0]["C20b_10"].ToString();
                    C25.Text = ds.Tables[0].Rows[0]["C25_10"].ToString();
                    C26.Text = ds.Tables[0].Rows[0]["C26_10"].ToString();
                    Session["clickcount"] = "1";
                    LogBase.logg(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), logtext);
                }
                else
                {
                    Response.Redirect("supervisor.aspx?nocodeleft=1");
                }

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
        public bool Code_check(string code)
        {
            if (code == "")
            {
                return false;
            }
            else
            {
                ds.Clear();
                con.ConnectionString = @conn;
                SqlCommand cmd = new SqlCommand("code_confirm", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@code", code));
                cmd.Parameters.Add(new SqlParameter("@type", 2));
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            string logtext = "";
            ((Button)sender).Enabled = false;
            bool error = false;
            if (TextBox24.Enabled == true && !error)
                if (Code_check(TextBox24.Text))
                    error = false;
                else
                    error = true;
            if (TextBox23.Enabled == true && !error)
                if (Code_check(TextBox23.Text))
                    error = false;
                else
                    error = true;
            if (TextBox22.Enabled == true && !error)
                if (Code_check(TextBox22.Text))
                    error = false;
                else
                    error = true;

            if (!error)
            {
                con.ConnectionString = @conn;
                SqlCommand cmd2 = new SqlCommand("save_re_code_new", con);
                cmd2.CommandType = CommandType.StoredProcedure;
                cmd2.Parameters.Add(new SqlParameter("@user_id", Session["userID"]));
                cmd2.Parameters.Add(new SqlParameter("@type", "1"));
                cmd2.Parameters.Add(new SqlParameter("@a22_value", TextBox24.Text));
                cmd2.Parameters.Add(new SqlParameter("@a21_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@a44_value", TextBox23.Text));
                cmd2.Parameters.Add(new SqlParameter("@a43_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@c21_value", TextBox22.Text));
                cmd2.Parameters.Add(new SqlParameter("@c20_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@c38_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@c38_value2", '0'));
                cmd2.Parameters.Add(new SqlParameter("@c35_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@batchID", Label2.Text));
                cmd2.Parameters.Add(new SqlParameter("@key_", Label1.Text));
                da = new SqlDataAdapter(cmd2);
                if ( Session["clickcount"] == "1")
                {
                    con.Open();
                    logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Save_code_new", cmd2, Session["userID"].ToString());
                    //logtext = logtext + "\n" + DateTime.Now.ToString() + "---Action----- Save_code_new" + "----Procedure & values---- " + cmd2.ToString() + "---User :--- " + Session["userID"].ToString();
                    LogBase.logg(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), logtext);
                   
                    //LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "save_Re_code_new", cmd2, Session["userID"].ToString());
                    cmd2.ExecuteNonQuery();
                    con.Close();
                    Session["clickcount"] = "0";
                }
                if (Request["skipnext"] == "1")
                {
                    if (BatchCompleteCheck(Convert.ToInt32(Label2.Text),1))
                        Response.Redirect("supervisor.aspx?batchcomplete=1");
                    else
                        Response.Redirect("supervisorform.aspx?skipnext=1");
                }
                else
                {
                    Response.Redirect("supervisorform2.aspx?BatchID=" + Label2.Text + "&Key_=" + Label1.Text);

                }
                
            }
            else
            {
                Response.Write("<script>alert('Code Not Saved! You have entered one or more wrong codes');</script>");
                Response.Write("<script>window.location='supervisorform.aspx?skipnext=1';</script>");
            }
        }

    }
}