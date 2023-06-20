using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Text;
using System.Web.Script.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace Xenith
{
    public partial class currency_converter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CurrencyConversionSubmit_Click(object sender, EventArgs e)
        {
            HttpWebRequest myHttpWebRequest = null;     //Declare an HTTP-specific implementation of the WebRequest class.
            HttpWebResponse myHttpWebResponse = null;   //Declare an HTTP-specific implementation of the WebResponse class

            try
            {
                var CurrencyConversionFromAmtval = CurrencyConversionFromAmt.Text;
                var CurrencyFromDDLval = CurrencyFromDDL.Text;
                var CurrencyToDDLval = CurrencyToDDL.Text;

               // System.Diagnostics.Debug.WriteLine("here");

                if (CurrencyFromDDLval == CurrencyToDDLval)
                {
                    CurrencyConversionToAmt.Text = (Convert.ToSingle(CurrencyConversionFromAmtval)).ToString();
                }
                else
                {

                    var inURL = "http://rate-exchange.appspot.com/currency?from=" + CurrencyFromDDLval + "&to=" + CurrencyToDDLval + "";

                    System.Diagnostics.Debug.WriteLine(inURL);

                    //Create Request
                    myHttpWebRequest = (HttpWebRequest)HttpWebRequest.Create(inURL);
                    myHttpWebRequest.Method = "GET";

                    //Get Response
                    myHttpWebResponse = (HttpWebResponse)myHttpWebRequest.GetResponse();

                    //Response.Write(myHttpWebResponse);

                    // Get the stream associated with the response.
                    Stream receiveStream = myHttpWebResponse.GetResponseStream();

                    // Pipes the stream to a higher level stream reader with the required encoding format. 
                    StreamReader readStream = new StreamReader(receiveStream, Encoding.UTF8);

                    //Response.Write("Response stream received.");
                    var rcvresponse = readStream.ReadToEnd();

                    JObject jobj = JObject.Parse(rcvresponse);

                    var opt_rate = jobj["rate"].ToString();

                    CurrencyConversionToAmt.Text = (Convert.ToSingle(opt_rate) * Convert.ToSingle(CurrencyConversionFromAmtval)).ToString();
                }




            }
            catch (Exception myException)
            {
                System.Diagnostics.Debug.Write(myException);
            }
            finally
            {
                myHttpWebRequest = null;
                myHttpWebResponse = null;

            }


        }
    }
}