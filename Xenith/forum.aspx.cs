using System;
using System.Collections.Generic;
using System.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Xenith
{
    public partial class forum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["XenithConnectionString"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT [forum_topic], [no_of_comments] FROM [forum_posts]", con);
                con.Open();
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();

            }

            foreach (GridViewRow gr in GridView1.Rows)
            {
                HyperLink hp = new HyperLink();
                hp.Text = gr.Cells[0].Text;
                hp.NavigateUrl = "~/view_post.aspx?name=";
                gr.Cells[0].Controls.Add(hp);


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

        protected void myGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            DataSet myDataSet = GetViewState();
            DataTable myDataTable = myDataSet.Tables[0];

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/create_post.aspx");


        }

    }
}