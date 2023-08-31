using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.VisualBasic;
using CsvHelper;
namespace CoderWebApplication
{
    public partial class CorrectedText : System.Web.UI.Page
    {
        string output;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)(Session["LoggedIn"]) != "1")
            {
                Response.Redirect("login.aspx");
            }
            if ((string)(Session["userType"]) != "2")
            {
                Response.Redirect("login.aspx");
            }
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string folderPath = Server.MapPath(@"~/FilesUpload/");

                //Check whether Directory (Folder) exists.
                if (!Directory.Exists(folderPath))
                {
                    //If Directory (Folder) does not exists. Create it.
                    Directory.CreateDirectory(folderPath);
                }

                //Save the File to the Directory (Folder).
                FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
                CSVPRocess(Path.GetFileName(FileUpload1.FileName));
            }
        }
        public void CSVPRocess(string filename)
        {
          //  string type = "";
            string consString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            SqlConnection cont = new SqlConnection();
            cont.ConnectionString = @consString;
            DataTable dt = new DataTable();
            string substring = category.SelectedValue.ToString();
            if (substring == "Industries")
            {
             //   type = "Industries";
                dt.Columns.Add("hh_key", typeof(String));
                dt.Columns.Add("KEY_", typeof(String));
                dt.Columns.Add("cluster_code", typeof(String));
                dt.Columns.Add("SubmissionDate", typeof(String));
                dt.Columns.Add("coding_Date", typeof(String));
                dt.Columns.Add("district", typeof(String));
                dt.Columns.Add("G3_Supervisor_1_code", typeof(String));
                dt.Columns.Add("G3_Supervisor_1", typeof(String));
                dt.Columns.Add("G2_Interviewer_1_code", typeof(String));
                dt.Columns.Add("G2_Interviewer_1", typeof(String));
                dt.Columns.Add("CoderName", typeof(String));
                dt.Columns.Add("CodingBatchID", typeof(String));
                dt.Columns.Add("household_ID", typeof(String));
                dt.Columns.Add("address_of_household", typeof(String));
                dt.Columns.Add("PHONE_NUMBER_1", typeof(String));
                dt.Columns.Add("PHONE_NUMBER_2", typeof(String));
                dt.Columns.Add("A2_1", typeof(String));
                dt.Columns.Add("A22a_3", typeof(String));
                dt.Columns.Add("A22b_3", typeof(String));
                dt.Columns.Add("A22_CodedValue", typeof(String));
                dt.Columns.Add("Corrected_A22a_3", typeof(String));
                dt.Columns.Add("Corrected_A22b_3", typeof(String));
                dt.Columns.Add("A44a_4", typeof(String));
                dt.Columns.Add("A44b_4", typeof(String));
                dt.Columns.Add("A44_CodedValue", typeof(String));
                dt.Columns.Add("Corrected_A44a_4", typeof(String));
                dt.Columns.Add("Corrected_A44b_4", typeof(String));
                dt.Columns.Add("C21a_10", typeof(String));
                dt.Columns.Add("C21b_10", typeof(String));
                dt.Columns.Add("C21_CodedValue", typeof(String));
                dt.Columns.Add("Corrected_C21a_10", typeof(String));
                dt.Columns.Add("Corrected_C21b_10", typeof(String));
                dt.Columns.Add("Logical_Check", typeof(String));
                dt.Columns.Add("Telephone", typeof(String));
                dt.Columns.Add("Field", typeof(String));
                StreamReader sr = new StreamReader(Server.MapPath(@"~/FilesUpload/" + filename + ""));
                CsvReader csvread = new CsvReader(sr);
                csvread.Configuration.Delimiter = ",";
                csvread.Configuration.HeaderValidated = null;
                csvread.Configuration.MissingFieldFound = null;
                IEnumerable<TestRecord> record = csvread.GetRecords<TestRecord>();
                foreach (var rec in record) // Each record will be fetched and printed on the screen
                {

                    DataRow row = dt.NewRow();
                    row["hh_key"] = rec.hh_key;
                    row["KEY_"] = rec.KEY_;
                    row["cluster_code"] = rec.cluster_code;
                    row["SubmissionDate"] = rec.SubmissionDate;
                    row["coding_Date"] = rec.coding_Date;
                    row["district"] = rec.district;
                    row["G3_Supervisor_1_code"] = rec.G3_Supervisor_1_code;
                    row["G3_Supervisor_1"] = rec.G3_Supervisor_1;
                    row["G2_Interviewer_1_code"] = rec.G2_Interviewer_1_code;
                    row["G2_Interviewer_1"] = rec.G2_Interviewer_1;
                    row["CoderName"] = rec.CoderName;
                    row["CodingBatchID"] = rec.CodingBatchID;
                    row["household_ID"] = rec.household_ID;
                    row["address_of_household"] = rec.address_of_household;
                    row["PHONE_NUMBER_1"] = rec.PHONE_NUMBER_1;
                    row["PHONE_NUMBER_2"] = rec.PHONE_NUMBER_2;
                    row["A2_1"] = rec.A2_1;
                    row["A22a_3"] = rec.A22a_3;
                    row["A22b_3"] = rec.A22b_3;
                    row["A22_CodedValue"] = rec.A22_CodedValue;
                    row["Corrected_A22a_3"] = rec.Corrected_A22a_3;
                    row["Corrected_A22b_3"] = rec.Corrected_A22b_3;
                    row["A44a_4"] = rec.A44a_4;
                    row["A44b_4"] = rec.A44b_4;
                    row["A44_CodedValue"] = rec.A44_CodedValue;
                    row["Corrected_A44a_4"] = rec.Corrected_A44a_4;
                    row["Corrected_A44b_4"] = rec.Corrected_A44b_4;
                    row["C21a_10"] = rec.C21a_10;
                    row["C21b_10"] = rec.C21b_10;
                    row["C21_CodedValue"] = rec.C21_CodedValue;
                    row["Corrected_C21a_10"] = rec.Corrected_C21a_10;
                    row["Corrected_C21b_10"] = rec.Corrected_C21b_10;
                    row["Logical_Check"] = rec.Logical_Check;
                    row["Telephone"] = rec.Telephone;
                    row["Field"] = rec.Field;
                    dt.Rows.Add(row);
                }
                sr.Close();
            }
            else if (substring == "Occupations")
            {
                //type = "Occupation";
                dt.Columns.Add("hh_key", typeof(String));
                dt.Columns.Add("KEY_", typeof(String));
                dt.Columns.Add("cluster_code", typeof(String));
                dt.Columns.Add("SubmissionDate", typeof(String));
                dt.Columns.Add("coding_date", typeof(String));
                dt.Columns.Add("district", typeof(String));
                dt.Columns.Add("G3_Supervisor_1_code", typeof(String));
                dt.Columns.Add("G3_Supervisor_1", typeof(String));
                dt.Columns.Add("G2_Interviewer_1_code", typeof(String));
                dt.Columns.Add("G2_Interviewer_1", typeof(String));
                dt.Columns.Add("CoderName", typeof(String));
                dt.Columns.Add("CodingBatchID", typeof(String));
                dt.Columns.Add("household_ID", typeof(String));
                dt.Columns.Add("address_of_household", typeof(String));
                dt.Columns.Add("PHONE_NUMBER_1", typeof(String));
                dt.Columns.Add("PHONE_NUMBER_2", typeof(String));
                dt.Columns.Add("A2_1", typeof(String));
                dt.Columns.Add("A21a_3", typeof(String));
                dt.Columns.Add("A21b_3", typeof(String));
                dt.Columns.Add("A21_CodedValue", typeof(String));
                dt.Columns.Add("Corrected_A21a_3", typeof(String));
                dt.Columns.Add("Corrected_A21b_3", typeof(String));
                dt.Columns.Add("A43a_4", typeof(String));
                dt.Columns.Add("A43b_4", typeof(String));
                dt.Columns.Add("A43_CodedValue", typeof(String));
                dt.Columns.Add("Corrected_A43a_4", typeof(String));
                dt.Columns.Add("Corrected_A43b_4", typeof(String));
                dt.Columns.Add("C20a_10", typeof(String));
                dt.Columns.Add("C20b_10", typeof(String));
                dt.Columns.Add("C20_CodedValue", typeof(String));
                dt.Columns.Add("Corrected_C20a_10", typeof(String));
                dt.Columns.Add("Corrected_C20b_10", typeof(String));
                dt.Columns.Add("Logical_Check", typeof(String));
                dt.Columns.Add("Telephone", typeof(String));
                dt.Columns.Add("Field", typeof(String));
                StreamReader sr = new StreamReader(Server.MapPath(@"~/FilesUpload/" + filename + ""));
                CsvReader csvread = new CsvReader(sr);
                csvread.Configuration.Delimiter = ",";
                csvread.Configuration.HeaderValidated = null;
                csvread.Configuration.MissingFieldFound = null;
                IEnumerable<Occupation> record = csvread.GetRecords<Occupation>();
                foreach (var rec in record) // Each record will be fetched and printed on the screen
                {

                    DataRow row = dt.NewRow();
                    row["hh_key"] = rec.hh_key;
                    row["KEY_"] = rec.KEY_;
                    row["cluster_code"] = rec.cluster_code;
                    row["SubmissionDate"] = rec.SubmissionDate;
                    row["coding_date"] = rec.coding_date;
                    row["district"] = rec.district;
                    row["G3_Supervisor_1_code"] = rec.G3_Supervisor_1_code;
                    row["G3_Supervisor_1"] = rec.G3_Supervisor_1;
                    row["G2_Interviewer_1_code"] = rec.G2_Interviewer_1_code;
                    row["G2_Interviewer_1"] = rec.G2_Interviewer_1;
                    row["CoderName"] = rec.CoderName;
                    row["CodingBatchID"] = rec.CodingBatchID;
                    row["household_ID"] = rec.household_ID;
                    row["address_of_household"] = rec.address_of_household;
                    row["PHONE_NUMBER_1"] = rec.PHONE_NUMBER_1;
                    row["PHONE_NUMBER_2"] = rec.PHONE_NUMBER_2;
                    row["A2_1"] = rec.A2_1;
                    row["A21a_3"] = rec.A21a_3;
                    row["A21b_3"] = rec.A21b_3;
                    row["A21_CodedValue"] = rec.A21_CodedValue;
                    row["Corrected_A21a_3"] = rec.Corrected_A21a_3;
                    row["Corrected_A21b_3"] = rec.Corrected_A21b_3;
                    row["A43a_4"] = rec.A43a_4;
                    row["A43b_4"] = rec.A43b_4;
                    row["A43_CodedValue"] = rec.A43_CodedValue;
                    row["Corrected_A43a_4"] = rec.Corrected_A43a_4;
                    row["Corrected_A43b_4"] = rec.Corrected_A43b_4;
                    row["C20a_10"] = rec.C20a_10;
                    row["C20b_10"] = rec.C20b_10;
                    row["C20_CodedValue"] = rec.C20_CodedValue;
                    row["Corrected_C20a_10"] = rec.Corrected_C20a_10;
                    row["Corrected_C20b_10"] = rec.Corrected_C20b_10;
                    row["Logical_Check"] = rec.Logical_Check;
                    row["Telephone"] = rec.Telephone;
                    row["Field"] = rec.Field;
                    dt.Rows.Add(row);
                }
                sr.Close();
            }
            else if (substring == "Tools")
            {
               // type = "Tools";
                dt.Columns.Add("hh_key", typeof(String));
                dt.Columns.Add("KEY_", typeof(String));
                dt.Columns.Add("cluster_code", typeof(String));
                dt.Columns.Add("SubmissionDate", typeof(String));
                dt.Columns.Add("Coding_date", typeof(String));
                dt.Columns.Add("district", typeof(String));
                dt.Columns.Add("G3_Supervisor_1_code", typeof(String));
                dt.Columns.Add("G3_Supervisor_1", typeof(String));
                dt.Columns.Add("G2_Interviewer_1_code", typeof(String));
                dt.Columns.Add("G2_Interviewer_1", typeof(String));
                dt.Columns.Add("CoderName", typeof(String));
                dt.Columns.Add("CodingBatchID", typeof(String));
                dt.Columns.Add("household_ID", typeof(String));
                dt.Columns.Add("address_of_household", typeof(String));
                dt.Columns.Add("PHONE_NUMBER_1", typeof(String));
                dt.Columns.Add("PHONE_NUMBER_2", typeof(String));
                dt.Columns.Add("A2_1", typeof(String));
                dt.Columns.Add("C35_11", typeof(String));
                dt.Columns.Add("C38_3_11_2nd", typeof(String));
                dt.Columns.Add("C38_3_11", typeof(String));
                dt.Columns.Add("C38_CodedValue", typeof(String));
                dt.Columns.Add("Corrected_C38_3_11_2nd", typeof(String));
                dt.Columns.Add("Corrected_C38_3_11", typeof(String));
                dt.Columns.Add("C38_2_11_2nd", typeof(String));
                dt.Columns.Add("C38_2_11", typeof(String));
                dt.Columns.Add("C38_CodedValue2", typeof(String));
                dt.Columns.Add("Corrected_C38_2_11_2nd", typeof(String));
                dt.Columns.Add("Corrected_C38_2_11", typeof(String));
                dt.Columns.Add("Logical_Check", typeof(String));
                dt.Columns.Add("Telephone", typeof(String));
                dt.Columns.Add("Field", typeof(String));
                StreamReader sr = new StreamReader(Server.MapPath(@"~/FilesUpload/" + filename + ""));
                CsvReader csvread = new CsvReader(sr);
                csvread.Configuration.Delimiter = ",";
                csvread.Configuration.HeaderValidated = null;
                csvread.Configuration.MissingFieldFound = null;
                IEnumerable<Tools> record = csvread.GetRecords<Tools>();
                foreach (var rec in record) // Each record will be fetched and printed on the screen
                {

                    DataRow row = dt.NewRow();
                    row["hh_key"] = rec.hh_key;
                    row["KEY_"] = rec.KEY_;
                    row["cluster_code"] = rec.cluster_code;
                    row["SubmissionDate"] = rec.SubmissionDate;
                    row["Coding_date"] = rec.Coding_date;
                    row["district"] = rec.district;
                    row["G3_Supervisor_1_code"] = rec.G3_Supervisor_1_code;
                    row["G3_Supervisor_1"] = rec.G3_Supervisor_1;
                    row["G2_Interviewer_1_code"] = rec.G2_Interviewer_1_code;
                    row["G2_Interviewer_1"] = rec.G2_Interviewer_1;
                    row["CoderName"] = rec.CoderName;
                    row["CodingBatchID"] = rec.CodingBatchID;
                    row["household_ID"] = rec.household_ID;
                    row["address_of_household"] = rec.address_of_household;
                    row["PHONE_NUMBER_1"] = rec.PHONE_NUMBER_1;
                    row["PHONE_NUMBER_2"] = rec.PHONE_NUMBER_2;
                    row["A2_1"] = rec.A2_1;
                    row["C35_11"] = rec.C35_11;
                    row["C38_3_11_2nd"] = rec.C38_3_11_2nd;
                    row["C38_3_11"] = rec.C38_3_11;
                    row["C38_CodedValue"] = rec.C38_CodedValue;
                    row["Corrected_C38_3_11_2nd"] = rec.Corrected_C38_3_11_2nd;
                    row["Corrected_C38_3_11"] = rec.Corrected_C38_3_11;
                    row["C38_2_11_2nd"] = rec.C38_2_11_2nd;
                    row["C38_2_11"] = rec.C38_2_11;
                    row["C38_CodedValue2"] = rec.C38_CodedValue2;
                    row["Corrected_C38_2_11_2nd"] = rec.Corrected_C38_2_11_2nd;
                    row["Corrected_C38_2_11"] = rec.Corrected_C38_2_11;
                    row["Logical_Check"] = rec.Logical_Check;
                    row["Telephone"] = rec.Telephone;
                    row["Field"] = rec.Field;
                    dt.Rows.Add(row);
                }
                sr.Close();
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
            if (dt.Rows.Count > 0)
            {
                if (substring == "Tools")
                {
                    cont.ConnectionString = @consString;
                    SqlCommand cmd2 = new SqlCommand("Truncate Table [TempCorrectedText_Tools]", cont);
                    cmd2.CommandType = CommandType.Text;
                    cont.Open();
                    cmd2.ExecuteNonQuery();
                    cont.Close();
                    using (SqlConnection con = new SqlConnection(consString))
                    {
                        using (SqlBulkCopy sqlBulkCopy = new SqlBulkCopy(con))
                        {
                            sqlBulkCopy.DestinationTableName = "dbo.TempCorrectedText_Tools";
                            con.Open();
                            sqlBulkCopy.WriteToServer(dt);
                            con.Close();
                            Response.Redirect("CorrectedText_Summary.aspx?type=Tools");
                        }
                    }
                }
                else
                {
                    cont.ConnectionString = @consString;
                    SqlCommand cmd2 = new SqlCommand("Truncate Table [TempCorrectedText]", cont);
                    cmd2.CommandType = CommandType.Text;
                    cont.Open();
                    cmd2.ExecuteNonQuery();
                    cont.Close();
                    using (SqlConnection con = new SqlConnection(consString))
                    {
                        using (SqlBulkCopy sqlBulkCopy = new SqlBulkCopy(con))
                        {
                            sqlBulkCopy.DestinationTableName = "dbo.TempCorrectedText";
                            con.Open();
                            sqlBulkCopy.WriteToServer(dt);
                            con.Close();
                            Response.Redirect("CorrectedText_Summary.aspx?type=" + substring);
                        }
                    }
                }
            }
        }
    }
    public class Tools // Test record class
    {
        public string hh_key { get; set; }
        public string KEY_ { get; set; }
        public string cluster_code { get; set; }
        public string SubmissionDate { get; set; }
        public string Coding_date { get; set; }
        public string district { get; set; }
        public string G3_Supervisor_1_code { get; set; }
        public string G3_Supervisor_1 { get; set; }
        public string G2_Interviewer_1_code { get; set; }
        public string G2_Interviewer_1 { get; set; }
        public string CoderName { get; set; }
        public string CodingBatchID { get; set; }
        public string household_ID { get; set; }
        public string address_of_household { get; set; }
        public string PHONE_NUMBER_1 { get; set; }
        public string PHONE_NUMBER_2 { get; set; }
        public string A2_1 { get; set; }
        public string C35_11 { get; set; }
        public string C38_3_11_2nd { get; set; }
        public string C38_3_11 { get; set; }
        public string C38_CodedValue { get; set; }
        public string Corrected_C38_3_11_2nd { get; set; }
        public string Corrected_C38_3_11 { get; set; }
        public string C38_2_11_2nd { get; set; }
        public string C38_2_11 { get; set; }
        public string C38_CodedValue2 { get; set; }
        public string Corrected_C38_2_11_2nd { get; set; }
        public string Corrected_C38_2_11 { get; set; }
        public string Logical_Check { get; set; }
        public string Telephone { get; set; }
        public string Field { get; set; }



    }
    public class TestRecord // Test record class
    {
        public string hh_key { get; set; }
        public string KEY_ { get; set; }
        public string cluster_code { get; set; }
        public string SubmissionDate { get; set; }
        public string coding_Date { get; set; }
        public string district { get; set; }
        public string G3_Supervisor_1_code { get; set; }
        public string G3_Supervisor_1 { get; set; }
        public string G2_Interviewer_1_code { get; set; }
        public string G2_Interviewer_1 { get; set; }
        public string CoderName { get; set; }
        public string CodingBatchID { get; set; }
        public string household_ID { get; set; }
        public string address_of_household { get; set; }
        public string PHONE_NUMBER_1 { get; set; }
        public string PHONE_NUMBER_2 { get; set; }
        public string A2_1 { get; set; }
        public string A22a_3 { get; set; }
        public string A22b_3 { get; set; }
        public string A22_CodedValue { get; set; }
        public string Corrected_A22a_3 { get; set; }
        public string Corrected_A22b_3 { get; set; }
        public string A44a_4 { get; set; }
        public string A44b_4 { get; set; }
        public string A44_CodedValue { get; set; }
        public string Corrected_A44a_4 { get; set; }
        public string Corrected_A44b_4 { get; set; }
        public string C21a_10 { get; set; }
        public string C21b_10 { get; set; }
        public string C21_CodedValue { get; set; }
        public string Corrected_C21a_10 { get; set; }
        public string Corrected_C21b_10 { get; set; }
        public string Logical_Check { get; set; }
        public string Telephone { get; set; }
        public string Field { get; set; }



    }
    public class Occupation // Test record class
    {
        public string hh_key { get; set; }
                public string KEY_ { get; set; }
                public string cluster_code { get; set; }
                public string SubmissionDate { get; set; }
                public string coding_date { get; set; }
                public string district { get; set; }
                public string G3_Supervisor_1_code { get; set; }
                public string G3_Supervisor_1 { get; set; }
                public string G2_Interviewer_1_code { get; set; }
                public string G2_Interviewer_1 { get; set; }
                public string CoderName { get; set; }
                public string CodingBatchID { get; set; }
                public string household_ID { get; set; }
                public string address_of_household { get; set; }
                public string PHONE_NUMBER_1 { get; set; }
                public string PHONE_NUMBER_2 { get; set; }
                public string A2_1 { get; set; }
                public string A21a_3 { get; set; }
                public string A21b_3 { get; set; }
                public string A21_CodedValue { get; set; }
                public string Corrected_A21a_3 { get; set; }
                public string Corrected_A21b_3 { get; set; }
                public string A43a_4 { get; set; }
                public string A43b_4 { get; set; }
                public string A43_CodedValue { get; set; }
                public string Corrected_A43a_4 { get; set; }
                public string Corrected_A43b_4 { get; set; }
                public string C20a_10 { get; set; }
                public string C20b_10 { get; set; }
                public string C20_CodedValue { get; set; }
                public string Corrected_C20a_10 { get; set; }
                public string Corrected_C20b_10 { get; set; }
                public string Logical_Check { get; set; }
                public string Telephone { get; set; }
                public string Field { get; set; }



    }

}