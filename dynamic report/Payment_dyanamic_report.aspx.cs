using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Apple_Store_System.dynamic_report
{
    public partial class Payment_dyanamic_report : System.Web.UI.Page
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
            cmd.CommandText = "select cust_fnm,Billing_detail.bill_id from Billing_detail,Billing_Master,Customer where Billing_detail.bill_id=Billing_Master.bill_id and Billing_Master.cust_id=Customer.cust_id";
            dr = cmd.ExecuteReader();
            DropDownList1.DataSource = dr;
            DropDownList1.DataTextField = "cust_fnm";
            DropDownList1.DataValueField = "bill_id";
            DropDownList1.DataBind();
            dr.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Payment_dyanamic_list r1 = new Payment_dyanamic_list();
            CrystalReportViewer1.SelectionFormula = "{Payment.bill_id}=" + DropDownList1.SelectedValue;
            CrystalReportViewer1.ReportSource = r1;
        }
       

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

      
    }
}