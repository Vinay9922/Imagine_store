using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Collections;

namespace Apple_Store_System
{
    public partial class Payment : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataReader dr;
       

        public static ArrayList idlist = new ArrayList();
        public static ArrayList namelist = new ArrayList();
        public static ArrayList qtylist = new ArrayList();
        public static ArrayList ratelist = new ArrayList();

        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection();
            cn.ConnectionString = "Data Source=(local);Initial Catalog=apple store;Integrated Security=True";
            cn.Open();

            pay_id.Text = Convert.ToString(GetNewid());
            bill_id.Text = Convert.ToString(Session["cid"]);
            if(!IsPostBack)
            {
            pay_date.Text = System.DateTime.Now.ToString("yyyy/MM/dd");

            idlist  = (ArrayList)Session["idarray"];
            namelist  = (ArrayList)Session["nmarray"];
            qtylist  = (ArrayList)Session["qtyarray"];
            ratelist = (ArrayList)Session["ratearray"];
            


        }

            cart_amt.Text = Session["grand"].ToString();
        }

        public int getnew_bill_id()
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


        public int GetNewid()
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select max(pay_id) from Payment";
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


        protected void btn_save_Click(object sender, EventArgs e)
        {

            int billid = getnew_bill_id();
            Session["bid"] = billid;

           // float gstamt = (Convert.ToInt32(cart_amt.Text) * 5) / 100;
           // float grand = Convert.ToInt32(cart_amt.Text) + gstamt;
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "insert into Billing_Master values (" + billid + "," + Session["cid"]+ ",'" + pay_date.Text +"'," 
                                +Session["tot"] + "," + Session["gstamt"] +  "," + Session["grand"] + "  )";

            int x1 = cmd.ExecuteNonQuery();

            if (x1 > 0)
            {
                MessageBox.Show("inserted Billing Master  Successful");
            }

            else
            {
                MessageBox.Show(" Unsuccessful");
            }
            
            
            for (int i = 0; i <idlist.Count; i++)
            {
                //code to insert
                int amt = Convert.ToInt32(ratelist[i])*Convert.ToInt32(qtylist[i]);
                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandText = "insert into Billing_detail values("+(i+1)+"," + billid + ",'" + namelist[i] + "'," 
                    + ratelist[i] + "," + qtylist[i] + "," + amt + ")";

                int x2 = cmd.ExecuteNonQuery();

                if (x2 > 0)
                {
                    MessageBox.Show("inserted Billing Detail Successfully");
                }

                else
                {
                    MessageBox.Show(" Unsuccessful");
                }



                //Code to change stock


                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandText = "update Mobile_master set mob_stock = mob_stock -" + qtylist[i]+
                    "where mob_nm = '" + namelist[i] + "'";

                int x3 = cmd.ExecuteNonQuery();

                if (x3 > 0)
                {
                    MessageBox.Show("Update Mobile Master Stock Successfully");
                }

                else
                {
                   // MessageBox.Show(" Unsuccessful");
                }



                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandText = "update Accessories set acc_stock = acc_stock -" + qtylist[i] +
                    "where acc_nm = '" + namelist[i] + "'";

                int x4 = cmd.ExecuteNonQuery();

                if (x4 > 0)
                {
                    MessageBox.Show("Update Accerssories Stock Successfully");
                }

                else
                {
                   // MessageBox.Show(" Unsuccessful");
                }






            }



                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandText = "insert into Payment values (" + pay_id.Text + "," + bill_id.Text+ ",'" + pay_date.Text +
                                  "'," + cart_amt.Text + ",'" + card_no.Text + "' )";

                int x = cmd.ExecuteNonQuery();

                if (x > 0)
                {
                    MessageBox.Show("inserted Payment Successful");
                }

                else
                {
                    MessageBox.Show(" Unsuccessful");
                }
                Response.Redirect("~/dynamic report/frm_recipt.aspx?Id=" + Session["bid"]);
        }

    }
}