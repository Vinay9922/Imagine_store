using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Apple_Store_System.dynamic_report
{
    public partial class Billing_detail_dynamic_report : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataReader dr;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection();
            cn.ConnectionString = "Data Source=(local);Initial Catalog=apple store;Integrated Security=True";
            cn.Open();
            if (!IsPostBack)
                setDropdown();
        }
        public void setDropdown()
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select * from Billing_Master"; 
            dr = cmd.ExecuteReader();
            DropDownList1.DataSource = dr;
            DropDownList1.DataTextField = "bill_id";
            DropDownList1.DataValueField = "bill_id";
            DropDownList1.DataBind();
            dr.Close();
        }

        protected void btn_show_Click(object sender, EventArgs e)
        {
            Billing_detail_dyanamic r1 = new Billing_detail_dyanamic();
            CrystalReportViewer1.SelectionFormula = "{Billing_detail.bill_id}=" + DropDownList1.SelectedValue;
            CrystalReportViewer1.ReportSource = r1;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {



        }
    }
}