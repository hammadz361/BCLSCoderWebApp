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
    public partial class WebFormcode03 : System.Web.UI.Page
    {
      //  public static int click_count = 0;
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
                string logtext = "";
               // Session["clickcount"] = "0";
                if ((string)(Session["LoggedIn"]) != "1")
                {
                    Response.Redirect("login.aspx");
                }
                if ((string)(Session["userType"]) != "3")
                {
                    Response.Redirect("login.aspx");
                }
                LoginName.Text = Session["UserName"].ToString();
                StringBuilder htmlTable = new StringBuilder();

                con.ConnectionString = @conn;

                SqlCommand cmd = new SqlCommand("load_uncoded_rejected_new", con);
                cmd.Parameters.Add(new SqlParameter("@type", "3"));
                cmd.CommandType = CommandType.StoredProcedure;
                da = new SqlDataAdapter(cmd);
                logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Load_uncoded_rejected", cmd, Session["userID"].ToString());

                //LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "laod_uncoded_rejected", cmd, Session["userID"].ToString());

                da.Fill(ds);
                SqlCommand cmd9 = new SqlCommand("BatchId_Finder_New", con);
                cmd9.CommandType = CommandType.StoredProcedure;
                cmd9.Parameters.Add(new SqlParameter("@userid", Session["userID"]));
                cmd9.Parameters.Add(new SqlParameter("@type", "3"));
                //LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Batch_FInder", cmd9, Session["userID"].ToString());
                logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Batch_FInder", cmd9, Session["userID"].ToString());
                
                da = new SqlDataAdapter(cmd9);
                da.Fill(ds8);
                SqlCommand cmd8 = new SqlCommand("code_load", con);
                cmd8.Parameters.Add(new SqlParameter("@type", "tools"));
                cmd8.Parameters.Add(new SqlParameter("@grouplevel", "1"));
                cmd8.Parameters.Add(new SqlParameter("@id", "0"));
                cmd8.CommandType = CommandType.StoredProcedure;
                da = new SqlDataAdapter(cmd8);
                logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "code_load", cmd8, Session["userID"].ToString());

                da.Fill(ds7);
                //SqlCommand cmd19 = new SqlCommand("code_load", con);
                //cmd19.Parameters.Add(new SqlParameter("@type", "tools"));
                //cmd19.Parameters.Add(new SqlParameter("@grouplevel", "1"));
                //cmd19.Parameters.Add(new SqlParameter("@id", "0"));
                //cmd19.CommandType = CommandType.StoredProcedure;
                //da = new SqlDataAdapter(cmd19);
                //da.Fill(ds8);
                if (ds.Tables[0].Rows.Count<1) {
                    Response.Write("<script>alert('Sorry.! No Enteries left for tools')</script>");
                    Response.Redirect("coder.aspx");
                }
                SqlCommand cmdd = new SqlCommand("reading_timestamp", con);
                cmdd.Parameters.Add(new SqlParameter("@key", ds.Tables[0].Rows[0]["KEY_"].ToString()));
                cmdd.Parameters.Add(new SqlParameter("@type", "3")); //ds.Tables[0].Rows[0]["KEY_"].ToString()
                cmdd.CommandType = CommandType.StoredProcedure;
               
                con.Open();
                cmdd.ExecuteNonQuery();
                cmd.ExecuteNonQuery();
                cmd8.ExecuteNonQuery();
                cmd9.ExecuteNonQuery();
               // cmd19.ExecuteNonQuery();
                con.Close();
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        Label2.Text = "Your Entry #" + ds8.Tables[0].Rows[0]["Entry"].ToString() + " in Batch ID:" + ds8.Tables[0].Rows[0]["BatchID"].ToString();
                        if (ds.Tables[0].Rows[0]["BatchStatus"].ToString() == "Rejected")
                        {
                            Label3.Text = "Rejected in Previous Batch!";
                        }
                        else if (ds.Tables[0].Rows[0]["BatchStatus"].ToString() == "")
                        {
                            Label3.Text = "Never Coded Before!";
                        }
                        else
                        {
                            Label3.Text = ds.Tables[0].Rows[0]["BatchStatus"].ToString();
                        }
                        ListBox7_a.DataSource = ds7.Tables[0];
                        ListBox7_a.DataTextField = ds7.Tables[0].Columns[1].ToString();
                        ListBox7_a.DataValueField = ds7.Tables[0].Columns[0].ToString();
                        ListBox7_a.DataBind();
                        ListBox1.DataSource = ds7.Tables[0];
                        ListBox1.DataTextField = ds7.Tables[0].Columns[1].ToString();
                        ListBox1.DataValueField = ds7.Tables[0].Columns[0].ToString();
                        ListBox1.DataBind();

                        if (ds.Tables[0].Rows[0]["C38_2_11_2nd"].ToString()=="")
                        {
                            C38_11.Visible = false;
                        }

                        Label1.Text = ds.Tables[0].Rows[0]["KEY_"].ToString();
                        TextBox13.Text = ds.Tables[0].Rows[0]["C38_1_11"].ToString();
                        TextBox14.Text = ds.Tables[0].Rows[0]["C38_2_11"].ToString();
                        TextBox15.Text = ds.Tables[0].Rows[0]["C38_2_11_2nd"].ToString();
                        TextBox16.Text = ds.Tables[0].Rows[0]["C38_3_11"].ToString();
                        TextBox17.Text = ds.Tables[0].Rows[0]["C38_3_11_2nd"].ToString();
                        C26.Text = ds.Tables[0].Rows[0]["C26_10"].ToString();
                        C20a.Text = ds.Tables[0].Rows[0]["C20a_10"].ToString();
                        C20b.Text = ds.Tables[0].Rows[0]["C20b_10"].ToString();                        
                        C35.Text = ds.Tables[0].Rows[0]["C35_11"].ToString();
                        C21a.Text = ds.Tables[0].Rows[0]["C21a_10"].ToString();
                        C21b.Text = ds.Tables[0].Rows[0]["C21b_10"].ToString();
                        TextBoxC38c.Text = ds.Tables[0].Rows[0]["C38_3c_11"].ToString();
                        C25.Text = ds.Tables[0].Rows[0]["C25_10"].ToString();
                        Session["clickcount"] = "1";
                        LogBase.logg(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), logtext);

                    }
                    else
                    {
                        Response.Redirect("coder.aspx?finished=1");
                    }
                }
                else
                {
                    Response.Redirect("coder.aspx?finished=1");
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
                cmd.Parameters.Add(new SqlParameter("@type", 3));
                da = new SqlDataAdapter(cmd);
                //logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "code_confirm", cmd, Session["userID"].ToString());

                da.Fill(ds);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                if (ds.Tables[0].Rows[0]["Total"].ToString() == "0")
                    return false;
                else
                    return true;
            }
        }
        public string BatchIDCheck()
        {
            SqlDataAdapter dsa;
            DataSet dss = new DataSet();
            string connnn = ConfigurationManager.ConnectionStrings["MyConnectionString"].ToString();
            SqlConnection connn = new SqlConnection();
            connn.ConnectionString = @connnn;
            SqlCommand cmd = new SqlCommand("BatchId_Finder_New", connn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@userid", Session["userID"]));
            cmd.Parameters.Add(new SqlParameter("@type", "3"));
            dsa = new SqlDataAdapter(cmd);
        //    logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Batch_FInder", cmd, Session["userID"].ToString());

            dsa.Fill(dss);
            connn.Open();
            cmd.ExecuteNonQuery();
            connn.Close();
            Int32 totaltables = dss.Tables.Count;
            string batchh = dss.Tables[0].Rows[0]["BatchID"].ToString();
            return batchh;
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

                string batchh = BatchIDCheck();
                logtext = logtext + "\n" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff") + "---Action----- BatchIDCheck" + "----Procedure & values---- " + batchh + "---User :--- " + Session["userID"].ToString();
                Int64 BatchID = Convert.ToInt32(batchh);
                con.ConnectionString = @conn;
                SqlCommand cmd2 = new SqlCommand("save_code_new", con);
                cmd2.CommandType = CommandType.StoredProcedure;
                cmd2.Parameters.Add(new SqlParameter("@user_id", Session["userID"]));
                cmd2.Parameters.Add(new SqlParameter("@type", "3"));
                cmd2.Parameters.Add(new SqlParameter("@a22_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@a21_value", "0"));
                cmd2.Parameters.Add(new SqlParameter("@a44_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@a43_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@c21_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@c20_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@c38_value", TextBox18.Text));
                cmd2.Parameters.Add(new SqlParameter("@c38_value2", TextBox2.Text));
                cmd2.Parameters.Add(new SqlParameter("@c35_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@batchID", BatchID));
                cmd2.Parameters.Add(new SqlParameter("@key_", Label1.Text));
                if ( Session["clickcount"] == "1")
                {
                   logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "save_code_new", cmd2, Session["userID"].ToString());
                   LogBase.logg(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), logtext);
                    da = new SqlDataAdapter(cmd2);
                    con.Open();
                    cmd2.ExecuteNonQuery();
                    con.Close();
                     Session["clickcount"] = "0";
                }
                if (Request["skipnext"] == "1")
                {
                    Response.Redirect("coding3.aspx?skipnext=1");
                }
                else
                {
                    Response.Redirect("coding.aspx");

                }
            }
            else
            {
                Response.Write("<script>alert('Code Not Saved! You have entered one or more wrong codes');</script>");
                Response.Write("<script>window.location='coding3.aspx?skipnext=1';</script>");
            }
        }
       
    }
}