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
    public partial class update_customer : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataReader dr;
        static String custid;

        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection();
            cn.ConnectionString = "Data Source=(local);Initial Catalog=apple store;Integrated Security=True";
            cn.Open();
            custid = Request.QueryString["id"];
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select  * from Customer where cust_id =" +custid;
            dr = cmd.ExecuteReader();
            if (!IsPostBack)
            {
                if (dr.Read())
                {
                    cust_id1.Text = dr[0].ToString();
                    first_nm1.Text = dr[1].ToString();
                    last_nm1.Text = dr[2].ToString();
                    ship_adrs1.Text = dr[3].ToString();
                    bil_adrs1.Text = dr[4].ToString();
                    city1.Text = dr[5].ToString();
                    pincode1.Text = dr[6].ToString();
                    mob_no1.Text = dr[7].ToString();
                    email1.Text = dr[8].ToString();
                    pass1.Text = dr[9].ToString();
                }
            }

            dr.Close();
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = " update  Customer set cust_fnm='" + first_nm1.Text + "',cust_lnm='" + last_nm1.Text + "',cust_shipping_addr='" +
                               ship_adrs1.Text + "',cust_billing_addr= '" + bil_adrs1.Text + "',cust_city='" + city1.Text + "',cust_pincode='" + pincode1.Text + "',cust_mobile='" + mob_no1.Text + "',cust_email='" +
                               email1.Text + "',cust_pass='" + pass1.Text+"' where cust_id=" + cust_id1.Text ;

            int x = cmd.ExecuteNonQuery();

            if (x > 0)
            {
                MessageBox.Show("update Successful");
                Response.Redirect("~/customerdashboardform.aspx");
            }

            else
            {
                MessageBox.Show(" Unsuccessful");
            }

            
        }

    }
}