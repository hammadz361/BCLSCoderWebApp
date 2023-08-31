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
    public partial class WebFormcode02 : System.Web.UI.Page
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
        public static bool click = false;
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
                SqlCommand cmd9 = new SqlCommand("BatchId_Finder_New", con);
                cmd9.CommandType = CommandType.StoredProcedure;
                cmd9.Parameters.Add(new SqlParameter("@userid", Session["userID"]));
                cmd9.Parameters.Add(new SqlParameter("@type", "2"));
                da = new SqlDataAdapter(cmd9);
                logtext = logtext + "\n" +  LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Batch_FInder", cmd9, Session["userID"].ToString());
             //   logtext = logtext + "\n" + DateTime.Now.ToString() + "---Action----- Batch_FInder" + "----Procedure & values---- " + cmd9.ToString() + "---User :--- " + Session["userID"].ToString();
             //   LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Batch_FInder", cmd9, Session["userID"].ToString());

                da.Fill(ds8);
                SqlCommand cmd = new SqlCommand("load_uncoded_rejected_new", con);
                cmd.Parameters.Add(new SqlParameter("@type", "2"));
                cmd.CommandType = CommandType.StoredProcedure;
                da = new SqlDataAdapter(cmd);
                logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Load_uncoded_rejected", cmd, Session["userID"].ToString());
             //   logtext = logtext + "\n" + DateTime.Now.ToString() + "---Action----- Load_uncoded_rejected" + "----Procedure & values---- " + cmd.ToString() + "---User :--- " + Session["userID"].ToString();
                //TODO : Handle empty response from procedure load occupation codes
                da.Fill(ds);
                con.Open();
                cmd.ExecuteNonQuery();
                cmd9.ExecuteNonQuery();
                SqlCommand cmdd = new SqlCommand("reading_timestamp", con);
                cmdd.Parameters.Add(new SqlParameter("@key",ds.Tables[0].Rows[0]["KEY_"].ToString()));
                cmdd.Parameters.Add(new SqlParameter("@type", "2")); //ds.Tables[0].Rows[0]["KEY_"].ToString()
                cmdd.CommandType = CommandType.StoredProcedure;
                cmdd.ExecuteNonQuery();
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
                
                    if(ds.Tables[0].Rows[0]["A21a_3"].ToString() == "" && ds.Tables[0].Rows[0]["A21b_3"].ToString() == "")
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
                    logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Code_load", cmd5, Session["userID"].ToString());
               //     logtext = logtext + "\n" + DateTime.Now.ToString() + "---Action----- Code_load" + "----Procedure & values---- " + cmd5.ToString() + "---User :--- " + Session["userID"].ToString();

                    da.Fill(ds4);
                    con.Open();
                    cmd5.ExecuteNonQuery();
                    con.Close();
                            if (ds4.Tables.Count<1) {
                                Response.Write("<script>alert('Code Occupation! Sorry no occupations are found for coding');</script>");
                                Response.Write("<script>window.location='coder.aspx';</script>");
                                return;
                            }
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
                    logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Code_Load", cmd6, Session["userID"].ToString());
                    //logtext = logtext + "\n" + DateTime.Now.ToString() + "---Action----- Code_Load" + "----Procedure & values---- " + cmd6.ToString() + "---User :--- " + Session["userID"].ToString();

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
                    logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "code_Load", cmd7, Session["userID"].ToString());
                    //logtext = logtext + "\n" + DateTime.Now.ToString() + "---Action----- Code_Load" + "----Procedure & values---- " + cmd7.ToString() + "---User :--- " + Session["userID"].ToString();

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
   
                            C35_P.Visible = false;
                            C35_Mj.Enabled = false;
                            C35_SMj.Enabled = false;
                            C35_Min.Enabled = false;
                            C35_Code.Enabled = false;
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
                            logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Code_Load", cmd4, Session["userID"].ToString());
                            //logtext = logtext + "\n" + DateTime.Now.ToString() + "---Action----- Code_Load" + "----Procedure & values---- " + cmd4.ToString() + "---User :--- " + Session["userID"].ToString();

                            con.Open();
                            cmd4.ExecuteNonQuery();
                            con.Close();
                            C35_Mj.DataSource = ds3.Tables[0];
                            C35_Mj.DataTextField = ds3.Tables[0].Columns[1].ToString();
                            C35_Mj.DataValueField = ds3.Tables[0].Columns[0].ToString();
                            C35_Mj.DataBind();
                        }


                        Label1.Text = ds.Tables[0].Rows[0]["KEY_"].ToString();
                    TextBox7.Text = ds.Tables[0].Rows[0]["A21a_3"].ToString();
                    TextBox8.Text = ds.Tables[0].Rows[0]["A21b_3"].ToString();
                    TextBox9.Text = ds.Tables[0].Rows[0]["A43a_4"].ToString();
                    TextBox10.Text = ds.Tables[0].Rows[0]["A43b_4"].ToString();
                    TextBox11.Text = ds.Tables[0].Rows[0]["C20a_10"].ToString();
                    TextBox12.Text = ds.Tables[0].Rows[0]["C20b_10"].ToString();
                    c20a_.Text = ds.Tables[0].Rows[0]["C20a_10"].ToString();
                    c20b_.Text = ds.Tables[0].Rows[0]["C20b_10"].ToString();
                    A22a.Text = ds.Tables[0].Rows[0]["A22a_3"].ToString();
                    A22b.Text = ds.Tables[0].Rows[0]["A22b_3"].ToString();
                    A23.Text = ds.Tables[0].Rows[0]["A23"].ToString();
                    A24.Text = ds.Tables[0].Rows[0]["A24_3"].ToString();
                    A45.Text = ds.Tables[0].Rows[0]["A45_4"].ToString();
                    A44a.Text = ds.Tables[0].Rows[0]["A44a_4"].ToString();
                    A44b.Text = ds.Tables[0].Rows[0]["A44b_4"].ToString();
                  //  C35.Text = ds.Tables[0].Rows[0]["C35_11"].ToString();
                   // C32.Text = ds.Tables[0].Rows[0]["C32_10"].ToString();
                    C21a.Text = ds.Tables[0].Rows[0]["C21a_10"].ToString();
                    C21b.Text = ds.Tables[0].Rows[0]["C21b_10"].ToString();
                    C26.Text = ds.Tables[0].Rows[0]["C26_10"].ToString();
                    C25.Text = ds.Tables[0].Rows[0]["C25_10"].ToString();
                    c21a_.Text = ds.Tables[0].Rows[0]["C21a_10"].ToString();
                    c21b_.Text = ds.Tables[0].Rows[0]["C21b_10"].ToString();
                    c26_.Text = ds.Tables[0].Rows[0]["C26_10"].ToString();
                    c25_.Text = ds.Tables[0].Rows[0]["C25_10"].ToString();
                    C35_Text.Text = ds.Tables[0].Rows[0]["C35_11"].ToString();
                    Session["clickcount"] = "1";
                       //TODO : add 
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
               // cmd.Parameters.Add(new SqlParameter("@key_", Label1.Text));
               cmd.Parameters.Add(new SqlParameter("@type", 1));
                //Occupation code 1
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
          //      LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "code_confirm", cmd, Session["userID"].ToString());

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
            cmd.Parameters.Add(new SqlParameter("@type", "2"));
            dsa = new SqlDataAdapter(cmd);
       //     LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Batch_FInder", cmd, Session["userID"].ToString());

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

            bool error = false;
            if (TextBox21.Enabled == true)
                if (Code_check(TextBox21.Text))
                    error = false;
                else
                    error = true;
            if (TextBox20.Enabled == true && !error)
                if (Code_check(TextBox20.Text))
                    error = false;
                else
                    error = true;
            if (TextBox19.Enabled == true && !error)
                if (Code_check(TextBox19.Text))
                    error = false;
                else
                    error = true;
            if (C35_Code.Enabled == true && !error)
                if (Code_check(C35_Code.Text))
                    error = false;
                else
                    error = true;

            if (!error)
            {

              //  SqlTransaction sqltrans = null;
                string batchh = BatchIDCheck();
                logtext = logtext + "\n" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff") + "---Action----- BatchIDCheck" + "----Procedure & values---- " + batchh + "---User :--- " + Session["userID"].ToString();

                Int64 BatchID = Convert.ToInt32(batchh);
                con.ConnectionString = @conn;
                con.Open();
       //         SqlTransaction sqltrans = con.BeginTransaction();
                
                SqlCommand cmd2 = new SqlCommand("save_code_new", con);
              //  cmd2.Transaction = sqltrans
                cmd2.CommandType = CommandType.StoredProcedure;
                cmd2.Parameters.Add(new SqlParameter("@user_id", Session["userID"]));
                cmd2.Parameters.Add(new SqlParameter("@type", "2"));
                cmd2.Parameters.Add(new SqlParameter("@a21_value", TextBox21.Text));
                cmd2.Parameters.Add(new SqlParameter("@a22_value", "0"));
                cmd2.Parameters.Add(new SqlParameter("@a43_value", TextBox20.Text));
                cmd2.Parameters.Add(new SqlParameter("@a44_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@c20_value", TextBox19.Text));
                cmd2.Parameters.Add(new SqlParameter("@c21_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@c38_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@c35_value", C35_Code.Text));
                cmd2.Parameters.Add(new SqlParameter("@c38_value2", '0'));
               cmd2.Parameters.Add(new SqlParameter("@batchID", BatchID));
                cmd2.Parameters.Add(new SqlParameter("@key_", Label1.Text));
                da = new SqlDataAdapter(cmd2);
                
                
                
                if (Session["clickcount"] == "1")
                {
                    //insert --> commit 
                    logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Save_code_new", cmd2, Session["userID"].ToString());
                    //logtext = logtext + "\n" + DateTime.Now.ToString() + "---Action----- Save_code_new" + "----Procedure & values---- " + cmd2.ToString() + "---User :--- " + Session["userID"].ToString();
                    LogBase.logg(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), logtext);
                   
                    cmd2.ExecuteNonQuery();
                //    sqltrans.Commit();
                    
                    con.Close();
                    Session["clickcount"] = "0";
                }
                    if (Request["skipnext"] == "1")
                {
                    Response.Redirect("coding2.aspx?skipnext=1");
                }
                else
                {
                    Response.Redirect("coding3.aspx?BatchID=" + BatchID + "&Key_=" + Label1.Text);

                }
            }
            else
            {
                Response.Write("<script>alert('Code Not Saved! You have entered one or more wrong codes');</script>");
                Response.Write("<script>window.location='coding2.aspx?skipnext=1';</script>");
            }
        }
       
    }
}