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
    public partial class create_post : System.Web.UI.Page
    {
        SqlConnection db = new SqlConnection(ConfigurationManager.ConnectionStrings["XenithConnectionString"].ConnectionString);
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void ClearTextBoxes(Control p1)
        {
            foreach (Control ctrl in p1.Controls)
            {
                if (ctrl is TextBox)
                {
                    TextBox t = ctrl as TextBox;

                    if (t != null)
                    {
                        t.Text = String.Empty;
                    }
                }
                else
                {
                    if (ctrl.Controls.Count > 0)
                    {
                        ClearTextBoxes(ctrl);
                    }
                }
            }



        }



        protected void Button1_Click(object sender, EventArgs e)
        {

            db.Open();
            int no_of_comments = 0;
            cmd = new SqlCommand("insert into forum_posts (forum_topic, no_of_comments, forum_content, created_time) values (@topic,'" + no_of_comments + "',@content, @time)", db);
            cmd.Parameters.Add(new SqlParameter("@topic", TextBox1.Text.Substring(0)));
            cmd.Parameters.Add(new SqlParameter("@content", TextBox2.Text.Substring(0)));
            cmd.Parameters.Add(new SqlParameter("@time", System.DateTime.Now));
            cmd.ExecuteNonQuery();
            db.Close();

            ClientScript.RegisterStartupScript(this.GetType(), "Alert", "alert('Posted Successfully');", true);
            ClearTextBoxes(Page);
            Response.Redirect("create_post.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ClearTextBoxes(Page);
            Response.Redirect("create_post.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            Response.Redirect("forum.aspx");
        }
    }
}