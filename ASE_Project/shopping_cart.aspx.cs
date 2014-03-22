using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;

namespace ASE_Project
{
    public partial class shopping_cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArrayList a = new ArrayList();
        
        if (Session["menulist"] != null)
        {
            
            a = (ArrayList)Session["menulist"];
            string[,] data = new string[100, 2];

            int iterator = 0;
            foreach (string s in a)
            {

                string[] b = s.Split('^');
                data[iterator, 0] = b[0];
                data[iterator, 1] = b[1];
                Session["vn"] = b[2];
                iterator++;
            }
            Label1.Text = iterator.ToString();

            DataTable newsDataTable = new DataTable();

            // add some columns to our datatable
            newsDataTable.Columns.Add("item_name");
            newsDataTable.Columns.Add("price");
           
            int total = 0;
            string details = ""; 
           
            // adding new rows
            for (int i = 0; i < iterator; i++)
            {
                DataRow newsDataRow = newsDataTable.NewRow();
                newsDataRow["item_name"] = data[i, 0];
                newsDataRow["price"] = data[i, 1];
                total = total + Convert.ToInt32(data[i, 1]); 
                newsDataTable.Rows.Add(newsDataRow);
               // total1.Visible = true;
                price.Visible = true;

                details = details + data[i,0]+','+data[i,1];
                details = details + '&';

            }

            
            //Binding data to repeater

            cart.DataSource = newsDataTable;
            cart.DataBind();
            price.Text = total.ToString();
            details = details + "^ " + total;
            details1.Text = details;
            
        }
        else {
            Label1.Text = "no results";
        }
    }

        }
    }
