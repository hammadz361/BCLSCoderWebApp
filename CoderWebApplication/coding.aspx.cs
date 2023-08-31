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
    public partial class WebFormcode : System.Web.UI.Page
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
        public static int click_count = 0 ;
        string conn = ConfigurationManager.ConnectionStrings["MyConnectionString"].ToString();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string logtext = "";
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
                cmd9.Parameters.Add(new SqlParameter("@type", "1"));
                da = new SqlDataAdapter(cmd9);
                //LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Batch_FInder", cmd9, Session["userID"].ToString());

                logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Batch_FInder", cmd9, Session["userID"].ToString());
                da.Fill(ds8);

                SqlCommand cmd = new SqlCommand("load_uncoded_rejected_new", con);
                cmd.Parameters.Add(new SqlParameter("@type", "1"));
                cmd.CommandType = CommandType.StoredProcedure;
                da = new SqlDataAdapter(cmd);
                //LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Uncoded_jected_new", cmd, Session["userID"].ToString());
                logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Load_uncoded_rejected", cmd, Session["userID"].ToString());
               
                da.Fill(ds);
                con.Open();
                cmd.ExecuteNonQuery();
                cmd9.ExecuteNonQuery();
                SqlCommand cmdd = new SqlCommand("reading_timestamp", con);
                cmdd.Parameters.Add(new SqlParameter("@key", ds.Tables[0].Rows[0]["KEY_"].ToString()));
                cmdd.Parameters.Add(new SqlParameter("@type", "1")); //ds.Tables[0].Rows[0]["KEY_"].ToString()
                cmdd.CommandType = CommandType.StoredProcedure;
                cmdd.ExecuteNonQuery();
                con.Close();
                
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                {
                    Label2.Text = "Your Entry #" + ds8.Tables[0].Rows[0]["Entry"].ToString() + " in Batch ID:" + ds8.Tables[0].Rows[0]["BatchID"].ToString();
                if(ds.Tables[0].Rows[0]["BatchStatus"].ToString()=="Rejected")
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
                    logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "load_code", cmd2, Session["userID"].ToString());
                    da = new SqlDataAdapter(cmd2);
                    da.Fill(ds1);
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
                    logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "code_load", cmd3, Session["userID"].ToString());
                    da.Fill(ds2);
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
                    C21.Visible = false;
                    ListBox3_a.Enabled = false;
                    ListBox3_b.Enabled = false;
                    ListBox3_c.Enabled = false;
                    TextBox22.Enabled = false;
                }
                else
                {
                    SqlCommand cmd4 = new SqlCommand("code_load", con);
                    cmd4.Parameters.Add(new SqlParameter("@type", "industries"));
                    cmd4.Parameters.Add(new SqlParameter("@grouplevel", "1"));
                    cmd4.Parameters.Add(new SqlParameter("@id", "0"));
                    cmd4.CommandType = CommandType.StoredProcedure;
                    da = new SqlDataAdapter(cmd4);
                    logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "code_load", cmd4, Session["userID"].ToString());
                    da.Fill(ds3);
                    con.Open();
                    cmd4.ExecuteNonQuery();
                    con.Close();
                    ListBox3_a.DataSource = ds3.Tables[0];
                    ListBox3_a.DataTextField = ds3.Tables[0].Columns[1].ToString();
                    ListBox3_a.DataValueField = ds3.Tables[0].Columns[0].ToString();
                    ListBox3_a.DataBind();
                }
                
                
                    Label1.Text = ds.Tables[0].Rows[0]["KEY_"].ToString();
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

                string type = "21";

                if (code.Length == 3) { 
                    type = "2";
                }

                SqlCommand cmd = new SqlCommand("code_confirm", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@code", code));
                cmd.Parameters.Add(new SqlParameter("@key_", Label1.Text));
                cmd.Parameters.Add(new SqlParameter("@type", type));
                //industries code 2
                da = new SqlDataAdapter(cmd);
         //       LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Code_Confirm", cmd, Session["userID"].ToString());
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
            cmd.Parameters.Add(new SqlParameter("@type", "1"));
            dsa = new SqlDataAdapter(cmd);
         //   LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Batch_Finder_new", cmd, Session["userID"].ToString());
            dsa.Fill(dss);
            connn.Open();
            cmd.ExecuteNonQuery();
            connn.Close();
            Int32 totaltables= dss.Tables.Count;
            string batchh = dss.Tables[0].Rows[0]["BatchID"].ToString();
            return batchh;
        }

        
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            string logtext = "";
            
            var asd =TextBox22.Enabled;
            var as11d = TextBox23.Enabled;
            var asdss = TextBox24.Enabled;
            ((Button)sender).Enabled = false;
           // Button1.Visible = false;
            bool error = false;

           


            if (TextBox24.Enabled == true)
                if (Code_check(TextBox24.Text)) //codecheck (false) means no code is found
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

            if (ListBox1_c.Items.Count > 0 && string.IsNullOrWhiteSpace(TextBox24.Text))
            {
                error = true;
            }
            else if (ListBox2_c.Items.Count > 0 && string.IsNullOrWhiteSpace(TextBox23.Text))
            {
                error = true;
            }
            else if (ListBox3_c.Items.Count > 0 && string.IsNullOrWhiteSpace(TextBox22.Text))
            {
                error = true;
            }

            if (!error)
            {

                string batchh = BatchIDCheck();
                logtext = logtext + "\n" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff") + "---Action----- BatchIDCheck" + "----Procedure & values---- " + batchh + "---User :--- " + Session["userID"].ToString();

                Int64 BatchID = Convert.ToInt32(batchh);
                con.ConnectionString = @conn;
                SqlCommand cmd2 = new SqlCommand("save_code_new", con);
                cmd2.CommandType = CommandType.StoredProcedure;
                cmd2.Parameters.Add(new SqlParameter("@user_id", Session["userID"]));
                cmd2.Parameters.Add(new SqlParameter("@type", "1"));
                cmd2.Parameters.Add(new SqlParameter("@a22_value", TextBox24.Text));
                cmd2.Parameters.Add(new SqlParameter("@a21_value", "0"));
                cmd2.Parameters.Add(new SqlParameter("@a44_value", TextBox23.Text));
                cmd2.Parameters.Add(new SqlParameter("@a43_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@c21_value", TextBox22.Text));
                cmd2.Parameters.Add(new SqlParameter("@c20_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@c38_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@c38_value2", '0'));
                cmd2.Parameters.Add(new SqlParameter("@c35_value", '0'));
                cmd2.Parameters.Add(new SqlParameter("@batchID", BatchID));
                cmd2.Parameters.Add(new SqlParameter("@key_", Label1.Text));
                da = new SqlDataAdapter(cmd2);
                if ( Session["clickcount"] == "1")
                {
                    con.Open();
                    cmd2.ExecuteNonQuery();
                    con.Close();
                    logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Save_code_new", cmd2, Session["userID"].ToString());
                    //logtext = logtext + "\n" + DateTime.Now.ToString() + "---Action----- Save_code_new" + "----Procedure & values---- " + cmd2.ToString() + "---User :--- " + Session["userID"].ToString();
                    LogBase.logg(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), logtext);
                    
                    //LogBase.log(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Save_code_new", cmd2, Session["userID"].ToString());
                    Session["clickcount"] = "0";
                }
                if (Request["skipnext"] == "1")
                {
                    Response.Redirect("coding.aspx?skipnext=1");
                }
                else
                {
                    Response.Redirect("coding2.aspx?BatchID=" + BatchID + "&Key_=" + Label1.Text);

                }


            }
            else
            {
                Response.Write("<script>alert('Code Not Saved! You have entered one or more wrong codes');</script>");
                Response.Write("<script>window.location='coding.aspx?skipnext=1';</script>");
            }
        }
       
    }
}