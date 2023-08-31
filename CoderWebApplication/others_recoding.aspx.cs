using System;
using System.Collections;
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
    public partial class OthersCoding : System.Web.UI.Page
    {
       
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string conn = ConfigurationManager.ConnectionStrings["MyConnectionString"].ToString();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> myArrayList = new List<string>();
            if (!IsPostBack)
            {
                string logtext = "";
                if ((string)(Session["LoggedIn"]) != "1")
                {
                    Response.Redirect("login.aspx");
                }
               
                LoginName.Text = Session["UserName"].ToString();
                StringBuilder htmlTable = new StringBuilder();
                //Procedure for individual and HH level
                string type = Request["type"];
                string procedure = "load_others_main";
                if (type == "2") procedure = "load_others_ind";

                logtext = "\n" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff") + "---Action----- load_others" + "----Procedure & values---- " + procedure + "---User :--- " + Session["userID"].ToString();

                con.ConnectionString = @conn;
                SqlCommand cmd = new SqlCommand(procedure, con); //SqlCommand cmd = new SqlCommand("load_others", con);
                cmd.CommandType = CommandType.StoredProcedure;
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                if (ds.Tables[0].Rows.Count==0)
                {
                    Response.Redirect("coder.aspx?finished=1");
                }
               
                    int j;
                if (Convert.ToInt32(Request["j"]) > 0)
                {
                    j = Convert.ToInt32(Request["j"]);
                }
                else
                {
                    j = 0;
                }
                int k = 31;
                int i = ds.Tables[0].Rows.Count;
            
                do
                {
                  
                
                    if(ds.Tables[0].Rows[j]["KEY_"].ToString() == null)
                    {
                        Response.Redirect("coder.aspx?finished=1");
                    }
                    if (k == 0)
                    {
                        j++;
                        k = 31;
                    }


                   
                    string Key_ = ds.Tables[0].Rows[j]["KEY_"].ToString();

                    if (type == "2")
                    {
                        B18.Visible = false; k--;
                        B22.Visible = false; k--;
                        B11.Visible = false; k--;
                        B14.Visible = false; k--;
                        B19.Visible = false; k--;
                        B23.Visible = false; k--;
                        B20.Visible = false; k--;
                        B1a.Visible = false; k--;
                        B1b.Visible = false; k--;
                        B25.Visible = false; k--;
                        B6.Visible = false; k--;
                        B7.Visible = false; k--;


                    if (ds.Tables[0].Rows[j]["A6a_1_i"].ToString() != "i")
                    {
                        A6a.Visible = false; k--;
                        A6a_O.Enabled = false;
                        A6a_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("A6a", Key_) > 0)
                    {
                        A6a.Visible = false; k--;
                        A6a_O.Enabled = false;
                        A6a_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("A6a");
                        A6a_T.Enabled = false;
                        A6a.Visible = true;
                        A6a_Q.Enabled = true;
                        A6a_O.Enabled = true;
                        DataSet ds_A6a = new DataSet();
                        A6a_A.Text = ds.Tables[0].Rows[j]["A6a_Other_1"].ToString();
                        A6a_A.ToolTip = ds.Tables[0].Rows[j]["A6a_Other_1"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "A6a"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_A6a);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        A6a_O.DataSource = ds_A6a.Tables[0];
                        A6a_O.DataTextField = ds_A6a.Tables[0].Columns[6].ToString();
                        A6a_O.DataValueField = ds_A6a.Tables[0].Columns[7].ToString();
                        A6a_O.DataBind();
                        A6a_Q.Text = ds_A6a.Tables[0].Rows[0]["Question"].ToString();
                        A6a_Q.ToolTip = ds_A6a.Tables[0].Rows[0]["Question"].ToString();
                    }
                    if (ds.Tables[0].Rows[j]["A17_other_2"].ToString() == "") //18
                    {
                       // A6a.Visible = false; k--;
                        A17.Visible = false; k--;
                        //A17_O.Enabled = false;
                        //A17_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("A17", Key_) > 0)
                    {
                        A17.Visible = false; k--;
                        //A17_O.Enabled = false;
                        //A17_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("A17");
                        //A17_T.Enabled = false;
                        A17.Visible = true;
                        //A17_Q.Enabled = true;
                        //A17_O.Enabled = true;
                        DataSet ds_A17 = new DataSet();
                        A17_A.Text = ds.Tables[0].Rows[j]["A17_other_2"].ToString();
                        A17_A.ToolTip = ds.Tables[0].Rows[j]["A17_other_2"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "A17"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_A17);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        A17_O.DataSource = ds_A17.Tables[0];
                        A17_O.DataTextField = ds_A17.Tables[0].Columns[6].ToString();
                        A17_O.DataValueField = ds_A17.Tables[0].Columns[7].ToString();
                        A17_O.DataBind();
                        A17_Q.Text = ds_A17.Tables[0].Rows[0]["Question"].ToString();
                        A17_Q.ToolTip = ds_A17.Tables[0].Rows[0]["Question"].ToString();
                    }
                    if (ds.Tables[0].Rows[j]["A23_3"].ToString() != "94")  //17
                    {
                        
                        A23.Visible = false; k--;
                        //A23_O.Enabled = false;
                        //A23_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("A23", Key_) > 0)
                    {
                        i--;
                        A23.Visible = false; k--;
                        //A23_O.Enabled = false;
                        //A23_T.Enabled = false;
                    }
                    else
                    {
                        myArrayList.Add("A23");
                        //A23_T.Enabled = false;
                        A23.Visible = true;
                        //A23_Q.Enabled = true;
                        //A23_O.Enabled = true;
                        DataSet ds_A23 = new DataSet();
                        A23_A.Text = ds.Tables[0].Rows[j]["A23_other_3"].ToString();
                        A23_A.ToolTip = ds.Tables[0].Rows[j]["A23_other_3"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "A23"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_A23);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        A23_O.DataSource = ds_A23.Tables[0];
                        A23_O.DataTextField = ds_A23.Tables[0].Columns[6].ToString();
                        A23_O.DataValueField = ds_A23.Tables[0].Columns[7].ToString();
                        A23_O.DataBind();
                        A23_Q.Text = ds_A23.Tables[0].Rows[0]["Question"].ToString();
                        A23_Q.ToolTip = ds_A23.Tables[0].Rows[0]["Question"].ToString();
                    }
                    if (ds.Tables[0].Rows[j]["A29_3_m"].ToString() != "m") //16
                    {
                       
                        A29.Visible = false; k--;
                        //A29_O.Enabled = false;
                        //A29_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("A29", Key_) > 0)
                    {
                        i--;
                        A29.Visible = false; k--;
                        //A29_O.Enabled = false;
                        //A29_T.Enabled = false;
                    }
                    else
                    {
                        myArrayList.Add("A29");
                        //A29_T.Enabled = false;
                        A29.Visible = true;
                        A29_Q.Enabled = true;
                        A29_O.Enabled = true;
                        DataSet ds_A29 = new DataSet();
                        A29_A.Text = ds.Tables[0].Rows[j]["A29_other_3"].ToString();
                        A29_A.ToolTip = ds.Tables[0].Rows[j]["A29_other_3"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "A29"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_A29);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        A29_O.DataSource = ds_A29.Tables[0];
                        A29_O.DataTextField = ds_A29.Tables[0].Columns[6].ToString();
                        A29_O.DataValueField = ds_A29.Tables[0].Columns[7].ToString();
                        A29_O.DataBind();
                        A29_Q.Text = ds_A29.Tables[0].Rows[0]["Question"].ToString();
                        A29_Q.ToolTip = ds_A29.Tables[0].Rows[0]["Question"].ToString();
                    }
                   
                    if (ds.Tables[0].Rows[j]["A14_2"].ToString() != "94") //15
                    {
                        
                        A14.Visible = false; k--;
                        //A14_O.Enabled = false;
                        //A14_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("A14", Key_) > 0)
                    {
                        A14.Visible = false; k--;
                        //A14_O.Enabled = false;
                        //A14_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("A14");
                        //A14_T.Enabled = false;
                        A14.Visible = true;
                        A14_Q.Enabled = true;
                        A14_O.Enabled = true;
                        DataSet ds_A14 = new DataSet();
                        A14_A.Text = ds.Tables[0].Rows[j]["A14_other_2"].ToString();
                        A14_A.ToolTip = ds.Tables[0].Rows[j]["A14_other_2"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "A14"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_A14);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        A14_O.DataSource = ds_A14.Tables[0];
                        A14_O.DataTextField = ds_A14.Tables[0].Columns[6].ToString();
                        A14_O.DataValueField = ds_A14.Tables[0].Columns[7].ToString();
                        A14_O.DataBind();
                        A14_Q.Text = ds_A14.Tables[0].Rows[0]["Question"].ToString();
                        A14_Q.ToolTip = ds_A14.Tables[0].Rows[0]["Question"].ToString();
                    }
                    if (ds.Tables[0].Rows[j]["A36_3"].ToString() != "94")
                    {
                       // Label2.Text = "Problem1";
                       
                        A36.Visible = false; k--;
                        //A36_O.Enabled = false;
                        //A36_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("A36", Key_) > 0)
                    {
                       // Label2.Text = "Problem2";

                        A36.Visible = false; k--;
                        //A36_O.Enabled = false;
                        //A36_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                       // Label2.Text = "No Problem";

                        myArrayList.Add("A36");
                        //A36_T.Enabled = false;
                        A36.Visible = true;
                        A36_Q.Enabled = true;
                        A36_O.Enabled = true;
                        DataSet ds_A36 = new DataSet();
                        A36_A.Text = ds.Tables[0].Rows[j]["A36_3_OTHER"].ToString();
                        A36_A.ToolTip = ds.Tables[0].Rows[j]["A36_3_OTHER"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "A36"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_A36);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        A36_O.DataSource = ds_A36.Tables[0];
                        A36_O.DataTextField = ds_A36.Tables[0].Columns[6].ToString();
                        A36_O.DataValueField = ds_A36.Tables[0].Columns[7].ToString();
                        A36_O.DataBind();
                        A36_Q.Text = ds_A36.Tables[0].Rows[0]["Question"].ToString();
                        A36_Q.ToolTip = ds_A36.Tables[0].Rows[0]["Question"].ToString();
                    }
                    if (ds.Tables[0].Rows[j]["A49_6"].ToString() != "94")
                    {
                      
                        A49.Visible = false; k--;
                        //A49_O.Enabled = false;
                        //A49_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("A49", Key_) > 0)
                    {
                        A49.Visible = false; k--;
                        //A49_O.Enabled = false;
                        //A49_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("A49");
                        //A49_T.Enabled = false;
                        A49.Visible = true;
                        A49_Q.Enabled = true;
                        A49_O.Enabled = true;
                        DataSet ds_A49 = new DataSet();
                        A49_A.Text = ds.Tables[0].Rows[j]["A49_other_6"].ToString();
                        A49_A.ToolTip = ds.Tables[0].Rows[j]["A49_other_6"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "A49"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_A49);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        A49_O.DataSource = ds_A49.Tables[0];
                        A49_O.DataTextField = ds_A49.Tables[0].Columns[6].ToString();
                        A49_O.DataValueField = ds_A49.Tables[0].Columns[7].ToString();
                        A49_O.DataBind();
                        A49_Q.Text = ds_A49.Tables[0].Rows[0]["Question"].ToString();
                        A49_Q.ToolTip = ds_A49.Tables[0].Rows[0]["Question"].ToString();
                    }
                    if (ds.Tables[0].Rows[j]["A16_2"].ToString() != "94")
                    {
                        A16.Visible = false; k--;
                        //A16_O.Enabled = false;
                        //A16_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("A16", Key_) > 0)
                    {
                       
                        A16.Visible = false; k--;
                        //A16_O.Enabled = false;
                        //A16_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("A16");
                        //A16_T.Enabled = false;
                        A16.Visible = true;
                        A16_Q.Enabled = true;
                        A16_O.Enabled = true;
                        DataSet ds_A16 = new DataSet();
                        A16_A.Text = ds.Tables[0].Rows[j]["A16_other_2"].ToString();
                        A16_A.ToolTip = ds.Tables[0].Rows[j]["A16_other_2"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "A16"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_A16);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        A16_O.DataSource = ds_A16.Tables[0];
                        A16_O.DataTextField = ds_A16.Tables[0].Columns[6].ToString();
                        A16_O.DataValueField = ds_A16.Tables[0].Columns[7].ToString();
                        A16_O.DataBind();
                        A16_Q.Text = ds_A16.Tables[0].Rows[0]["Question"].ToString();
                        A16_Q.ToolTip = ds_A16.Tables[0].Rows[0]["Question"].ToString();
                    }
                    if (ds.Tables[0].Rows[j]["A39_3"].ToString() != "94")
                    {
                       
                        A39.Visible = false; k--;
                        //A39_O.Enabled = false;
                        //A39_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("A39", Key_) > 0)
                    {
                        A39.Visible = false; k--;
                        A39_O.Enabled = false;
                        A39_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("A39");
                        //A39_T.Enabled = false;
                        A39.Visible = true;
                        //A39_Q.Enabled = true;
                        //A39_O.Enabled = true;
                        DataSet ds_A39 = new DataSet();
                        A39_A.Text = ds.Tables[0].Rows[j]["A39_other_3"].ToString();
                        A39_A.ToolTip = ds.Tables[0].Rows[j]["A39_other_3"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "A39"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_A39);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        A39_O.DataSource = ds_A39.Tables[0];
                        A39_O.DataTextField = ds_A39.Tables[0].Columns[6].ToString();
                        A39_O.DataValueField = ds_A39.Tables[0].Columns[7].ToString();
                        A39_O.DataBind();
                        A39_Q.Text = ds_A39.Tables[0].Rows[0]["Question"].ToString();
                        A39_Q.ToolTip = ds_A39.Tables[0].Rows[0]["Question"].ToString();
                    }
                    if (ds.Tables[0].Rows[j]["A34_3_g"].ToString() != "g")
                    {

                        A34.Visible = false; k--;
                        //A34_O.Enabled = false;
                        //A34_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("A34", Key_) > 0)
                    {
                        A34.Visible = false; k--;
                        //A34_O.Enabled = false;
                        //A34_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("A34");
                        //A34_T.Enabled = false;
                        A34.Visible = true;
                        A34_Q.Enabled = true;
                        A34_O.Enabled = true;
                        DataSet ds_A34 = new DataSet();
                        A34_A.Text = ds.Tables[0].Rows[j]["A34_3_Other"].ToString();
                        A34_A.ToolTip = ds.Tables[0].Rows[j]["A34_3_Other"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "A34"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_A34);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        A34_O.DataSource = ds_A34.Tables[0];
                        A34_O.DataTextField = ds_A34.Tables[0].Columns[6].ToString();
                        A34_O.DataValueField = ds_A34.Tables[0].Columns[7].ToString();
                        A34_O.DataBind();
                        A34_Q.Text = ds_A34.Tables[0].Rows[0]["Question"].ToString();
                        A34_Q.ToolTip = ds_A34.Tables[0].Rows[0]["Question"].ToString();
                    }
                   
                    if (ds.Tables[0].Rows[j]["C13_9"].ToString() != "94")
                    {
                        
                        C13.Visible = false; k--;
                        //C13_O.Enabled = false;
                        //C13_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("C13", Key_) > 0)
                    {
                        C13.Visible = false; k--;
                        //C13_O.Enabled = false;
                        //C13_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("C13");
                        //C13_T.Enabled = false;
                        C13.Visible = true;
                        C13_Q.Enabled = true;
                        C13_O.Enabled = true;
                        DataSet ds_C13 = new DataSet();
                        C13_A.Text = ds.Tables[0].Rows[j]["C13_9_other"].ToString();
                        C13_A.ToolTip = ds.Tables[0].Rows[j]["C13_9_other"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "C13"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_C13);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        C13_O.DataSource = ds_C13.Tables[0];
                        C13_O.DataTextField = ds_C13.Tables[0].Columns[6].ToString();
                        C13_O.DataValueField = ds_C13.Tables[0].Columns[7].ToString();
                        C13_O.DataBind();
                        C13_Q.Text = ds_C13.Tables[0].Rows[0]["Question"].ToString();
                        C13_Q.ToolTip = ds_C13.Tables[0].Rows[0]["Question"].ToString();
                    }
                   
                    if (ds.Tables[0].Rows[j]["C27_C27_10"].ToString() != "94")
                    {
                       
                        C27.Visible = false; k--;
                        //C27_O.Enabled = false;
                        //C27_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("C27", Key_) > 0)
                    {
                        C27.Visible = false; k--;
                        //C27_O.Enabled = false;
                        //C27_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("C27");
                        //C27_T.Enabled = false;
                        C27.Visible = true;
                        C27_Q.Enabled = true;
                        C27_O.Enabled = true;
                        DataSet ds_C27 = new DataSet();
                        C27_A.Text = ds.Tables[0].Rows[j]["C27_10_other"].ToString();
                        C27_A.ToolTip = ds.Tables[0].Rows[j]["C27_10_other"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "C27"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_C27);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        C27_O.DataSource = ds_C27.Tables[0];
                        C27_O.DataTextField = ds_C27.Tables[0].Columns[6].ToString();
                        C27_O.DataValueField = ds_C27.Tables[0].Columns[7].ToString();
                        C27_O.DataBind();
                        C27_Q.Text = ds_C27.Tables[0].Rows[0]["Question"].ToString();
                        C27_Q.ToolTip = ds_C27.Tables[0].Rows[0]["Question"].ToString();
                    }
                   
                    if (ds.Tables[0].Rows[j]["C25_10"].ToString() != "94")
                    {
                        
                        C25.Visible = false; k--;
                        //C25_O.Enabled = false;
                        //C25_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("C25", Key_) > 0)
                    {
                        C25.Visible = false; k--;
                        //C25_O.Enabled = false;
                        //C25_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("C25");
                        //C25_T.Enabled = false;
                        C25.Visible = true;
                        C25_Q.Enabled = true;
                        C25_O.Enabled = true;
                        DataSet ds_C25 = new DataSet();
                        C25_A.Text = ds.Tables[0].Rows[j]["C25_10_other"].ToString();
                        C25_A.ToolTip = ds.Tables[0].Rows[j]["C25_10_other"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "C25"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_C25);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        C25_O.DataSource = ds_C25.Tables[0];
                        C25_O.DataTextField = ds_C25.Tables[0].Columns[6].ToString();
                        C25_O.DataValueField = ds_C25.Tables[0].Columns[7].ToString();
                        C25_O.DataBind();
                        C25_Q.Text = ds_C25.Tables[0].Rows[0]["Question"].ToString();
                        C25_Q.ToolTip = ds_C25.Tables[0].Rows[0]["Question"].ToString();
                    }
                    if (ds.Tables[0].Rows[j]["C29_10_other"].ToString() == "")
                    {
                       
                        C29.Visible = false; k--;
                        //C29_O.Enabled = false;
                        //C29_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("C29", Key_) > 0)
                    {
                        C29.Visible = false; k--;
                        //C29_O.Enabled = false;
                        //C29_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("C29");
                        //C29_T.Enabled = false;
                        C29.Visible = true;
                        C29_Q.Enabled = true;
                        C29_O.Enabled = true;
                        DataSet ds_C29 = new DataSet();
                        C29_A.Text = ds.Tables[0].Rows[j]["C29_10_other"].ToString();
                        C29_A.ToolTip = ds.Tables[0].Rows[j]["C29_10_other"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "C29"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_C29);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        C29_O.DataSource = ds_C29.Tables[0];
                        C29_O.DataTextField = ds_C29.Tables[0].Columns[6].ToString();
                        C29_O.DataValueField = ds_C29.Tables[0].Columns[7].ToString();
                        C29_O.DataBind();
                        C29_Q.Text = ds_C29.Tables[0].Rows[0]["Question"].ToString();
                        C29_Q.ToolTip = ds_C29.Tables[0].Rows[0]["Question"].ToString();
                    }
                    if (ds.Tables[0].Rows[j]["C7_9_other"].ToString() == "")
                    {

                        C7.Visible = false; k--;
                        //C7_O.Enabled = false;
                        //C7_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("C7", Key_) > 0)
                    {
                        C7.Visible = false; k--;
                        //C7_O.Enabled = false;
                        //C7_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("C7");
                        //C7_T.Enabled = false;
                        C7.Visible = true;
                        C7_Q.Enabled = true;
                        C7_O.Enabled = true;
                        DataSet ds_C7 = new DataSet();
                        C7_A.Text = ds.Tables[0].Rows[j]["C7_9_OTHER"].ToString();
                        C7_A.ToolTip = ds.Tables[0].Rows[j]["C7_9_OTHER"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "C7"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_C7);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        C7_O.DataSource = ds_C7.Tables[0];
                        C7_O.DataTextField = ds_C7.Tables[0].Columns[6].ToString();
                        C7_O.DataValueField = ds_C7.Tables[0].Columns[7].ToString();
                        C7_O.DataBind();
                        C7_Q.Text = ds_C7.Tables[0].Rows[0]["Question"].ToString();
                        C7_Q.ToolTip = ds_C7.Tables[0].Rows[0]["Question"].ToString();
                    }
                    if (ds.Tables[0].Rows[j]["C9_9"].ToString() != "94")
                    {
                        
                        C9.Visible = false; k--;
                        //C9_O.Enabled = false;
                        //C9_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("C9", Key_) > 0)
                    {
                        C9.Visible = false; k--;
                        //C9_O.Enabled = false;
                        //C9_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("C9");
                        //C9_T.Enabled = false;
                        C9.Visible = true;
                        C9_Q.Enabled = true;
                        C9_O.Enabled = true;
                        DataSet ds_C9 = new DataSet();
                        C9_A.Text = ds.Tables[0].Rows[j]["C9_9_OTHER"].ToString();
                        C9_A.ToolTip = ds.Tables[0].Rows[j]["C9_9_OTHER"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "C9"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_C9);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        C9_O.DataSource = ds_C9.Tables[0];
                        C9_O.DataTextField = ds_C9.Tables[0].Columns[6].ToString();
                        C9_O.DataValueField = ds_C9.Tables[0].Columns[7].ToString();
                        C9_O.DataBind();
                        C9_Q.Text = ds_C9.Tables[0].Rows[0]["Question"].ToString();
                        C9_Q.ToolTip = ds_C9.Tables[0].Rows[0]["Question"].ToString();
                    }
                    if (ds.Tables[0].Rows[j]["C40_11_OTHER"].ToString() == "")
                    {
                       
                        C40.Visible = false; k--;
                        //C40_O.Enabled = false;
                        //C40_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("C40", Key_) > 0)
                    {
                        C40.Visible = false; k--;
                        //C40_O.Enabled = false;
                        //C40_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("C40");
                        //C40_T.Enabled = false;
                        C40.Visible = true;
                        C40_Q.Enabled = true;
                        C40_O.Enabled = true;
                        DataSet ds_C40 = new DataSet();
                        C40_A.Text = ds.Tables[0].Rows[j]["C40_11_OTHER"].ToString();
                        C40_A.ToolTip = ds.Tables[0].Rows[j]["C40_11_OTHER"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "C40"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_C40);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        C40_O.DataSource = ds_C40.Tables[0];
                        C40_O.DataTextField = ds_C40.Tables[0].Columns[6].ToString();
                        C40_O.DataValueField = ds_C40.Tables[0].Columns[7].ToString();
                        C40_O.DataBind();
                        C40_Q.Text = ds_C40.Tables[0].Rows[0]["Question"].ToString();
                        C40_Q.ToolTip = ds_C40.Tables[0].Rows[0]["Question"].ToString();
                    }
                    if (ds.Tables[0].Rows[j]["G10b"].ToString() != "94")
                    {
                        G10b.Visible = false; k--;
                        //G10b_O.Enabled = false;
                        //G10b_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("G10b", Key_) > 0)
                    {
                        G10b.Visible = false; k--;
                        //G10b_O.Enabled = false;
                        //G10b_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("G10b");
                        //G10b_T.Enabled = false;
                        G10b.Visible = true;
                        G10b_Q.Enabled = true;
                        G10b_O.Enabled = true;
                        DataSet ds_G10b = new DataSet();
                        G10b_A.Text = ds.Tables[0].Rows[j]["G10b_other"].ToString();
                        G10b_A.ToolTip = ds.Tables[0].Rows[j]["G10b_other"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "G10b"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_G10b);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        G10b_O.DataSource = ds_G10b.Tables[0];
                        G10b_O.DataTextField = ds_G10b.Tables[0].Columns[6].ToString();
                        G10b_O.DataValueField = ds_G10b.Tables[0].Columns[7].ToString();
                        G10b_O.DataBind();
                        G10b_Q.Text = ds_G10b.Tables[0].Rows[0]["Question"].ToString();
                        G10b_Q.ToolTip = ds_G10b.Tables[0].Rows[0]["Question"].ToString();
                    }
                    if (ds.Tables[0].Rows[j]["G10a"].ToString() != "94")
                    {
                        G10a.Visible = false; k--;
                        //G10a_O.Enabled = false;
                        //G10a_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("G10a", Key_) > 0)
                    {
                        G10a.Visible = false; k--;
                        //G10a_O.Enabled = false;
                        //G10a_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("G10a");
                        //G10a_T.Enabled = false;
                        G10a.Visible = true;
                        G10a_Q.Enabled = true;
                        G10a_O.Enabled = true;
                        DataSet ds_G10a = new DataSet();
                        G10a_A.Text = ds.Tables[0].Rows[j]["G10a_other"].ToString();
                        G10a_A.ToolTip = ds.Tables[0].Rows[j]["G10a_other"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "G10a"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_G10a);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        G10a_O.DataSource = ds_G10a.Tables[0];
                        G10a_O.DataTextField = ds_G10a.Tables[0].Columns[6].ToString();
                        G10a_O.DataValueField = ds_G10a.Tables[0].Columns[7].ToString();
                        G10a_O.DataBind();
                        G10a_Q.Text = ds_G10a.Tables[0].Rows[0]["Question"].ToString();
                        G10a_Q.ToolTip = ds_G10a.Tables[0].Rows[0]["Question"].ToString();
                    }
                }
                    else{
                        A6a.Visible = false; k--;
                        A17.Visible = false; k--;
                        A23.Visible = false; k--;
                        A29.Visible = false; k--;
                        A14.Visible = false; k--;
                        A36.Visible = false; k--;
                        A49.Visible = false; k--;
                        A16.Visible = false; k--;
                        A39.Visible = false; k--;
                        A34.Visible = false; k--;
                        C13.Visible = false; k--;
                        C27.Visible = false; k--;
                        C25.Visible = false; k--;
                        C29.Visible = false; k--;
                        C9.Visible = false; k--;
                        C7.Visible = false; k--;
                        C40.Visible = false; k--;
                        G10a.Visible = false; k--;
                        G10b.Visible = false; k--;


                        if (ds.Tables[0].Rows[j]["B6_other_7"].ToString() == "")
                        {

                            B6.Visible = false; k--;
                            //B6_O.Enabled = false;
                            //B6_T.Enabled = false;
                        }
                        else if (Other_CodeCheck("B6", Key_) > 0)
                        {
                            B6.Visible = false; k--;
                            //B6_O.Enabled = false;
                            //B6_T.Enabled = false;
                            i--;
                        }
                        else
                        {
                            myArrayList.Add("B6");
                            //B6_T.Enabled = false;
                            B6.Visible = true;
                            B6_Q.Enabled = true;
                            B6_O.Enabled = true;
                            DataSet ds_B6 = new DataSet();
                            B6_A.Text = ds.Tables[0].Rows[j]["B6_other_7"].ToString();
                            B6_A.ToolTip = ds.Tables[0].Rows[j]["B6_other_7"].ToString();
                            SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                            cmd2.Parameters.Add(new SqlParameter("@Question_Name", "B6"));
                            cmd2.CommandType = CommandType.StoredProcedure;
                            da = new SqlDataAdapter(cmd2);
                            da.Fill(ds_B6);
                            con.Open();
                            cmd2.ExecuteNonQuery();
                            con.Close();
                            B6_O.DataSource = ds_B6.Tables[0];
                            B6_O.DataTextField = ds_B6.Tables[0].Columns[6].ToString();
                            B6_O.DataValueField = ds_B6.Tables[0].Columns[7].ToString();
                            B6_O.DataBind();
                            B6_Q.Text = ds_B6.Tables[0].Rows[0]["Question"].ToString();
                            B6_Q.ToolTip = ds_B6.Tables[0].Rows[0]["Question"].ToString();
                        }

                        if (ds.Tables[0].Rows[j]["B7_other_7"].ToString() == "")
                        {

                            B7.Visible = false; k--;
                            //B7_O.Enabled = false;
                            //B7_T.Enabled = false;
                        }
                        else if (Other_CodeCheck("B7", Key_) > 0)
                        {
                            B7.Visible = false; k--;
                            //B7_O.Enabled = false;
                            //B7_T.Enabled = false;
                            i--;
                        }
                        else
                        {
                            try
                            {
                                //B7_T.Enabled = false;
                                B7.Visible = true;
                                B7_Q.Enabled = true;
                                B7_O.Enabled = true;
                                DataSet ds_B7 = new DataSet();
                                B7_A.Text = ds.Tables[0].Rows[j]["B7_other_7"].ToString();
                                B7_A.ToolTip = ds.Tables[0].Rows[j]["B7_other_7"].ToString();
                                SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                                cmd2.Parameters.Add(new SqlParameter("@Question_Name", "B7"));
                                cmd2.CommandType = CommandType.StoredProcedure;
                                da = new SqlDataAdapter(cmd2);
                                da.Fill(ds_B7);
                                con.Open();
                                cmd2.ExecuteNonQuery();
                                con.Close();
                                B7_O.DataSource = ds_B7.Tables[0];
                                B7_O.DataTextField = ds_B7.Tables[0].Columns[6].ToString();
                                B7_O.DataValueField = ds_B7.Tables[0].Columns[7].ToString();
                                B7_O.DataBind();
                                B7_Q.Text = ds_B7.Tables[0].Rows[0]["Question"].ToString();
                                B7_Q.ToolTip = ds_B7.Tables[0].Rows[0]["Question"].ToString();
                            }
                            catch (Exception ex) {
                                Response.Write("<script>alert('Data not found error')</script>");
                            }
                            myArrayList.Add("B7");
                          
                        }

                        //K++; for logic of B25 as appreaing two times with same variable
                        k++;
                        if (ds.Tables[0].Rows[j]["B25a_other_8"].ToString() == "") //b25a_other_8 = "asdfasdf" 
                        {

                            B25.Visible = false; k--;
                            //B25_O.Enabled = false;
                            //B25_T.Enabled = false;
                        }
                        else if (Other_CodeCheck("B25", Key_) > 0) //coded already
                        {
                            B25.Visible = false; k--;
                            //B25_O.Enabled = false;
                            //B25_T.Enabled = false;
                            i--;
                        }
                        else                                 //to code to visitble
                        {
                            myArrayList.Add("B25");
                            //B25_T.Enabled = false;
                            B25.Visible = true;
                            B25_Q.Enabled = true;
                            B25_O.Enabled = true;
                            DataSet ds_B25 = new DataSet();
                            B25_A.Text = ds.Tables[0].Rows[j]["B25a_other_8"].ToString();
                            B25_A.ToolTip = ds.Tables[0].Rows[j]["B25a_other_8"].ToString();
                            SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                            cmd2.Parameters.Add(new SqlParameter("@Question_Name", "B25"));
                            cmd2.CommandType = CommandType.StoredProcedure;
                            da = new SqlDataAdapter(cmd2);
                            da.Fill(ds_B25);
                            con.Open();
                            cmd2.ExecuteNonQuery();
                            con.Close();
                            B25_O.DataSource = ds_B25.Tables[0];
                            B25_O.DataTextField = ds_B25.Tables[0].Columns[6].ToString();
                            B25_O.DataValueField = ds_B25.Tables[0].Columns[7].ToString();
                            B25_O.DataBind();
                            B25_Q.Text = ds_B25.Tables[0].Rows[0]["Question"].ToString();
                            B25_Q.ToolTip = ds_B25.Tables[0].Rows[0]["Question"].ToString();
                        }

                        if (ds.Tables[0].Rows[j]["B25b_other_8"].ToString() == "")      //no data in 25b
                        {
                            if (ds.Tables[0].Rows[j]["B25a_other_8"].ToString() == "")
                            {
                                B25.Visible = false; k--;
                                //B25_O.Enabled = false;
                                //B25_T.Enabled = false;
                            }
                          
                        }
                        else if (Other_CodeCheck("B25", Key_) > 0)
                        {
                            B25.Visible = false; k--;
                            //B25_O.Enabled = false;
                            //B25_T.Enabled = false;
                            i--;
                        }
                        else
                        {
                            myArrayList.Add("B25");
                            //B25_T.Enabled = false;
                            B25.Visible = true;
                            B25_Q.Enabled = true;
                            B25_O.Enabled = true;
                            DataSet ds_B25 = new DataSet();
                            B25_A.Text = ds.Tables[0].Rows[j]["B25b_other_8"].ToString();
                            B25_A.ToolTip = ds.Tables[0].Rows[j]["B25b_other_8"].ToString();
                            SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                            cmd2.Parameters.Add(new SqlParameter("@Question_Name", "B25"));
                            cmd2.CommandType = CommandType.StoredProcedure;
                            da = new SqlDataAdapter(cmd2);
                            da.Fill(ds_B25);
                            con.Open();
                            cmd2.ExecuteNonQuery();
                            con.Close();
                            B25_O.DataSource = ds_B25.Tables[0];
                            B25_O.DataTextField = ds_B25.Tables[0].Columns[6].ToString();
                            B25_O.DataValueField = ds_B25.Tables[0].Columns[7].ToString();
                            B25_O.DataBind();
                            B25_Q.Text = ds_B25.Tables[0].Rows[0]["Question"].ToString();
                            B25_Q.ToolTip = ds_B25.Tables[0].Rows[0]["Question"].ToString();
                        }

                    if (ds.Tables[0].Rows[j]["B18_other_8"].ToString() == "" )
                    {
                        B18.Visible = false; k--;
                        //B18_O.Enabled = false;
                        //B18_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("B18", Key_) > 0)
                    {
                        B18.Visible = false; k--;
                        //B18_O.Enabled = false;
                        //B18_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("B18");
                        //B18_T.Enabled = false;
                        B18.Visible = true;
                        B18_Q.Enabled = true;
                        B18_O.Enabled = true;
                        DataSet ds_B18 = new DataSet();
                        B18_A.Text = ds.Tables[0].Rows[j]["B18_other_8"].ToString();
                        B18_A.ToolTip = ds.Tables[0].Rows[j]["B18_other_8"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "B18"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_B18);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        B18_O.DataSource = ds_B18.Tables[0];
                        B18_O.DataTextField = ds_B18.Tables[0].Columns[6].ToString();
                        B18_O.DataValueField = ds_B18.Tables[0].Columns[7].ToString();
                        B18_O.DataBind();
                        B18_Q.Text = ds_B18.Tables[0].Rows[0]["Question"].ToString();
                        B18_Q.ToolTip = ds_B18.Tables[0].Rows[0]["Question"].ToString();
                    }
                    if (ds.Tables[0].Rows[j]["B22_8"].ToString() != "94")
                    {
                       // B18.Visible = false; k--;
                        B22.Visible = false; k--;
                        //B22_O.Enabled = false;
                        //B22_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("B22", Key_) > 0)
                    {
                        B22.Visible = false; k--;
                        //B22_O.Enabled = false;
                        //B22_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("B22");
                        //B22_T.Enabled = false;
                        B22.Visible = true;
                        B22_Q.Enabled = true;
                        B22_O.Enabled = true;
                        DataSet ds_B22 = new DataSet();
                        B22_A.Text = ds.Tables[0].Rows[j]["B22_other_8"].ToString();
                        B22_A.ToolTip = ds.Tables[0].Rows[j]["B22_other_8"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "B22"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_B22);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        B22_O.DataSource = ds_B22.Tables[0];
                        B22_O.DataTextField = ds_B22.Tables[0].Columns[6].ToString();
                        B22_O.DataValueField = ds_B22.Tables[0].Columns[7].ToString();
                        B22_O.DataBind();
                        B22_Q.Text = ds_B22.Tables[0].Rows[0]["Question"].ToString();
                        B22_Q.ToolTip = ds_B22.Tables[0].Rows[0]["Question"].ToString();
                    }
                    if (ds.Tables[0].Rows[j]["B11_7"].ToString() != "94")
                    {
                       
                        B11.Visible = false; k--;
                        //B11_O.Enabled = false;
                        //B11_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("B11", Key_) > 0)
                    {
                        B11.Visible = false; k--;
                        //B11_O.Enabled = false;
                        //B11_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("B11");
                        //B11_T.Enabled = false;
                        B11.Visible = true;
                        B11_Q.Enabled = true;
                        B11_O.Enabled = true;
                        DataSet ds_B11 = new DataSet();
                        B11_A.Text = ds.Tables[0].Rows[j]["B11_DescribeOther"].ToString();
                        B11_A.ToolTip = ds.Tables[0].Rows[j]["B11_DescribeOther"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "B11"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_B11);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        B11_O.DataSource = ds_B11.Tables[0];
                        B11_O.DataTextField = ds_B11.Tables[0].Columns[6].ToString();
                        B11_O.DataValueField = ds_B11.Tables[0].Columns[7].ToString();
                        B11_O.DataBind();
                        B11_Q.Text = ds_B11.Tables[0].Rows[0]["Question"].ToString();
                        B11_Q.ToolTip = ds_B11.Tables[0].Rows[0]["Question"].ToString();
                    }
                    if (ds.Tables[0].Rows[j]["B14_Other_8"].ToString() == "0" || ds.Tables[0].Rows[j]["B14_Other_8"].ToString() == "")
                    {
                       
                        B14.Visible = false; k--;
                        //B14_O.Enabled = false;
                        //B14_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("B14", Key_) > 0)
                    {
                        B14.Visible = false; k--;
                        //B14_O.Enabled = false;
                        //B14_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("B14");
                        //B14_T.Enabled = false;
                        B14.Visible = true;
                        B14_Q.Enabled = true;
                        B14_O.Enabled = true;
                        DataSet ds_B14 = new DataSet();
                        B14_A.Text = ds.Tables[0].Rows[j]["B14_DescribeOther"].ToString();
                        B14_A.ToolTip = ds.Tables[0].Rows[j]["B14_DescribeOther"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "B14"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_B14);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        B14_O.DataSource = ds_B14.Tables[0];
                        B14_O.DataTextField = ds_B14.Tables[0].Columns[6].ToString();
                        B14_O.DataValueField = ds_B14.Tables[0].Columns[7].ToString();
                        B14_O.DataBind();
                        B14_Q.Text = ds_B14.Tables[0].Rows[0]["Question"].ToString();
                        B14_Q.ToolTip = ds_B14.Tables[0].Rows[0]["Question"].ToString();
                    }
                    if (ds.Tables[0].Rows[j]["B19_8_13_OTHER"].ToString() == "")
                    {
                        
                        B19.Visible = false; k--;
                        //B19_O.Enabled = false;
                        //B19_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("B19", Key_) > 0)
                    {
                        B19.Visible = false; k--;
                        //B19_O.Enabled = false;
                        //B19_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("B19");
                        //B19_T.Enabled = false;
                        B19.Visible = true;
                        B19_Q.Enabled = true;
                        B19_O.Enabled = true;
                        DataSet ds_B19 = new DataSet();
                        B19_A.Text = ds.Tables[0].Rows[j]["B19_8_13_OTHER"].ToString();
                        B19_A.ToolTip = ds.Tables[0].Rows[j]["B19_8_13_OTHER"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "B19"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_B19);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        B19_O.DataSource = ds_B19.Tables[0];
                        B19_O.DataTextField = ds_B19.Tables[0].Columns[6].ToString();
                        B19_O.DataValueField = ds_B19.Tables[0].Columns[7].ToString();
                        B19_O.DataBind();
                        B19_Q.Text = ds_B19.Tables[0].Rows[0]["Question"].ToString();
                        B19_Q.ToolTip = ds_B19.Tables[0].Rows[0]["Question"].ToString();
                    }
                    if (ds.Tables[0].Rows[j]["B23_8_e"].ToString() != "e")
                    {
                        
                        B23.Visible = false; k--;
                        //B23_O.Enabled = false;
                        //B23_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("B23", Key_) > 0)
                    {
                        B23.Visible = false; k--;
                        //B23_O.Enabled = false;
                        //B23_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("B23");
                        //B23_T.Enabled = false;
                        B23.Visible = true;
                        B23_Q.Enabled = true;
                        B23_O.Enabled = true;
                        DataSet ds_B23 = new DataSet();
                        B23_A.Text = ds.Tables[0].Rows[j]["B23_Other_8"].ToString();
                        B23_A.ToolTip = ds.Tables[0].Rows[j]["B23_Other_8"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "B23"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_B23);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        B23_O.DataSource = ds_B23.Tables[0];
                        B23_O.DataTextField = ds_B23.Tables[0].Columns[6].ToString();
                        B23_O.DataValueField = ds_B23.Tables[0].Columns[7].ToString();
                        B23_O.DataBind();
                        B23_Q.Text = ds_B23.Tables[0].Rows[0]["Question"].ToString();
                        B23_Q.ToolTip = ds_B23.Tables[0].Rows[0]["Question"].ToString();
                    }
                   if (ds.Tables[0].Rows[j]["B20_8_13"].ToString() != "1")
                    {
                       
                        B20.Visible = false; k--;
                        //B20_O.Enabled = false;
                        //B20_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("B20", Key_) > 0)
                    {
                        B20.Visible = false; k--;
                        //B20_O.Enabled = false;
                        //B20_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("B20");
                        //B20_T.Enabled = false;
                        B20.Visible = true;
                        B20_Q.Enabled = true;
                        B20_O.Enabled = true;
                        DataSet ds_B20 = new DataSet();
                        B20_A.Text = ds.Tables[0].Rows[j]["B20_8_13_other"].ToString();
                        B20_A.ToolTip = ds.Tables[0].Rows[j]["B20_8_13_other"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "B20"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_B20);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        B20_O.DataSource = ds_B20.Tables[0];
                        B20_O.DataTextField = ds_B20.Tables[0].Columns[6].ToString();
                        B20_O.DataValueField = ds_B20.Tables[0].Columns[7].ToString();
                        B20_O.DataBind();
                        B20_Q.Text = ds_B20.Tables[0].Rows[0]["Question"].ToString();
                        B20_Q.ToolTip = ds_B20.Tables[0].Rows[0]["Question"].ToString();
                    }
                    if (ds.Tables[0].Rows[j]["B1a_7"].ToString() != "94")
                    {
                        
                        B1a.Visible = false; k--;
                        //B1a_O.Enabled = false;
                        //B1a_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("B1a", Key_) > 0)
                    {
                        B1a.Visible = false; k--;
                        //B1a_O.Enabled = false;
                        //B1a_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("B1a");
                        //B1a_T.Enabled = false;
                        B1a.Visible = true;
                        B1a_Q.Enabled = true;
                        B1a_O.Enabled = true;
                        DataSet ds_B1a = new DataSet();
                        B1a_A.Text = ds.Tables[0].Rows[j]["B1a_other_7"].ToString();
                        B1a_A.ToolTip = ds.Tables[0].Rows[j]["B1a_other_7"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "B1a"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_B1a);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        B1a_O.DataSource = ds_B1a.Tables[0];
                        B1a_O.DataTextField = ds_B1a.Tables[0].Columns[6].ToString();
                        B1a_O.DataValueField = ds_B1a.Tables[0].Columns[7].ToString();
                        B1a_O.DataBind();
                        B1a_Q.Text = ds_B1a.Tables[0].Rows[0]["Question"].ToString();
                        B1a_Q.ToolTip = ds_B1a.Tables[0].Rows[0]["Question"].ToString();
                    }
                    if (ds.Tables[0].Rows[j]["B1b_7"].ToString() != "94")
                    {
                       
                        B1b.Visible = false; k--;
                        //B1b_O.Enabled = false;
                        //B1b_T.Enabled = false;
                    }
                    else if (Other_CodeCheck("B1b", Key_) > 0)
                    {
                        B1b.Visible = false; k--;
                        //B1b_O.Enabled = false;
                        //B1b_T.Enabled = false;
                        i--;
                    }
                    else
                    {
                        myArrayList.Add("B1b");
                        //B1b_T.Enabled = false;
                        B1b.Visible = true;
                        B1b_Q.Enabled = true;
                        B1b_O.Enabled = true;
                        DataSet ds_B1b = new DataSet();
                        B1b_A.Text = ds.Tables[0].Rows[j]["B1b_other_7"].ToString();
                        B1b_A.ToolTip = ds.Tables[0].Rows[j]["B1b_other_7"].ToString();
                        SqlCommand cmd2 = new SqlCommand("Others_OptionsLoad", con);
                        cmd2.Parameters.Add(new SqlParameter("@Question_Name", "B1b"));
                        cmd2.CommandType = CommandType.StoredProcedure;
                        da = new SqlDataAdapter(cmd2);
                        da.Fill(ds_B1b);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        B1b_O.DataSource = ds_B1b.Tables[0];
                        B1b_O.DataTextField = ds_B1b.Tables[0].Columns[6].ToString();
                        B1b_O.DataValueField = ds_B1b.Tables[0].Columns[7].ToString();
                        B1b_O.DataBind();
                        B1b_Q.Text = ds_B1b.Tables[0].Rows[0]["Question"].ToString();
                        B1b_Q.ToolTip = ds_B1b.Tables[0].Rows[0]["Question"].ToString();
                    }
                    }
                    
                   // Label1.Text = k.ToString();
                } 
                while (k==0);
                logtext = logtext + "\n" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff") + "---Action----- Key_" + "----Procedure & values---- " + ds.Tables[0].Rows[j]["KEY_"].ToString() + "---User :--- " + Session["userID"].ToString();

                LogBase.logg(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), logtext);

                string logtext1 = "";
                using (SqlConnection connection = new SqlConnection(conn))
                {
                    connection.Open();
                    using (SqlCommand command = connection.CreateCommand())
                    {
                        
                        command.CommandText = "INSERT INTO others_readstamp(KEY_) VALUES(@param1)";

                        command.Parameters.AddWithValue("@param1", ds.Tables[0].Rows[j]["KEY_"].ToString());

                        command.ExecuteNonQuery();
                        logtext1 = logtext1 + "\n" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff") + "---Action----- readtimestamp" + "----Procedure & values---- " + command.CommandText.ToString() + "---User :--- " + Session["userID"].ToString();

                        LogBase.logg(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), logtext1);

                    }
                }
                if (ds.Tables[0].Rows.Count > 0)
                {
                    int l = j;
                    if(l==ds.Tables[0].Rows.Count)
                        Response.Redirect("coder.aspx?finished=1");
                    Label1.Text = ds.Tables[0].Rows[j]["KEY_"].ToString();
                    //Label1.Text = myArrayList[0].ToString();
                }
                else
                {
                    Response.Redirect("coder.aspx?finished=1");
                }

                activeFields.Value = string.Join(",", myArrayList.ToArray());
                indexid.Value = j.ToString();
            }
        }
        public Int32 Other_CodeCheck(string Question, string Key)
        {
            DataSet dsCheck = new DataSet();
                con.ConnectionString = @conn;
                SqlCommand cmd = new SqlCommand("Other_Check", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@QuestionName", Question));
                cmd.Parameters.Add(new SqlParameter("@key_", Key));
                 da = new SqlDataAdapter(cmd);
                da.Fill(dsCheck);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                return Convert.ToInt32(dsCheck.Tables[0].Rows[0][0].ToString());
                    
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            string logtext = "";
            bool error = true;
            var array = activeFields.Value.Split(',');
            Int32 j = Convert.ToInt32(indexid.Value);
            j++;
            foreach (object obj in array)
            {
                 string OptionField = obj.ToString() + "_O";
                 string TranslationField = obj.ToString() + "_T";
                 if(Request.Form[OptionField]== null)
                 {
                     error = false;
                 }
                if(Request.Form[OptionField]== "94" && Request.Form[TranslationField]=="")
                {
                    error = false;
                }
            }

      

                if (error)
                {
                    foreach (object obj in array)
                    {
                        string QuestionField = obj.ToString();
                        string OptionField = obj.ToString() + "_O";
                        string AnswerField = obj.ToString() + "_A";
                        string TranslationField = obj.ToString() + "_T";
                        var ans = this.FindControl(AnswerField) as TextBox;
                        ans.Enabled = true;
                        string origg = ans.ToolTip.ToString();
                        string translation = Request.Form[TranslationField];
                        string answer = Request.Form[AnswerField];
                        if (translation == null)
                            translation = "";
                        if (answer == null)
                            answer = "";
                        if (ans == null)
                            origg = "";
                        //to alter the key for hh level 
                        string type = Request["type"];
                        string key__ = Label1.Text;
                        string level = "Individual Level";
                        if (type == "1")
                        {
                            key__ = key__ + "-1";
                            level = "HH Level";
                        }


                        con.ConnectionString = @conn;
                        string option = Request.Form[OptionField];
                        SqlCommand cmd2 = new SqlCommand("save_others", con);
                        cmd2.CommandType = CommandType.StoredProcedure;
                        cmd2.Parameters.Add(new SqlParameter("@User_Id", Session["userID"]));
                        cmd2.Parameters.Add(new SqlParameter("@QuestionName", QuestionField));
                        cmd2.Parameters.Add(new SqlParameter("@Val", Request.Form[OptionField]));
                        cmd2.Parameters.Add(new SqlParameter("@Tra", translation));
                        cmd2.Parameters.Add(new SqlParameter("@Key_", key__));
                        cmd2.Parameters.Add(new SqlParameter("@level", level));
                        cmd2.Parameters.Add(new SqlParameter("@Orig", origg));
                        da = new SqlDataAdapter(cmd2);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        logtext = logtext + "\n" + LogBase.logging(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), "Insertother", cmd2, Session["userID"].ToString());



                        Response.Write("<script>window.location='others_recoding.aspx?type=" + Request["type"] + "';</script>"); //j="+j+"';</script>");

                    }
                    LogBase.logg(Server.MapPath("~/" + DateTime.Now.ToString("d MMM yyyy") + ".txt").ToString(), logtext);


                }
                else
                {
                    Response.Write("<script>alert('Code Not Saved! You have entered one or more wrong codes');</script>");
                    Response.Write("<script>window.location='others_recoding.aspx?type=" + Request["type"] + "';</script>");
                }
        }
       
    }
}