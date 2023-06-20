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
    public partial class public_transportation : System.Web.UI.Page
    {
        public String pagecontent;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            // declare the SqlDataReader, which is used in
            // both the try block and the finally block
            SqlDataReader rdr = null;

            // create a connection object
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["XenithConnectionString"].ConnectionString);

            // create a command object
            SqlCommand cmd = new SqlCommand("select * from page where page_name='Public Transportation'", conn);

            try
            {
                // open the connection
                conn.Open();

                // 1. get an instance of the SqlDataReader
                rdr = cmd.ExecuteReader();


                // 2. print necessary columns of each
                while (rdr.Read())
                {
                    // get the results of each column
                    pagecontent = (string)rdr["page_content"];

                }
            }
            finally
            {
                // 3. close the reader
                if (rdr != null)
                {
                    rdr.Close();
                }

                // close the connection
                if (conn != null)
                {
                    conn.Close();
                }
            }
        }
    }
}