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
    public partial class Accessories : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataReader dr;

        static int flag = 0;

        static String filenm;

        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection();
            cn.ConnectionString = "Data Source=(local);Initial Catalog=apple store;Integrated Security=True";
            cn.Open();
            setgrid();               
        }
        public void enabletext()
        {

            acc_id.Enabled = false ;
            acc_nm.Enabled = true;
            acc_descr.Enabled = true;
            acc_rate.Enabled = true;
           // acc_img.Enabled = true;
            acc_stock.Enabled = true;
            
        }

        public void disabletext()
        {
            acc_id.Enabled = false;
            acc_nm.Enabled = false;
            acc_descr.Enabled = false ;
            acc_rate.Enabled = false;
            //acc_img.Enabled = false;
            acc_stock.Enabled = false;
        }

        public void cleartext()
        {
            acc_id.Text = "";
            acc_nm.Text = "";
            acc_descr.Text = "";
            acc_rate.Text = "";
           // acc_img.Text = "";
            acc_stock.Text = "";
        }

        public void setgrid()
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select * from Accessories order by acc_id";
            dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
        }


        public int GetNewid()
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select max(acc_id) from Accessories ";
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
        public bool isDuplicate()
        {
            string Accnm = acc_nm.Text;
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select * from Accessories  where acc_nm = '" + Accnm + "'";
            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                dr.Close();
                return true;
            }

            else
            {
                dr.Close();
                return false;
            }   
        }
        protected void btn_new_Click(object sender, EventArgs e)
        {
            enabletext();
            btn_save.Enabled = true;
            btn_new.Enabled = false;
            acc_id.Text = Convert.ToString(GetNewid());
            flag = 1;
            acc_id.Enabled = false;
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            
                if (flag == 1)
                {
                    if (isDuplicate())
                    {
                        MessageBox.Show("Record Alredy exisit");
                    }

                    else
                    {
                        cmd = new SqlCommand();
                        cmd.Connection = cn;
                        cmd.CommandText = "insert into Accessories values (" + acc_id.Text + ",'" + acc_nm.Text + "','" + acc_descr.Text + "'," +
                                            acc_rate.Text + ",'" + filenm + "' , " + acc_stock.Text + ")";

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
                }

                else if (flag == 2)
                {
                    cmd = new SqlCommand();
                    cmd.Connection = cn;
                    cmd.CommandText = "update Accessories set acc_descr= '" + acc_descr.Text +
                        "', acc_rate=" + acc_rate.Text + ", acc_image='" + filenm + "' , acc_stock= " + acc_stock.Text
                        + " where acc_id = " + acc_id.Text;

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
            acc_id.Enabled = false;
            enabletext();
           

        }

        protected void btn_del_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "delete Accessories where acc_id = " + acc_id.Text;

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
            acc_id.Text = GridView1.SelectedRow.Cells[1].Text;
            acc_nm.Text = GridView1.SelectedRow.Cells[2].Text;
            acc_descr.Text = GridView1.SelectedRow.Cells[3].Text;
            acc_rate.Text = GridView1.SelectedRow.Cells[4].Text;
            filenm = GridView1.SelectedRow.Cells[5].Text;
            acc_stock.Text = GridView1.SelectedRow.Cells[6].Text;
            btn_new.Enabled = false;
            btn_up.Enabled = true;
            btn_del.Enabled = true;
        }

             protected void btn_upload_Click(object sender, EventArgs e)
             {
                 //Create a folder photo in solution explorer

                 

                 if (FileUpload1.HasFile == true)
                 {
                     btn_save.Enabled = true;
                     String basedir = Server.MapPath("~/photo/");
                     filenm = FileUpload1.FileName;
                     FileUpload1.SaveAs(basedir + FileUpload1.FileName);
                     Image1.ImageUrl = "~/photo/" + FileUpload1.FileName;
                 }
                 else
                 {
                     MessageBox.Show("You Must Select Photo");
                 }
             }

             
            

           
      }
}