using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Xenith
{
    public partial class view_post : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["XenithConnectionString"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT [forum_topic],[forum_content] FROM [forum_posts]", con);
                con.Open();
            }


        }


        private DataSet GetViewState()
        {
            //Gets the ViewState
            return (DataSet)ViewState["myDataSet"];
        }

        private void SetViewState(DataSet myDataSet)
        {
            //Sets the ViewState
            ViewState["myDataSet"] = myDataSet;
        }
    }
}