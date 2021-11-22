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
    public partial class Billing_Master : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataReader dr;

        static int flag = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection();
            cn.ConnectionString = "Data Source=(local);Initial Catalog=apple store;Integrated Security=True";
            cn.Open();
            setgrid();
        }

          public void enabletext()
        {

            bill_id.Enabled = false ;
            cust_id.Enabled = true;
            date.Enabled = true;
            total.Enabled = true;
            gst.Enabled = true;
            grandtot.Enabled = true;
           
            
        }

        public void disabletext()
        {
            bill_id.Enabled = false;
            cust_id.Enabled = false;
            date.Enabled = false;
            total.Enabled = false;
            gst.Enabled = false;
            grandtot.Enabled = false;
           
            
        }

        public void cleartext()
        {
            bill_id.Text = "";
            cust_id.Text = "";
            date.Text = "";
            total.Text = "";
            gst.Text = "";
            grandtot.Text = "";
             
        }

        public void setgrid()
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select * from Billing_Master order by bill_id";
            dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
        }


        public int GetNewid()
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select max(bill_id) from Billing_Master";
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

        protected void btn_new_Click(object sender, EventArgs e)
        {
            enabletext();
            btn_save.Enabled = true;
            btn_new.Enabled = false;
            bill_id.Text = Convert.ToString(GetNewid());
            flag = 1;
            bill_id.Enabled = false;
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
          
            if (flag == 1)
            {
                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandText = "insert into Billing_Master values ("+bill_id.Text+","+cust_id.Text+","+date.Text+", '"+
                                    total.Text+"', '"+gst.Text+"' , "+grandtot.Text+")";

                int x = cmd.ExecuteNonQuery();

                if (x > 0)
                {
                    MessageBox.Show("inserted Successful");
                }

                else
                {
                    MessageBox.Show(" Unsuccessful");
                }

            }

            else if (flag == 2)
            {
                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandText = "update Billing_Master set cust_id = "+ cust_id.Text + ", date='" + date.Text + "', total='" +
                                    total.Text + "', gst ='" + gst.Text + "' , grandtot =" + grandtot.Text +" where bill_id = "+bill_id.Text;

                int x = cmd.ExecuteNonQuery();

                if (x > 0)
                {
                    MessageBox.Show("update Successful");
                }

                else
                {
                    MessageBox.Show(" Unsuccessful");
                }
            }

            enabletext();                  
            btn_save.Enabled = false;
            btn_new.Enabled = true;
            btn_del.Enabled = false;
            cleartext();
            disabletext();
            setgrid();
            cleartext();
        }

        protected void btn_up_Click(object sender, EventArgs e)
        {
          flag = 2;

            btn_save.Enabled = true;
            btn_up.Enabled = false;
            btn_del.Enabled = false;
            bill_id.Enabled = false;
            enabletext();
        }

        protected void btn_del_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "delete Billing_master where bill_id = " + bill_id.Text;

            int x = cmd.ExecuteNonQuery();

            if (x > 0)
            {
                MessageBox.Show("deleted Successful");
            }

            else
            {
                MessageBox.Show(" Unsuccessful");
            }
            setgrid();
            cleartext();
            btn_new.Enabled = true;
            btn_up.Enabled = false;
            btn_del.Enabled = false;
        }

              protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            bill_id.Text = GridView1.SelectedRow.Cells[1].Text;
            cust_id.Text = GridView1.SelectedRow.Cells[2].Text;
            date.Text = GridView1.SelectedRow.Cells[3].Text;
            total.Text = GridView1.SelectedRow.Cells[4].Text;
            gst.Text = GridView1.SelectedRow.Cells[5].Text;
            grandtot.Text = GridView1.SelectedRow.Cells[6].Text;
            btn_new.Enabled = false;
            btn_up.Enabled = true;
            btn_del.Enabled = true;
        }
        }
}