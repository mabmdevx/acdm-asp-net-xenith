using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Xenith
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AppendHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
            Response.AppendHeader("Pragma", "no-cache"); // HTTP 1.0.
            Response.AppendHeader("Expires", "0"); // Proxies.

            if (Session["userx"] != null)
            {
                
                Response.Redirect("index.aspx");
            }

        }

        protected void Signin_Click(object sender, EventArgs e)
        {
            string inpusername = inputusername.Text;
            string inppassword = inputpassword.Text;

            if (inpusername == "test" && inppassword == "test")
            {
                Session["userx"] = inpusername;
                Response.Redirect("index.aspx");
            }
        }
    }
}