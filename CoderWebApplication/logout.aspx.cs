using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoderWebApplication
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["userID"] = "0";
            Session["userName"] = "0";
            Session["userType"] = "0";
            Session["LoggedIn"] = "0";
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
    }
}