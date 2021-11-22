using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Apple_Store_System.dynamic_report
{
    public partial class customer_wise_billl : System.Web.UI.Page
    {
        

        static String custid;
        protected void Page_Load(object sender, EventArgs e)
        {
            custid = Request.QueryString["id"];
            Billing_Master_dyanamic_list r1 = new Billing_Master_dyanamic_list();
            CrystalReportViewer1.SelectionFormula = "{Billing_Master.cust_id}=" +custid;
            CrystalReportViewer1.ReportSource = r1;

        }
    }
}