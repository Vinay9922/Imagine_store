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
    public partial class Customer : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        //SqlDataReader dr;


        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection();
            cn.ConnectionString = "Data Source=(local);Initial Catalog=apple store;Integrated Security=True";
            cn.Open();
            cust_id.Text= Convert.ToString(GetNewid());
            //setgrid();
        }

        public void cleartext()
        {
            cust_id.Text = "";
            first_nm.Text = "";
            last_nm.Text = "";
            ship_adrs.Text = "";
            bil_adrs.Text = "";
            city.Text = "";
            pincode.Text = "";
            mob_no.Text = "";
            email.Text = "";
            pass.Text = "";



        }

        /*public void setgrid()
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select * Payment";
            dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
        }*/


        public int GetNewid()
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select max(cust_id) from Customer";
            Object x = cmd.ExecuteScalar();
            if (Convert.ToString(x) == "")
            {
                return 1;
            }
            else
            {
                return (Convert.ToInt32(x) + 1);
            }
        }

        protected void btn_ins_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "insert into Customer values (" + cust_id.Text + ",'" + first_nm.Text + "','" + last_nm.Text + "','" +
                               ship_adrs.Text + "','" + bil_adrs.Text + "','" + city.Text + "','" + pincode.Text + "','" + mob_no.Text + "','" +
                               email.Text + "','" + pass.Text + "' )";

            int x = cmd.ExecuteNonQuery();

            if (x > 0)
            {
                MessageBox.Show("inserted Successful");
                Response.Redirect("~/Form_user_login.aspx");
            }

            else
            {
                MessageBox.Show(" Unsuccessful");
            }

            cleartext();
            cust_id.Text = Convert.ToString(GetNewid());
        }
    }
}