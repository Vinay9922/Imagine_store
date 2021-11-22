using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Apple_Store_System.dynamic_report
{
    public partial class frm_recipt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Recipt_bill r1 = new Recipt_bill();
            CrystalReportViewer1.SelectionFormula = "{Billing_master.bill_id}=" +Session["bid"];
            CrystalReportViewer1.ReportSource = r1;


            Session.Abandon();


        }
    }
}