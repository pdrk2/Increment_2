using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace ASE_Project
{
    public partial class carting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string venid = Request.QueryString["id"];
            int id = Convert.ToInt32(venid);
            itemfind.find s1 = new itemfind.find();
            ArrayList a = new ArrayList(s1.item_retrieve(id));
            ArrayList c = new ArrayList();
            ArrayList b = new ArrayList();

            if (Session["menulist"] != null)
            {
                c = (ArrayList)(Session["menulist"]);
            }


            b = (ArrayList)a;

            foreach (string ss in b)
            {

                c.Add(ss);

            }
            Session["menulist"] = c;


            if (!IsPostBack)
            {
                string prevPage = Request.UrlReferrer.ToString();
                Response.Redirect(prevPage);
            }
       
        }
    }
}