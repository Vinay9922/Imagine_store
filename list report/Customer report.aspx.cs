using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Apple_Store_System.list_report
{
    public partial class Customer_report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Customer_list r1 = new Customer_list();
            CrystalReportViewer1.ReportSource = r1;

        }
    }
}