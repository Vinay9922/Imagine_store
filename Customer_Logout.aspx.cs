using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace Apple_Store_System
{
    public partial class Customer_Logout : System.Web.UI.Page
    {

        ArrayList idarray = new ArrayList();
        ArrayList nmarray = new ArrayList();
        ArrayList qtyarray = new ArrayList();
        ArrayList ratearray = new ArrayList();
        ArrayList cntarray = new ArrayList();

        protected void Page_Load(object sender, EventArgs e)
        {

            cntarray = (ArrayList)Session["cntarray"];
            idarray = (ArrayList)Session["idarray"];
            nmarray = (ArrayList)Session["nmarray"];
            ratearray = (ArrayList)Session["ratearray"];
            qtyarray = (ArrayList)Session["qtyarray"];


            if (Request.QueryString.ToString() != null)
            {
                int id = Convert.ToInt32(Request.QueryString["ID"]); //, Globalization.NumberStyles.Integer)

                //cntarray.RemoveAt(id);
                idarray.RemoveAt(id);
                nmarray.RemoveAt(id);
                ratearray.RemoveAt(id);
                qtyarray.RemoveAt(id);

            }
            if (cntarray.Count == 0)
            {
                //Web_Pizza.Customer.web_prod_detail.cnt = 0;
                // online_kolhapuri_chappal.Web_prod_detail.cnt = 0;
            }

            Session.Abandon();

            Response.Redirect("~/Index_page.aspx");
        }
    }
}