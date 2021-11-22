using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Apple_Store_System.date_report
{
    public partial class Date_payment_report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_show_Click(object sender, EventArgs e)
        {
            Date_payment  r1 = new Date_payment();
            CrystalReportViewer1.SelectionFormula = "{Payment.pay_date}>=DateTime('" + Txt1.Text + "')and{Payment.pay_date}<=DateTime('" + Txt2.Text + "')";
            CrystalReportViewer1.ReportSource = r1;
        }
    }
}