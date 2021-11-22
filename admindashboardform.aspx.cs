using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Apple_Store_System
{
    public partial class admin_dashboard_form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_mobile_master_Click(object sender, EventArgs e)
        {
             Response.Redirect("~/Mobile master.aspx");
        }

        protected void btn_accessories_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Accessories.aspx");
        }

        protected void btn_billing_master_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Billing_Master.aspx");
        }

        protected void btn_billing_detail_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Billing_detail.aspx");
        }

        protected void btn_payment_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Payment.aspx");
        }

        // list report

        protected void btn_mobile_master_list_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/list report/Mobile Master report.aspx");
        }

        protected void btn_accessories_list_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/list report/Accessories report.aspx");
        }

        protected void btn_billing_master_list_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/list report/Billing Master report.aspx");
        }

        protected void btn_billing_detail_list_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/list report/Billing details report.aspx");
        }

        protected void btn_payment_list_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/list report/Payment report.aspx");
        }


        //dyanamic report

        protected void btn_billing_master_dyanamic_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/dynamic report/Billing Master_dyanamic_report.aspx");
        }

        protected void btn_billing_detail_dynamic_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/dynamic report/Billing detail_dyanamic_report.aspx");
        }

        protected void btn_payment_dynamic_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/dynamic report/Payment_dyanamic_report.aspx");
        }


        // date report

        protected void btn_billing_master_date_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/date report/Date_billing_master_report.aspx");
        }

        protected void btn_payment_date_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/date report/Date_payment_report.aspx");
        }

      
    }
}