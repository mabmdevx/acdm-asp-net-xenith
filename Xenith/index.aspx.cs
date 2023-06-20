using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Net;
using System.IO;
using System.Text;

namespace Xenith
{
    public partial class index : System.Web.UI.Page
    {
        public String worldNewsContent;
        public String localNewsContent;

        protected void Page_Load(object sender, EventArgs e)
        {
            HttpWebRequest myHttpWebRequest = null;     //Declare an HTTP-specific implementation of the WebRequest class.
            HttpWebResponse myHttpWebResponse = null;   //Declare an HTTP-specific implementation of the WebResponse class

            //--- Local News - Start
            var localNewsURL = "http://cdn.abclocal.go.com/kgo/xml?id=7098640";
            //var localNewsURL = "http://localhost:5823/rss.xml";

            //Create Request
            myHttpWebRequest = (HttpWebRequest)HttpWebRequest.Create(localNewsURL);
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

            string myXMl = rcvresponse;


            XmlDocument xDoc = new XmlDocument();
            xDoc.LoadXml(myXMl);
            XmlNodeList xNodeList = xDoc.SelectNodes("rss/channel/child::node()");

            int p = 0;

            string[] titleDataArr = new string[10];
            string[] linkDataArr = new string[10];

            //Traverse the entire XML nodes.
            foreach (XmlNode xNode in xNodeList)
            {
                //System.Diagnostics.Debug.WriteLine(p);
                //System.Diagnostics.Debug.WriteLine(xNode.Name);

                if (p > 9)
                {
                    break;
                }

                //Looks for any particular nodes
                if (xNode.Name == "item")
                {
                    //If the parent node has child nodes then 
                    //traverse the child nodes

                    foreach (XmlNode xNodeEach in xNode.ChildNodes)
                    {

                        string childNodeName = xNodeEach.Name;       //Ouputs: Child1
                        string childNodeData = xNodeEach.InnerText;  //Outputs: data1

                        //System.Diagnostics.Debug.WriteLine(childNodeName);
                        //System.Diagnostics.Debug.WriteLine(childNodeData);

                        if (childNodeName == "title")
                        {
                            titleDataArr[p] = childNodeData;
                        }

                        if (childNodeName == "link")
                        {
                            linkDataArr[p] = childNodeData;
                        }

                    }


                    p = p + 1;
                }



            }

            localNewsContent = localNewsContent + @"<ul>";

            for (int pr = 0; pr < 10; pr++)
            {
                localNewsContent = localNewsContent + @"<li><a href='" + linkDataArr[pr] + @"' target='_blank' >" + titleDataArr[pr] + @"</a></li>";
            }

            localNewsContent = localNewsContent + @"</ul>";

            //--- Local News - End




            HttpWebRequest myHttpWebRequest2 = null;     //Declare an HTTP-specific implementation of the WebRequest class.
            HttpWebResponse myHttpWebResponse2 = null;   //Declare an HTTP-specific implementation of the WebResponse class

            //--- World News - Start
            var worldNewsURL = "http://feeds.bbci.co.uk/news/world/rss.xml";
            //var worldNewsURL = "http://localhost:5823/rss.xml";

            //Create Request
            myHttpWebRequest2 = (HttpWebRequest)HttpWebRequest.Create(worldNewsURL);
            myHttpWebRequest2.Method = "GET";

            //Get Response
            myHttpWebResponse2 = (HttpWebResponse)myHttpWebRequest2.GetResponse();

            //Response.Write(myHttpWebResponse2);

            // Get the stream associated with the response.
            Stream receiveStream2 = myHttpWebResponse2.GetResponseStream();

            // Pipes the stream to a higher level stream reader with the required encoding format. 
            StreamReader readStream2 = new StreamReader(receiveStream2, Encoding.UTF8);

            //Response.Write("Response stream received.");
            var rcvresponse2 = readStream2.ReadToEnd();

            string myXMl2 = rcvresponse2;


            XmlDocument xDoc2 = new XmlDocument();
            xDoc2.LoadXml(myXMl2);
            XmlNodeList xNodeList2 = xDoc2.SelectNodes("rss/channel/child::node()");

            int q = 0;

            string[] titleDataArr2 = new string[10];
            string[] linkDataArr2 = new string[10];

            //Traverse the entire XML nodes.
            foreach (XmlNode xNode2 in xNodeList2) 
            {
                //System.Diagnostics.Debug.WriteLine(p);
                //System.Diagnostics.Debug.WriteLine(xNode2.Name);
                
                if(q > 9)
                {
                   break;
                }

                //Looks for any particular nodes
                if (xNode2.Name == "item")
                {
                    //If the parent node has child nodes then 
                    //traverse the child nodes

                    foreach (XmlNode xNodeEach2 in xNode2.ChildNodes)
                    {

                        string childNodeName2 = xNodeEach2.Name;       //Ouputs: Child1
                        string childNodeData2 = xNodeEach2.InnerText;  //Outputs: data1

                        //System.Diagnostics.Debug.WriteLine(childNodeName);
                        //System.Diagnostics.Debug.WriteLine(childNodeData);

                        if (childNodeName2 == "title")
                        {
                            titleDataArr2[q] = childNodeData2;
                        }

                        if (childNodeName2 == "link")
                        {
                            linkDataArr2[q] = childNodeData2;
                        }

                    }


                    q = q + 1;
                }
                
                
                
            }

            worldNewsContent = worldNewsContent + @"<ul>";

            for (int qr = 0; qr < 10; qr++)
            {
                worldNewsContent = worldNewsContent + @"<li><a href='" + linkDataArr2[qr] + @"' target='_blank' >" + titleDataArr2[qr] + @"</a></li>";
            }

            worldNewsContent = worldNewsContent + @"</ul>";

            //--- World News - End




  











        }
    }
}