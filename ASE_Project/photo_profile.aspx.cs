using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Data;

namespace ASE_Project
{
    public partial class photo_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string v1 = "";
            v1 = Request.QueryString["vendor_name"];

            string[] f = new string[10];


            //Declare Connection by passing the connection string from the web config file
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();
            //Declare the sql command

            SqlCommand cmd1 = new SqlCommand("select * from photo where vname='" + v1 + "'", conn);
            SqlDataReader reader = cmd1.ExecuteReader();



            while (reader.Read())
            {
                style.Text = reader["style"].ToString();
                package.Text = reader["package"].ToString();
                employee.Text = reader["employee"].ToString();
                album.Text = reader["album"].ToString();
                media.Text = reader["media"].ToString();
                insurance.Text = reader["insurance"].ToString();
                fee.Text = reader["fee"].ToString();
                
            }


            cmd1.Dispose();
            conn.Close();

            try
            {



                loginwebservice.login1 l1 = new loginwebservice.login1();
                string[] a = l1.vendor_retrieve(v1);



                name.Text = a[0];
                contact.Text = a[3];
                street.Text = a[4];
                city.Text = a[5];
                zipcode.Text = a[1];
                service1.Text = a[7];
                timings.Text = a[6];
                gimg.Text = "<a class='details' data-fancybox-type='iframe' href='http://maps.google.com/?output=embed&amp;f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=" + street.Text + "," + city.Text + "," + zipcode.Text + "'><img src='images/google-map.png'></a>";

                loginwebservice.login1 l2 = new loginwebservice.login1();

                ArrayList b = new ArrayList(l2.vendor_try(v1));
                ArrayList c = new ArrayList();
                c = (ArrayList)b;

                string[,] data = new string[100, 4];

                int iterator = 0;

                foreach (string d in c)
                {

                    string[] row = d.Split('^');

                    data[iterator, 0] = row[0];

                    data[iterator, 1] = row[1];

                    data[iterator, 2] = row[2];

                    data[iterator, 3] = row[3];

                    iterator++;

                }

                DataTable newsDataTable = new DataTable();

                // add some columns to our datatable

                newsDataTable.Columns.Add("vname");

                newsDataTable.Columns.Add("vzipcode");

                newsDataTable.Columns.Add("vemail");
                newsDataTable.Columns.Add("vcontactno");



                // adding new rows

                for (int i = 0; i < iterator; i++)
                {

                    DataRow newsDataRow = newsDataTable.NewRow();

                    newsDataRow["vname"] = data[i, 0];

                    newsDataRow["vzipcode"] = data[i, 1];

                    newsDataRow["vemail"] = data[i, 2];

                    newsDataRow["vcontactno"] = data[i, 3];


                    newsDataTable.Rows.Add(newsDataRow);

                }

                //Label1.Text = "<a title='Send Mail to Restaurant' href='mailto:" + param1 + "'><img src ='images/email-to.png'></a>";

                // bind our datatable to our repeater

                category.DataSource = newsDataTable;

                category.DataBind();


            }
            catch (Exception e1)
            {
                //error.Visible = true;
                //error.Text = "error";
                //int abc = 1;
            }
       
        }
    }
}