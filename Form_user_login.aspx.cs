using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Apple_Store_System
{
    public partial class Form_user_login : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection();
            cn.ConnectionString = "Data Source=(local);Initial Catalog=apple store;Integrated Security=True";
            cn.Open();
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select * from Customer where cust_email = '" + Txt_user.Text + "' and cust_pass = '" + Txt_pass.Text+"'";
            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["cid"] = dr[0].ToString();
                MessageBox.Show("Login Successful");
                 Response.Redirect("~/customerdashboardform.aspx");
             //   Response.Redirect("~/Payment.aspx");
            }


            else
            {
                MessageBox.Show("Login Unuccessful");
            }
        }
    }
}