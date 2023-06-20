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
    public partial class explore_the_city : System.Web.UI.Page
    {
        public String locmarkers{ get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {


            // declare the SqlDataReader, which is used in
            // both the try block and the finally block
            SqlDataReader rdr = null;

            // create a connection object
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["XenithConnectionString"].ConnectionString);

            // create a command object
            SqlCommand cmd  = new SqlCommand("select * from location", conn);

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
		            string location_name        = (string)rdr["location_name"];
		            string location_address     = (string)rdr["location_address"];
		            string location_latitude    = (string)rdr["location_latitude"];
                    string location_longitude   = (string)rdr["location_longitude"];
                    string location_type        = (string)rdr["location_type"];

		            // print out the results
                    locmarkers = locmarkers + @"{
                    'title': '" + location_name.Replace("'", "\\'") + @"',
                    'lat': '" + location_latitude + @"',
                    'lng': '" + location_longitude + @"',
                    'description': '" + location_address.Replace("'", "\\'") + @"',
                    'type': '" + location_type + @"'
                    },
                    ";

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