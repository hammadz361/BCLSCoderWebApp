using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoderWebApplication
{
    public partial class report_grid : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        DataSet ds1 = new DataSet();
        DataSet ds8 = new DataSet();
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
           
           
                StringBuilder htmlTable = new StringBuilder();
                StringBuilder htmlTable2 = new StringBuilder();
                StringBuilder htmlTable3 = new StringBuilder();
                //con.ConnectionString = @conn;
                con.ConnectionString = @conn;
                string ReportID=Request["id"];
                string Procedure_Name = "";
                if(ReportID=="1")
                {
                    Procedure_Name = "Report_CoderApp_QuestionWise";
                    Label1.Text = "Question Wise Coding Percentage";
                    CodeWise.Visible = false;
                    CrossTab.Visible = false;
                    TextReview.Visible = false;
                    Others.Visible = false;
                    Progress.Visible = false;
                }
                if (ReportID == "2" || ReportID == "3" || ReportID == "4" || ReportID == "14" || ReportID == "15" || ReportID == "16" || ReportID == "111" || ReportID == "106" || ReportID == "107" || ReportID == "108" || ReportID == "109" || ReportID == "110" || ReportID == "178")
            {
                    Procedure_Name = "Report_CoderApp_CodeWise";

                    Label1.Text = "Code Wise Coding Percentage";
                    CrossTab.Visible = false;
                    TextReview.Visible = false;
                    Others.Visible = false;
                    Progress.Visible = false;
                }
               
                if (ReportID == "9" || ReportID == "10" || ReportID == "11")
                {
                    Procedure_Name = "Report_CodersApp_Text_Review";
                    if(ReportID=="9")
                    Label1.Text = "Text Review/MisMatch Report - Industries";
                if (ReportID == "10")
                    Label1.Text = "Text Review/MisMatch Report - Occupations";
                if (ReportID == "11")
                    Label1.Text = "Text Review/MisMatch Report - Tools";
                CodeWise.Visible = false;
                    CrossTab.Visible = false;
                    Progress.Visible = false;
                    Others.Visible = false;
                }
               
                if ( ReportID == "18" || ReportID == "19")
                {
                    Procedure_Name = "Report_Progress_Coding";
                
                if (ReportID == "18")
                    Label1.Text = "Progress Report - Text Unclear/Mismatch Coder";
                if (ReportID == "19")
                    Label1.Text = "Progress Report - Text Unclear/Mismatch Enumerator";
                    CodeWise.Visible = false;
                    CrossTab.Visible = false;
                    TextReview.Visible = false;
                    Others.Visible = false;
                }
                if (ReportID == "12")
                {
                    Procedure_Name = "Report_Others";
                    Label1.Text = "Others Report";
                    CodeWise.Visible = false;
                    CrossTab.Visible = false;
                    TextReview.Visible = false;
                    Progress.Visible = false;
                }
                if (ReportID == "13")
                {
                    Procedure_Name = "Report_OthersCount";
                    Label1.Text = "Others Report";
                    CodeWise.Visible = false;
                    CrossTab.Visible = false;
                    TextReview.Visible = false;
                    Progress.Visible = false;
                }
                if (ReportID == "133")
                {
                    Procedure_Name = "CODER_PERFORMANCE_OTHERS"; //Procedure_Name = "Other_Coding";
                    Label1.Text = "Others Performance Report";
                    CodeWise.Visible = false;
                    CrossTab.Visible = false;
                    TextReview.Visible = false;
                    Progress.Visible = false;
                }
                if (ReportID == "144")
                {
                    Procedure_Name =  "Other_Coding";
                    Label1.Text = "Others Report";
                    CodeWise.Visible = false;
                    CrossTab.Visible = false;
                    TextReview.Visible = false;
                    Progress.Visible = false;
                }
                if(ReportID=="2")
                        Label1.Text += " - Industries Codes - Class";
                if (ReportID == "3")
                        Label1.Text += " - Occupations Codes - Unit";
                if (ReportID == "4")
                        Label1.Text += " - Tools Codes - Unit";
                SqlCommand cmd = new SqlCommand(Procedure_Name, con);
                cmd.CommandType = CommandType.StoredProcedure;
                if(ReportID=="2" || ReportID== "9" || ReportID.ToString() == "17")
                    cmd.Parameters.Add(new SqlParameter("@type", "1"));
                if (ReportID == "3" || ReportID == "10" || ReportID == "18")
                    cmd.Parameters.Add(new SqlParameter("@type", "2"));
                if (ReportID == "4" || ReportID == "11" || ReportID == "19")
                    cmd.Parameters.Add(new SqlParameter("@type", "3"));
                if (ReportID == "177")
                {
                    Label1.Text = "Progress Report - Master-Coder Performance";
                    CodeWise.Visible = false;
                    CrossTab.Visible = false;
                    TextReview.Visible = false;
                    Others.Visible = false;
                    cmd = new SqlCommand("SELECT * FROM [Master_Coder_Performance]", con);
                    cmd.CommandType = CommandType.Text;
                }
                if (ReportID == "178")
                {
                    Label1.Text = "Partial/Pending Entries Report";
                    CodeWise.Visible = false;
                    CrossTab.Visible = false;
                    TextReview.Visible = false;
                    Others.Visible = false;
                    cmd = new SqlCommand("SELECT * FROM [Partial_Report]", con);
                    cmd.CommandType = CommandType.Text;
                }
                if (ReportID == "17")
                {
                    Label1.Text = "Progress Report - Coder Performance";
                    CodeWise.Visible = false;
                    CrossTab.Visible = false;
                    TextReview.Visible = false;
                    Others.Visible = false;
                    cmd = new SqlCommand("SELECT * FROM [Coder_Performance]", con);
                    cmd.CommandType = CommandType.Text;
                }
            if (ReportID == "14")
            {
                Label1.Text += " - Industries Codes - Sections";
                cmd.Parameters.Add(new SqlParameter("@type", "4"));
            }
            if (ReportID == "111")
            {
                Label1.Text += " - Industries Codes - Sections (Excluding Unclear Text)";
                cmd.Parameters.Add(new SqlParameter("@type", "7"));
            }
            if (ReportID == "106")
            {
                Label1.Text += " - Industries Codes - Class (Excluding Unclear Text)";
                cmd.Parameters.Add(new SqlParameter("@type", "8"));
            }
            if (ReportID == "107")
            {
                Label1.Text += "  - Occupation Codes - Major (Excluding Unclear Text)";
                cmd.Parameters.Add(new SqlParameter("@type", "9"));
            }
            if (ReportID == "108")
            {
                Label1.Text += "  - Occupation Codes - Unit (Excluding Unclear Text)";
                cmd.Parameters.Add(new SqlParameter("@type", "10"));
            }
            if (ReportID == "109")
            {
                Label1.Text += "  - Tools Codes - Major (Excluding Unclear Text)";
                cmd.Parameters.Add(new SqlParameter("@type", "11"));
            }
            if (ReportID == "110")
            {
                Label1.Text += "  - Tools Codes - Unit (Excluding Unclear Text)";
                cmd.Parameters.Add(new SqlParameter("@type", "12"));
            }
            if (ReportID == "15")
            {
                Label1.Text += " - Occupation Codes - Major";
                cmd.Parameters.Add(new SqlParameter("@type", "5"));
            }
            if (ReportID == "16")
            {
                Label1.Text += " - Tools Codes - Major";
                cmd.Parameters.Add(new SqlParameter("@type", "6"));
            }
                if (ReportID == "5")
                    cmd.Parameters.Add(new SqlParameter("@type", "industry_vs_occupation"));
                if (ReportID == "5")
                {
                 //   Procedure_Name = "Report_CrossTab";
                    Label1.Text = "Cross Tab Report (Overall)";
                    CodeWise.Visible = false;
                    TextReview.Visible = false;
                    Others.Visible = false;
                    CrossTab.Visible = true;
                    Progress.Visible = false;
                    cmd = new SqlCommand("SELECT * FROM Overall_CrossTab", con);
                    cmd.CommandType = CommandType.Text;
                }
            if (ReportID == "105")
            {
                //   Procedure_Name = "Report_CrossTab";
                Label1.Text = "Cross Tab Report (Overall Excluding Unclear Text)";
                CodeWise.Visible = false;
                TextReview.Visible = false;
                Others.Visible = false;
                CrossTab.Visible = true;
                Progress.Visible = false;
                cmd = new SqlCommand("SELECT * FROM Overall_CrossTab_NoUnlcear", con);
                cmd.CommandType = CommandType.Text;
            }
            if (ReportID == "6")
            {
                //   Procedure_Name = "Report_CrossTab";
                Label1.Text = "Cross Tab Report (Row Wise)";
                CodeWise.Visible = false;
                TextReview.Visible = false;
                Others.Visible = false;
                CrossTab.Visible = true;
                Progress.Visible = false;
                cmd = new SqlCommand("SELECT * FROM RowWise_CrossTab", con);
                cmd.CommandType = CommandType.Text;
            }
            if (ReportID == "102")
            {
                //   Procedure_Name = "Report_CrossTab";
                Label1.Text = "Cross Tab Report (Column Wise)";
                CodeWise.Visible = false;
                TextReview.Visible = false;
                Others.Visible = false;
                CrossTab.Visible = true;
                Progress.Visible = false;
                cmd = new SqlCommand("SELECT * FROM ColumnWise_CrossTab", con);
                cmd.CommandType = CommandType.Text;
            }
            if (ReportID == "103")
            {
                //   Procedure_Name = "Report_CrossTab";
                Label1.Text = "Cross Tab Report (Row Wise Excluding Unclear Text)";
                CodeWise.Visible = false;
                TextReview.Visible = false;
                Others.Visible = false;
                CrossTab.Visible = true;
                Progress.Visible = false;
                cmd = new SqlCommand("SELECT * FROM RowWise_CrossTab_NoUnlcear", con);
                cmd.CommandType = CommandType.Text;
            }
            if (ReportID == "104")
            {
                //   Procedure_Name = "Report_CrossTab";
                Label1.Text = "Cross Tab Report (Column Wise Excluding Unclear Text)";
                CodeWise.Visible = false;
                TextReview.Visible = false;
                Others.Visible = false;
                CrossTab.Visible = true;
                Progress.Visible = false;
                cmd = new SqlCommand("SELECT * FROM ColumnWise_CrossTab_NoUnclear", con);
                cmd.CommandType = CommandType.Text;
            }
            da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                dt = ds.Tables[0];
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            if (!object.Equals(ds.Tables[0], null))
            {
                if (ds.Tables[0].Rows.Count > 1)
                {
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    if (ReportID == "14" || ReportID == "15" || ReportID == "106" || ReportID == "108")
                    {
                        Int32 total1 = dt.AsEnumerable().Sum(row => row.Field<Int32?>("Count") ?? 0);
                        GridView1.FooterRow.Font.Bold = true;
                        GridView1.FooterRow.Cells[1].Text = total1.ToString();
                        GridView1.FooterRow.Cells[0].HorizontalAlign = HorizontalAlign.Center;
                        GridView1.FooterRow.Cells[0].HorizontalAlign = HorizontalAlign.Center;
                        GridView1.FooterRow.Cells[0].Text = "Total";
                    }
                    else if (ReportID == "2" || ReportID == "3" || ReportID == "111" || ReportID == "107")
                    {
                        Int32 total1 = dt.AsEnumerable().Sum(row => row.Field<Int32?>("Count") ?? 0);
                        GridView1.FooterRow.Font.Bold = true;
                        GridView1.FooterRow.Cells[0].ColumnSpan = 2;
                        GridView1.FooterRow.Cells[1].Text = total1.ToString();
                        GridView1.FooterRow.Cells[0].HorizontalAlign = HorizontalAlign.Center;
                        GridView1.FooterRow.Cells[0].HorizontalAlign = HorizontalAlign.Center;
                        GridView1.FooterRow.Cells[0].Text = "Total";
                    }
                }
            }


        }
        public string code_load(string code, string type)
        {
            con.ConnectionString = @conn;
            SqlCommand cmd15 = new SqlCommand("code_load", con);
            cmd15.CommandType = CommandType.StoredProcedure;
            cmd15.Parameters.Add(new SqlParameter("@type", type));
            cmd15.Parameters.Add(new SqlParameter("@grouplevel", "9"));
            cmd15.Parameters.Add(new SqlParameter("@id", code));
            da = new SqlDataAdapter(cmd15);
            ds8.Clear();
            da.Fill(ds8);
            con.Open();
            cmd15.ExecuteNonQuery();
            con.Close();
            if (ds8.Tables[0].Rows.Count == 0)
            {
                return "0";
            }
            else
                return ds8.Tables[0].Rows[0]["Unit Group"].ToString();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            String ReportID = Request["id"];
            if (ReportID == "13")
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    float percentage = float.Parse(e.Row.Cells[3].Text);

                    foreach (TableCell cell in e.Row.Cells)
                    {
                        if (percentage > 10)
                        {
                            cell.BackColor = System.Drawing.Color.Red;
                        }
                    }
                }
            }
        }
        protected void ExportToCSV(string filename, object sender, EventArgs e)
        {
            //Get the data from database into datatable

            //            SqlCommand cmd = new SqlCommand(strQuery);
            //  DataTable dt = GetData();

            Response.Clear();
            Response.Buffer = true;

            Response.AddHeader("content-disposition",
                "attachment;filename=Export-"+filename+"-"+DateTime.Today+".csv");
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
                    //add separator
                    sb.Append(dt.Rows[i][k].ToString().Replace(",", ";").Replace("" + (char)13 + "", "").Replace("" + (char)10 + "", "").Replace("\n|\r", String.Empty) + ',');
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
            string table = Label1.Text;
            table = table.Trim();
            table=table.Replace(" ", "");
            Label1.Text = table;
            ExportToCSV(table, sender, e);
        }

    }
}