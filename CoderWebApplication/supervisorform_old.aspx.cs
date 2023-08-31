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
    public partial class WebFormsupervisorf : System.Web.UI.Page
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
                StringBuilder htmlTable = new StringBuilder();
                con.ConnectionString = @conn;
                SqlCommand cmd = new SqlCommand("load_coded", con);
                cmd.CommandType = CommandType.StoredProcedure;
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                SqlCommand cmd2 = new SqlCommand("code_load", con);
                cmd2.Parameters.Add(new SqlParameter("@type", "industries"));
                cmd2.Parameters.Add(new SqlParameter("@grouplevel", "1"));
                cmd2.Parameters.Add(new SqlParameter("@id", "0"));
                cmd2.CommandType = CommandType.StoredProcedure;
                da = new SqlDataAdapter(cmd2);
                da.Fill(ds1);
                SqlCommand cmd3 = new SqlCommand("code_load", con);
                cmd3.Parameters.Add(new SqlParameter("@type", "industries"));
                cmd3.Parameters.Add(new SqlParameter("@grouplevel", "1"));
                cmd3.Parameters.Add(new SqlParameter("@id", "0"));
                cmd3.CommandType = CommandType.StoredProcedure;
                da = new SqlDataAdapter(cmd3);
                da.Fill(ds2);
                SqlCommand cmd4 = new SqlCommand("code_load", con);
                cmd4.Parameters.Add(new SqlParameter("@type", "industries"));
                cmd4.Parameters.Add(new SqlParameter("@grouplevel", "1"));
                cmd4.Parameters.Add(new SqlParameter("@id", "0"));
                cmd4.CommandType = CommandType.StoredProcedure;
                da = new SqlDataAdapter(cmd4);
                da.Fill(ds3);
                SqlCommand cmd5 = new SqlCommand("code_load", con);
                cmd5.Parameters.Add(new SqlParameter("@type", "professions"));
                cmd5.Parameters.Add(new SqlParameter("@grouplevel", "1"));
                cmd5.Parameters.Add(new SqlParameter("@id", "0"));
                cmd5.CommandType = CommandType.StoredProcedure;
                da = new SqlDataAdapter(cmd5);
                da.Fill(ds4);
                SqlCommand cmd6 = new SqlCommand("code_load", con);
                cmd6.Parameters.Add(new SqlParameter("@type", "professions"));
                cmd6.Parameters.Add(new SqlParameter("@grouplevel", "1"));
                cmd6.Parameters.Add(new SqlParameter("@id", "0"));
                cmd6.CommandType = CommandType.StoredProcedure;
                da = new SqlDataAdapter(cmd6);
                da.Fill(ds5);
                SqlCommand cmd7 = new SqlCommand("code_load", con);
                cmd7.Parameters.Add(new SqlParameter("@type", "professions"));
                cmd7.Parameters.Add(new SqlParameter("@grouplevel", "1"));
                cmd7.Parameters.Add(new SqlParameter("@id", "0"));
                cmd7.CommandType = CommandType.StoredProcedure;
                da = new SqlDataAdapter(cmd7);
                da.Fill(ds6);
                SqlCommand cmd8 = new SqlCommand("code_load", con);
                cmd8.Parameters.Add(new SqlParameter("@type", "tools"));
                cmd8.Parameters.Add(new SqlParameter("@grouplevel", "1"));
                cmd8.Parameters.Add(new SqlParameter("@id", "0"));
                cmd8.CommandType = CommandType.StoredProcedure;
                da = new SqlDataAdapter(cmd8);
                da.Fill(ds7);
                con.Open();
                cmd.ExecuteNonQuery();
                cmd2.ExecuteNonQuery();
                cmd3.ExecuteNonQuery();
                cmd4.ExecuteNonQuery();
                cmd5.ExecuteNonQuery();
                cmd6.ExecuteNonQuery();
                cmd7.ExecuteNonQuery();
                cmd8.ExecuteNonQuery();
                con.Close();
                ListBox1_a.DataSource = ds1.Tables[0];
                ListBox1_a.DataTextField = ds1.Tables[0].Columns[1].ToString();
                ListBox1_a.DataValueField = ds1.Tables[0].Columns[0].ToString();
                ListBox1_a.DataBind();
                ListBox2_a.DataSource = ds2.Tables[0];
                ListBox2_a.DataTextField = ds2.Tables[0].Columns[1].ToString();
                ListBox2_a.DataValueField = ds2.Tables[0].Columns[0].ToString();
                ListBox2_a.DataBind();
                ListBox3_a.DataSource = ds3.Tables[0];
                ListBox3_a.DataTextField = ds3.Tables[0].Columns[1].ToString();
                ListBox3_a.DataValueField = ds3.Tables[0].Columns[0].ToString();
                ListBox3_a.DataBind();
                ListBox4_a.DataSource = ds4.Tables[0];
                ListBox4_a.DataTextField = ds4.Tables[0].Columns[1].ToString();
                ListBox4_a.DataValueField = ds4.Tables[0].Columns[0].ToString();
                ListBox4_a.DataBind();
                ListBox5_a.DataSource = ds5.Tables[0];
                ListBox5_a.DataTextField = ds5.Tables[0].Columns[1].ToString();
                ListBox5_a.DataValueField = ds5.Tables[0].Columns[0].ToString();
                ListBox5_a.DataBind();
                ListBox6_a.DataSource = ds6.Tables[0];
                ListBox6_a.DataTextField = ds6.Tables[0].Columns[1].ToString();
                ListBox6_a.DataValueField = ds6.Tables[0].Columns[0].ToString();
                ListBox6_a.DataBind();
                ListBox7_a.DataSource = ds7.Tables[0];
                ListBox7_a.DataTextField = ds7.Tables[0].Columns[1].ToString();
                ListBox7_a.DataValueField = ds7.Tables[0].Columns[0].ToString();
                ListBox7_a.DataBind();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Label1.Text = ds.Tables[0].Rows[0]["KEY_"].ToString();
                    Label2.Text = ds.Tables[0].Rows[0]["BatchID"].ToString();
                    TextBox1.Text = ds.Tables[0].Rows[0]["A22a_3"].ToString();
                    TextBox2.Text = ds.Tables[0].Rows[0]["A22b_3"].ToString();
                    TextBox3.Text = ds.Tables[0].Rows[0]["A44a_4"].ToString();
                    TextBox4.Text = ds.Tables[0].Rows[0]["A44b_4"].ToString();
                    TextBox5.Text = ds.Tables[0].Rows[0]["C21a_10"].ToString();
                    TextBox6.Text = ds.Tables[0].Rows[0]["C21b_10"].ToString();
                    TextBox7.Text = ds.Tables[0].Rows[0]["A21a_3"].ToString();
                    TextBox8.Text = ds.Tables[0].Rows[0]["A21a_3"].ToString();
                    TextBox9.Text = ds.Tables[0].Rows[0]["A43a_4"].ToString();
                    TextBox10.Text = ds.Tables[0].Rows[0]["A43b_4"].ToString();
                    TextBox11.Text = ds.Tables[0].Rows[0]["C20a_10"].ToString();
                    TextBox12.Text = ds.Tables[0].Rows[0]["C20b_10"].ToString();
                    TextBox13.Text = ds.Tables[0].Rows[0]["C38_1_11"].ToString();
                    TextBox14.Text = ds.Tables[0].Rows[0]["C38_2_11"].ToString();
                    TextBox15.Text = ds.Tables[0].Rows[0]["C38_2_11_2nd"].ToString();
                    TextBox16.Text = ds.Tables[0].Rows[0]["C38_3_11"].ToString();
                    TextBox17.Text = ds.Tables[0].Rows[0]["C38_3_11_2nd"].ToString();
                    HiddenFieldA22.Value = ds.Tables[0].Rows[0]["A22_CodedValue"].ToString();
                    HiddenFieldA44.Value = ds.Tables[0].Rows[0]["A44_CodedValue"].ToString();
                    HiddenFieldC21.Value = ds.Tables[0].Rows[0]["C21_CodedValue"].ToString();
                    HiddenFieldA21.Value = ds.Tables[0].Rows[0]["A21_CodedValue"].ToString();
                    HiddenFieldA43.Value = ds.Tables[0].Rows[0]["A43_CodedValue"].ToString();
                    HiddenFieldC20.Value = ds.Tables[0].Rows[0]["C20_CodedValue"].ToString();
                    HiddenFieldC38.Value = ds.Tables[0].Rows[0]["C38_CodedValue"].ToString();
                }
                else
                {
                    Response.Redirect("supervisor.aspx?nocodeleft=1");
                }
            }
            
        }
        public bool Code_check(string code)
        {
            con.ConnectionString = @conn;
            SqlCommand cmd = new SqlCommand("code_confirm", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@code", code));
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            if (ds.Tables[0].Rows[0]["Total"].ToString() == "0")
                return false;
            else
                return true;
        }
        public void BatchCompleteCheck(int BatchID)
        {
            con.ConnectionString = @conn;
            SqlCommand cmd = new SqlCommand("BatchCompleteCheck", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@batchID", BatchID));
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            bool error = false;
           if (TextBox24.Text!="" && (!Code_check(TextBox24.Text)))
            {
                error = true;
                Response.Write("<script>alert('Code Not Saved! Wrong Code for A22');</script>");
            }
             else if ((!Code_check(TextBox23.Text)) && TextBox23.Text != "")
            {
                error = true;
                Response.Write("<script>alert('Code Not Saved! Wrong Code for A44');</script>");
            }
            else  if ((!Code_check(TextBox22.Text)) && TextBox22.Text != "")
            {
                error = true;
                Response.Write("<script>alert('Code Not Saved! Wrong Code for C21');</script>");
            }
            
            if (error)
            {

            }
            else
            {
                con.ConnectionString = @conn;
                SqlCommand cmd2 = new SqlCommand("save_re_code", con);
                cmd2.CommandType = CommandType.StoredProcedure;
                cmd2.Parameters.Add(new SqlParameter("@user_id", Session["userID"]));
                cmd2.Parameters.Add(new SqlParameter("@a22_value", TextBox24.Text));
                cmd2.Parameters.Add(new SqlParameter("@a21_value", TextBox21.Text));
                cmd2.Parameters.Add(new SqlParameter("@a44_value", TextBox23.Text));
                cmd2.Parameters.Add(new SqlParameter("@a43_value", TextBox20.Text));
                cmd2.Parameters.Add(new SqlParameter("@c21_value", TextBox22.Text));
                cmd2.Parameters.Add(new SqlParameter("@c20_value", TextBox19.Text));
                cmd2.Parameters.Add(new SqlParameter("@c38_value", TextBox18.Text));
                cmd2.Parameters.Add(new SqlParameter("@batchID", Label2.Text));
                cmd2.Parameters.Add(new SqlParameter("@key_", Label1.Text));
                da = new SqlDataAdapter(cmd2);
                con.Open();
                cmd2.ExecuteNonQuery();
                con.Close();
                BatchCompleteCheck(Convert.ToInt32(Label2.Text));
                Response.Redirect("supervisor.aspx");
            }
        }
       
    }
}