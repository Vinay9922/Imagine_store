using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Apple_Store_System.list_report
{
    public partial class form_daily_rpt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //TextBox1.Text = System.DateTime.Now.ToString("yyyy/MM/dd");
        }

        protected void Btn_show_Click(object sender, EventArgs e)
        {
            Daily_report r1 = new Daily_report();
            CrystalReportViewer1.SelectionFormula = "{Billing_Master.date}=DateTime('" + System.DateTime.Now.ToString("yyyy/MM/dd") + "')";
            CrystalReportViewer1.ReportSource = r1;
        }
    }
}