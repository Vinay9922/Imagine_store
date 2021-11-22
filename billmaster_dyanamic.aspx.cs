using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Apple_Store_System
{
    public partial class WebForm1 : System.Web.UI.Page
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
            cmd.CommandText = "select * from Customer";
            dr = cmd.ExecuteReader();
            DropDownList1.DataSource = dr;
            DropDownList1.DataTextField = "cust_fnm";
            DropDownList1.DataValueField = "cust_id";
            DropDownList1.DataBind();
            dr.Close();
        }
        protected void btn_show_Click(object sender, EventArgs e)
        {
            RPT_Billing_dropdwon r1 = new RPT_Billing_dropdwon();
            CrystalReportViewer1.SelectionFormula = "{Billing_Master.cust_id}=" + DropDownList1.SelectedValue;
            CrystalReportViewer1.ReportSource = r1;
        }

    }
}