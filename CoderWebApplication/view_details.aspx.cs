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
    public partial class WebFormViewBatch : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        DataSet ds1 = new DataSet();
        DataSet ds8 = new DataSet();
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

            if (!Page.IsPostBack)
            {
                this.DataGrid();

            }
        }
        private void DataGrid()
        {
            string Query = "";
            con.ConnectionString = @conn;
            if (Request["type"] == "batches")
            {

                Query = "SELECT * FROM Batch_view WHERe Coder_ID='" + Request["id"] + "'";
            }
            else if(Request["type"] == "rejectedbatchesocc")
            {
                Label1.Text = "Occupation Rejected Batches";
                Query = "SELECT * From Rejection_view where Type = 'Occupation' ORDER BY [Review Date] DESC";
            }
            else if (Request["type"] == "acceptedbatchesocc")
            {
                Label1.Text = "Occupation Accepted Batches";
                Query = "SELECT * From Accepted_view where Type = 'Occupation' ORDER BY [Review Date] DESC";
            }
            else if (Request["type"] == "rejectedbatchesind")
            {
                Label1.Text = "Industries Rejected Batches";
                Query = "SELECT * From Rejection_view where Type = 'Industries' ORDER BY [Review Date] DESC";
            }
            else if (Request["type"] == "acceptedbatchesind")
            {
                Label1.Text = "Industries Accepted Batches";
                Query = "SELECT * From Accepted_view where Type = 'Industries' ORDER BY [Review Date] DESC";
            }
            else if (Request["type"] == "rejectedbatches")
            {
                Label1.Text = "Tools Rejected Batches";
                Query = "SELECT * From Rejection_view where Type = 'Tools' ORDER BY [Review Date] DESC";
            }
            else if (Request["type"] == "acceptedbatches")
            {
                Label1.Text = "Tools Accepted Batches";
                Query = "SELECT * From Accepted_view where Type = 'Tools' ORDER BY [Review Date] DESC";
            }
            else if (Request["type"] == "progressbatches")
            {
                Label1.Text = "In Progress Batches";
                Query = "SELECT * FROM Batch_inProgress_view";
            }
            else if (Request["type"] == "codedbatches")
            {
                Label1.Text = "Re Coding Awaiting Batches";
                Query = "SELECT * FROM Batch_Coded_view";
            }
            
            SqlCommand cmd2 = new SqlCommand(Query, con);
            cmd2.CommandType = CommandType.Text;
            da = new SqlDataAdapter(cmd2);
            da.Fill(ds);
            con.Open();
            cmd2.ExecuteNonQuery();
            con.Close();

            if (!object.Equals(ds.Tables[0], null))
            {
                GridView2.DataSource = ds;
                GridView2.DataBind();
            }
        }
        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            DataGrid();
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
           
        }
    }
}