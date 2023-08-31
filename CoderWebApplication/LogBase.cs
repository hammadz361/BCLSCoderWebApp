using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Web;


namespace CoderWebApplication
{
    public class LogBase
    {

        public static StreamWriter w = new StreamWriter(System.Web.Hosting.HostingEnvironment.MapPath("~/"+DateTime.Now.ToString("d MMM yyyy") + ".txt"), true);
        //public static Stream myFile ;//= File.Create(DateTime.Now.ToString("d MMM yyyy") + ".txt");
        //public static TextWriterTraceListener twtl;// = new TextWriterTraceListener(myFile);
         // .Add(twtl);
       
        //public static void loer(string path, string component, string user, string message)
        //{
        //    //string query = cmd.CommandText;

        //    //foreach (SqlParameter p in cmd.Parameters)
        //    //{
        //    //    if (p.Value.ToString().Length >= 1)
        //    //    query = query +"," +p.ParameterName +" : "+ p.Value.ToString();
        //    //}
        //    string now = DateTime.Now.ToString("d MMM yyyy");
        //    using (StreamWriter w = new StreamWriter(path, true))
        //    {
        //        w.WriteLine(DateTime.Now.ToString() + "---Action----- " + user + "----Procedure & values---- " + component + "---User :--- " + message); // Write the text
        //        w.Flush();
        //        w.Close();
        
        //    }
            
        //}

        public static void log(string path, string action, SqlCommand component, string user)
        {
            //Stream myFile = File.Create(DateTime.Now.ToString("d MMM yyyy") + ".txt");
            //TextWriterTraceListener twtl = new TextWriterTraceListener(myFile);
            try
            {
                string query = component.CommandText;

                foreach (SqlParameter p in component.Parameters)
            {
                if (p.Value.ToString().Length >= 1)
                query = query +"," +p.ParameterName +" : "+ p.Value.ToString();
            }
                 string now = DateTime.Now.ToString("d MMM yyyy");


                 //Trace.Listeners.Add(twtl);
                 //Trace.Write(DateTime.Now.ToString() + "---Action----- " + action + "----Procedure & values---- " + query + "---User :--- " + user);
                 w.WriteLine(DateTime.Now.ToString() + "---Action----- " + action + "----Procedure & values---- " + query + "---User :--- " + user); // Write the text
                 w.Flush();
               
            }
            catch (Exception)
            {
                
                throw;
            }
            //throw new NotImplementedException();
        }


        public static string logging(string path, string action, SqlCommand component, string user)
        {
            string logtext = "";
            try
            {
                string query = component.CommandText;

                foreach (SqlParameter p in component.Parameters)
                {
                    if (p.Value.ToString().Length >= 1)
                        query = query + "," + p.ParameterName + " : " + p.Value.ToString();
                }
            //    string now = DateTime.Now.ToString("d MMM yyyy");
                //using (StreamWriter w = new StreamWriter(path, true))
                //{
                    //w.WriteLine(DateTime.Now.ToString() + "---Action----- " + action + "----Procedure & values---- " + query + "---User :--- " + user); // Write the text
                logtext = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff") + "---Action----- " + action + "----Procedure & values---- " + query + "---User :--- " + user; // Write the text

                    //w.Close();
                //}
            }
            catch (Exception)
            {

                throw;
            }
            //throw new NotImplementedException();

            return logtext;
        }
        internal static void opening()
        {
          //  w.Close();
            
        }
        public static void logg(string p, string logtext)
        {
           
           // TextWriterTraceListener twtl = new TextWriterTraceListener("C:\\log.txt");
            try
            {
                //Trace.Listeners.Add(twtl);
                //Trace.Write(logtext);
                w.WriteLine(logtext); // Write the text
                w.Flush();
            }
            catch(Exception e)
            {
                if (true) ;
            }
                //
          

            //}
        }
    }
}