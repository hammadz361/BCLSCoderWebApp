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
    public partial class WebFormcode02b : System.Web.UI.Page
    {
        //public static int click_count = 0;
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
            TextBox21.Focus();
            LoginName.Text = Session["UserName"].ToString();
            if (!IsPostBack)
            {
                string logtext = "";
                StringBuilder htmlTable = new StringBuilder();

                con.ConnectionString = @conn;

               SqlCommand cmd = new SqlCommand("load_coded_new", con);
                cmd.Parameters.Add(new SqlParameter("@type", "2"));
               // SqlCommand cmd = new SqlCommand("test_case", con);
              //   cmd.Parameters.Add(new SqlParameter("@key_", "uuid:10de9ef4-c060-4f59-9cfc-025b9e64bed2-5"));
                cmd.CommandType = CommandType.StoredProcedure;
                da = new SqlDataAdapter(cmd);
                //LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "load_coded_new", cmd, Session["userID"].ToString());
                logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "load_coded_new", cmd, Session["userID"].ToString());

                da.Fill(ds);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    if (ds.Tables[0].Rows[0]["A21a_3"].ToString() == "" && ds.Tables[0].Rows[0]["A21b_3"].ToString() == "")
                    {
                        ListBox4_a.Enabled = false;
                        ListBox4_b.Enabled = false;
                        ListBox4_c.Enabled = false;
                        TextBox21.Enabled = false;
                        A21.Visible = false;
                    }
                    else
                    {
                        SqlCommand cmd5 = new SqlCommand("code_load", con);
                        cmd5.Parameters.Add(new SqlParameter("@type", "professions"));
                        cmd5.Parameters.Add(new SqlParameter("@grouplevel", "1"));
                        cmd5.Parameters.Add(new SqlParameter("@id", "0"));
                        cmd5.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd5);
                        //LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "code_load", cmd5, Session["userID"].ToString());
                        logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Code_load", cmd5, Session["userID"].ToString());

                        da.Fill(ds4);
                        con.Open();
                        cmd5.ExecuteNonQuery();
                        con.Close();
                        ListBox4_a.DataSource = ds4.Tables[0];
                        ListBox4_a.DataTextField = ds4.Tables[0].Columns[1].ToString();
                        ListBox4_a.DataValueField = ds4.Tables[0].Columns[0].ToString();
                        ListBox4_a.DataBind();
                    }
                    if (ds.Tables[0].Rows[0]["A43a_4"].ToString() == "" && ds.Tables[0].Rows[0]["A43b_4"].ToString() == "")
                    {
                        ListBox5_a.Enabled = false;
                        ListBox5_b.Enabled = false;
                        ListBox5_c.Enabled = false;
                        TextBox20.Enabled = false;
                        A43.Visible = false;
                    }
                    else
                    {
                        SqlCommand cmd6 = new SqlCommand("code_load", con);
                        cmd6.Parameters.Add(new SqlParameter("@type", "professions"));
                        cmd6.Parameters.Add(new SqlParameter("@grouplevel", "1"));
                        cmd6.Parameters.Add(new SqlParameter("@id", "0"));
                        cmd6.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd6);
                        //LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "load_code", cmd6, Session["userID"].ToString());
                        logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Code_Load", cmd6, Session["userID"].ToString());

                        da.Fill(ds5);
                        con.Open();
                        cmd6.ExecuteNonQuery();
                        con.Close();
                        ListBox5_a.DataSource = ds5.Tables[0];
                        ListBox5_a.DataTextField = ds5.Tables[0].Columns[1].ToString();
                        ListBox5_a.DataValueField = ds5.Tables[0].Columns[0].ToString();
                        ListBox5_a.DataBind();
                    }
                    if (ds.Tables[0].Rows[0]["C20a_10"].ToString() == "" && ds.Tables[0].Rows[0]["C20b_10"].ToString() == "")
                    {
                        ListBox6_a.Enabled = false;
                        ListBox6_b.Enabled = false;
                        ListBox6_c.Enabled = false;
                        TextBox19.Enabled = false;
                        C20.Visible = false;
                    }
                    else
                    {
                        SqlCommand cmd7 = new SqlCommand("code_load", con);
                        cmd7.Parameters.Add(new SqlParameter("@type", "professions"));
                        cmd7.Parameters.Add(new SqlParameter("@grouplevel", "1"));
                        cmd7.Parameters.Add(new SqlParameter("@id", "0"));
                        cmd7.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd7);
                        da.Fill(ds6);
                        //LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "code_load", cmd7, Session["userID"].ToString());
                        logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "code_Load", cmd7, Session["userID"].ToString());

                        con.Open();
                        cmd7.ExecuteNonQuery();
                        con.Close();
                        ListBox6_a.DataSource = ds6.Tables[0];
                        ListBox6_a.DataTextField = ds6.Tables[0].Columns[1].ToString();
                        ListBox6_a.DataValueField = ds6.Tables[0].Columns[0].ToString();
                        ListBox6_a.DataBind();
                    }
                    if (ds.Tables[0].Rows[0]["C35_11"].ToString() == "")
                    {
                        C35_Mj.Enabled = false;
                        C35_SMj.Enabled = false;
                        C35_Min.Enabled = false;
                        TextBox33.Enabled = false;
                        C35_P.Visible = false;
                    }
                    else
                    {
                        SqlCommand cmd4 = new SqlCommand("code_load", con);
                        cmd4.Parameters.Add(new SqlParameter("@type", "professions"));
                        cmd4.Parameters.Add(new SqlParameter("@grouplevel", "1"));
                        cmd4.Parameters.Add(new SqlParameter("@id", "0"));
                        cmd4.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd4);
                        da.Fill(ds3);
                        //LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "code_load", cmd4, Session["userID"].ToString());
                        logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Code_Load", cmd4, Session["userID"].ToString());

                        con.Open();
                        cmd4.ExecuteNonQuery();
                        con.Close();
                        C35_Mj.DataSource = ds3.Tables[0];
                        C35_Mj.DataTextField = ds3.Tables[0].Columns[1].ToString();
                        C35_Mj.DataValueField = ds3.Tables[0].Columns[0].ToString();
                        C35_Mj.DataBind();
                    }



                    Label1.Text = ds.Tables[0].Rows[0]["KEY_"].ToString();
                    Label2.Text = ds.Tables[0].Rows[0]["BatchID"].ToString();
                    TextBox7.Text = ds.Tables[0].Rows[0]["A21a_3"].ToString();
                    TextBox8.Text = ds.Tables[0].Rows[0]["A21b_3"].ToString();
                    TextBox9.Text = ds.Tables[0].Rows[0]["A43a_4"].ToString();
                    TextBox10.Text = ds.Tables[0].Rows[0]["A43b_4"].ToString();
                    TextBox11.Text = ds.Tables[0].Rows[0]["C20a_10"].ToString();
                    TextBox12.Text = ds.Tables[0].Rows[0]["C20b_10"].ToString();
                    A22a.Text = ds.Tables[0].Rows[0]["A22a_3"].ToString();
                    A22b.Text = ds.Tables[0].Rows[0]["A22b_3"].ToString();
                    A23.Text = ds.Tables[0].Rows[0]["A23"].ToString();
                    A24.Text = ds.Tables[0].Rows[0]["A24_3"].ToString();
                    A45.Text = ds.Tables[0].Rows[0]["A45_4"].ToString();
                    A44a.Text = ds.Tables[0].Rows[0]["A44a_4"].ToString();
                    A44b.Text = ds.Tables[0].Rows[0]["A44b_4"].ToString();
                   // C35.Text = ds.Tables[0].Rows[0]["C35_11"].ToString();
                    c20a_.Text = ds.Tables[0].Rows[0]["C20a_10"].ToString();
                    c20b_.Text = ds.Tables[0].Rows[0]["C20b_10"].ToString();
                    c21a_.Text = ds.Tables[0].Rows[0]["C21a_10"].ToString();
                    c21b_.Text = ds.Tables[0].Rows[0]["C21b_10"].ToString();
                    c26_.Text = ds.Tables[0].Rows[0]["C26_10"].ToString();
                    c25_.Text = ds.Tables[0].Rows[0]["C25_10"].ToString();
                   // C35_text.Text = ds.Tables[0].Rows[0]["C35_11"].ToString();
                    C21a.Text = ds.Tables[0].Rows[0]["C21a_10"].ToString();
                    C21b.Text = ds.Tables[0].Rows[0]["C21b_10"].ToString();
                    C26.Text = ds.Tables[0].Rows[0]["C26_10"].ToString();
                    C25.Text = ds.Tables[0].Rows[0]["C25_10"].ToString();
                    C35_text.Text = ds.Tables[0].Rows[0]["C35_11"].ToString();
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
                ds.Clear();
                con.ConnectionString = @conn;
                SqlCommand cmd = new SqlCommand("code_confirm", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@code", code));
                cmd.Parameters.Add(new SqlParameter("@type", 1));
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
            bool error = false;
            if (TextBox21.Enabled == true)
                if (Code_check(TextBox21.Text)) //Check will return false if wrong input else true
                {
                    error = false;

                }
                else
                {
                    error = true;
                }
            if (TextBox20.Enabled == true && !error)
            {
                if (Code_check(TextBox20.Text))
                    error = false;
                else
                    error = true;
            }
            if (TextBox19.Enabled == true && !error)
            {
                if (Code_check(TextBox19.Text))
                    error = false;
                else
                    error = true;
            }
            if (TextBox33.Enabled == true && !error)
            {
                if (Code_check(TextBox33.Text))
                    error = false;
                else
                    error = true;
            }
            if (!error)
            {

                con.ConnectionString = @conn;
                SqlCommand cmd2 = new SqlCommand("save_re_code_new", con);
                string BatchID = Request["BatchID"];
                cmd2.CommandType = CommandType.StoredProcedure;
                cmd2.Parameters.Add(new SqlParameter("@user_id", Session["userID"]));
                cmd2.Parameters.Add(new SqlParameter("@type", "2"));
                cmd2.Parameters.Add(new SqlParameter("@a22_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@a21_value", TextBox21.Text));
                cmd2.Parameters.Add(new SqlParameter("@a44_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@a43_value", TextBox20.Text));
                cmd2.Parameters.Add(new SqlParameter("@c21_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@c20_value", TextBox19.Text));
                cmd2.Parameters.Add(new SqlParameter("@c38_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@c38_value2", '0'));
                cmd2.Parameters.Add(new SqlParameter("@c35_value", TextBox33.Text));
                cmd2.Parameters.Add(new SqlParameter("@batchID", Label2.Text));
                cmd2.Parameters.Add(new SqlParameter("@key_", Label1.Text));
                da = new SqlDataAdapter(cmd2);
                if ( Session["clickcount"] == "1")
                {
                    con.Open();
                    //LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "BatchCompleteCheck_New", cmd2, Session["userID"].ToString());
                    logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Save_code_new", cmd2, Session["userID"].ToString());
                     LogBase.logg(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), logtext);
                   
                    cmd2.ExecuteNonQuery();
                    con.Close();
                    Session["clickcount"] = "0";
                }
                if (Request["skipnext"] == "1")
                {
                    if (BatchCompleteCheck(Convert.ToInt32(Label2.Text), 2))
                    {
                        Response.Write("jkkj");
                        Response.Redirect("supervisor.aspx?batchcomplete=1");
                    }
                    else
                    {
                        Response.Redirect("supervisorform2.aspx?skipnext=1");
                    }
                }
                else
                {
                    Response.Redirect("supervisorform2.aspx?BatchID=" + Label2.Text + "&Key_=" + Label1.Text);

                }
            }
            else
            {
                Response.Write("<script>alert('Code Not Saved! You have entered one or more wrong codes');</script>");
                Response.Write("<script>window.location='supervisorform2.aspx?skipnext=1';</script>");
            }
        }
       
    }
}