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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string action = Request["action"];
            string ParentID = Request["id"];
            string type = Request["type"];
            SqlDataAdapter da;
            DataSet ds = new DataSet();
            string conn = ConfigurationManager.ConnectionStrings["MyConnectionString"].ToString();
            SqlConnection con = new SqlConnection();
            StringBuilder htmlTable = new StringBuilder();
            con.ConnectionString = @conn;
            SqlCommand cmd = new SqlCommand("code_load", con);
            cmd.Parameters.Add(new SqlParameter("@type", type));
            cmd.Parameters.Add(new SqlParameter("@grouplevel", action));
            cmd.Parameters.Add(new SqlParameter("@id", ParentID));
            cmd.CommandType = CommandType.StoredProcedure;
            
            con.Open();
            
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                if (action == "9")
                {
                    while (reader.Read())
                    {
                        //if (type == "industries")
                        //{
                        //    htmlTable.AppendFormat("{{\"ID3\":\"{0}\",\"Minor\":\"{1}\",\"ID2\":\"{2}\",\"Sub\":\"{3}\",\"ID1\":\"{4}\",\"Major\":\"{5}\"}},", reader[0], reader[1], reader[2], reader[3], reader[4], reader[5]);

                        //}
                        //else
                        htmlTable.AppendFormat("{{\"ID\":\"{0}\",\"Unit\":\"{1}\",\"ID3\":\"{2}\",\"Minor\":\"{3}\",\"ID2\":\"{4}\",\"Sub\":\"{5}\",\"ID1\":\"{6}\",\"Major\":\"{7}\"}},", reader[0], reader[1], reader[2], reader[3], reader[4], reader[5], reader[6], reader[7]);
                    }
                  //  reader.NextResult();
                 //   while(reader.Read())
                  //  {
                   //     htmlTable.AppendFormat("{{\"ID\":\"{0}\",\"Unit\":\"{1}\",\"ID3\":\"{2}\",\"Minor\":\"{3}\",\"ID2\":\"{4}\",\"Sub\":\"{5}\",\"ID1\":\"{6}\",\"Major\":\"{7}\"}},", reader[0], reader[1], reader[2], reader[3], reader[4], reader[5], reader[6], reader[7]);

                   // }

                } if (action == "10")
                {
                    while (reader.Read())
                    {
                       
                        htmlTable.AppendFormat("{{\"ID\":\"{0}\",\"Unit\":\"{1}\",\"ID3\":\"{2}\",\"Minor\":\"{3}\",\"ID2\":\"{4}\",\"Sub\":\"{5}\",\"ID1\":\"{6}\",\"Major\":\"{7}\"}},", reader[0], reader[1], reader[2], reader[3], reader[4], reader[5], reader[6], reader[7]);
                    }
                 
                }
                else
                {
                    while (reader.Read())
                    {
                        htmlTable.AppendFormat("{{\"value\":\"{0}\",\"name\":\"{1}\"}},", reader[0], reader[1]);
                    }
                }
                string output = htmlTable.ToString();
                if (output.Substring(output.Length - 1, 1) == ",")
                    output = output.Substring(0, output.Length - 1);

                output = string.Format("[{0}]", output);
                con.Close();
                Response.Write(output);
            }
        }
    }
}