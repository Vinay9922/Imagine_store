using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Apple_Store_System
{
    public partial class customer_dashboard_form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_update_info_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/updatecustomer.aspx?id=" + Session["cid"]);
        }

        protected void btn_customer_wise_bill_Click(object sender, EventArgs e)
        {
          
            Response.Redirect("~/dynamic report/customer_wise_billl.aspx?id="+ Session["cid"]);
            

        }
        protected void btn_payment_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Payment.aspx");
        }
    }
}