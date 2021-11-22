using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Apple_Store_System.date_report
{
    public partial class Date_billing_master_report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_show_Click(object sender, EventArgs e)
        {
           Date_billing_master   r1 = new Date_billing_master();
            CrystalReportViewer1.SelectionFormula = "{Billing_Master.Date}>=DateTime('" + Txt1.Text + "')and{Billing_Master.Date}<=DateTime('" + Txt2.Text + "')";
            CrystalReportViewer1.ReportSource = r1;
        }
    }
}