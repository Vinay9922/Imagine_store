using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Apple_Store_System.list_report
{
    public partial class Billing_details_report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Billing_detail_list r1 = new Billing_detail_list();
            CrystalReportViewer1.ReportSource = r1;
        }
    }
}