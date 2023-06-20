using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Xenith
{
    public partial class send_feedback : System.Web.UI.Page
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


            cmd = new SqlCommand("insert into feedback (feedback, created_time) values (@feedback, @time)", db);

            cmd.Parameters.AddWithValue("@feedback", TextBox1.Text.Substring(0));

            cmd.Parameters.AddWithValue("@time", System.DateTime.Now);
            cmd.ExecuteNonQuery();
            db.Close();

            ClearTextBoxes(Page);

        }
    }
}