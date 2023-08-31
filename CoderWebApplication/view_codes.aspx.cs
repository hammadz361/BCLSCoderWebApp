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
    public partial class WebFormViewCode : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        string conn = ConfigurationManager.ConnectionStrings["MyConnectionString"].ToString();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)(Session["LoggedIn"]) != "1")
            {
                Response.Redirect("login.aspx");
            }
            if ((string)(Session["userType"]) == "3")
            {
                Response.Redirect("login.aspx");
            }

            //if (!Page.IsPostBack)
            //{
                string Query = "";
                con.ConnectionString = @conn;
                if (Request["type"] == "Industries")
                {
                Label1.Text = "Industries - BatchID "+ Request["BatchID"];
                    Query = "SELECT * FROM [Codes_View_industries] WHERE BatchID='" + Request["BatchID"] + "'";
            }
                else if (Request["type"] == "Occupation")
                {
                Label1.Text = "Occupation - BatchID " + Request["BatchID"];
                Query = "SELECT * FROM [Codes_View_occupations] WHERE BatchID='" + Request["BatchID"] + "'";
            }
            else if (Request["type"] == "Occupations")
            {
                Label1.Text = "Occupation - BatchID " + Request["BatchID"];
                Query = "SELECT * FROM [Codes_View_occupations] WHERE BatchID='" + Request["BatchID"] + "'";
            }
            else if (Request["type"] == "Tools")
                {
                Label1.Text = "Tools - BatchID " + Request["BatchID"];
                Query = "SELECT * FROM [Codes_View_tools] WHERE BatchID='" + Request["BatchID"] + "'";
            }
            else if (Request["type"] == "allindustries")
            {
                Label1.Text = "All Industries";
                Query = "SELECT * FROM [All_Accepted_Industries]";
                CodeWise.Visible = true;

            }
            else if (Request["type"] == "alloccupations")
            {
                Label1.Text = "All Occupations";
                Query = "SELECT * FROM [All_Accepted_Occupations]";
                CodeWise.Visible = true;
            }
            else if (Request["type"] == "IndustriesReview")
            {
                Label1.Text = "IndustriesReview - BatchID " + Request["BatchID"];
                Query = "SELECT * FROM [occupation_codes] WHERE BatchID='" + Request["BatchID"] + "'";
            }
            else if (Request["type"] == "OccupationsReview")
            {
                Label1.Text = "OccupationReview - BatchID " + Request["BatchID"];
                Query = "SELECT * FROM [occupation_codes] WHERE BatchID='" + Request["BatchID"] + "'";
            }
            else if (Request["type"] == "ToolsReview")
            {
                Label1.Text = "ToolsReview - BatchID " + Request["BatchID"];
                Query = "SELECT * FROM [occupation_codes] WHERE BatchID='" + Request["BatchID"] + "'";
            }


            SqlCommand cmd2 = new SqlCommand(Query, con);
                cmd2.CommandType = CommandType.Text;
                da = new SqlDataAdapter(cmd2);
                da.Fill(ds);
                dt = ds.Tables[0];
                con.Open();
                cmd2.ExecuteNonQuery();
                con.Close();
                
                if (!object.Equals(ds.Tables[0], null))
                {
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }

           // }
        }
              

        protected void ExportToCSV(string filename, object sender, EventArgs e)
        {
            //Get the data from database into datatable

//            SqlCommand cmd = new SqlCommand(strQuery);
          //  DataTable dt = GetData();

            Response.Clear();
            Response.Buffer = true;

            Response.AddHeader("content-disposition",
                "attachment;filename=" + Request["BatchID"] + " - " + filename + " - " + DateTime.Now.ToString("o").Replace(':', '-') + ".csv");
            Response.Charset = "";
            Response.ContentType = "application/text";


            StringBuilder sb = new StringBuilder();
            for (int k = 0; k < dt.Columns.Count; k++)
            {
                //add separator
                sb.Append(dt.Columns[k].ColumnName + ',');
            }
            //append new line
            sb.Append("\r\n");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                for (int k = 0; k < dt.Columns.Count; k++)
                {
                    sb.Append('\t');
                    sb.Append(dt.Rows[i][k].ToString().Replace(",", ";")+',');
                    
                }
                //append new line
                sb.Append("\r\n");
            }
            Response.Output.Write(sb.ToString());
            Response.Flush();
            Response.End();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ExportToCSV("Codes", sender, e);
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //for(int i = 0; i < GridView1.Rows.Count; i++)
                //GridView1.Rows[i].Cells[5].Attributes.Add("style", "mso-number-format:@");
        }
    }
}