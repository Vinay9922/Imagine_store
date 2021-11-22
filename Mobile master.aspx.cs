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
    public partial class Mobile_master : System.Web.UI.Page
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

            mob_id.Enabled = false ;
            mob_nm.Enabled = true ;
            mob_rate.Enabled = true;
            scr_size.Enabled = true;
            color.Enabled = true;
            capacity.Enabled = true;
            mob_descr.Enabled = true;
            mob_feature.Enabled = true;
           // mob_img.Enabled = true;
            mob_stock.Enabled = true;
            
        }

        public void disabletext()
        {
            mob_id.Enabled = false;
            mob_nm.Enabled = false;
            mob_rate.Enabled = false;
            scr_size.Enabled = false;
            color.Enabled = false;
            capacity.Enabled = false;
            mob_descr.Enabled = false ;
            mob_feature.Enabled = false;
           // mob_img.Enabled = false;
            mob_stock.Enabled = false;
        }

        public void cleartext()
        {
            mob_id.Text = "";
            mob_nm.Text = "";
            mob_rate.Text = "";
            scr_size.Text = "";
            color.Text = "";
            capacity.Text = "";
            mob_descr.Text = "";
            mob_feature.Text = "";
           // mob_img.Text = "";
            mob_stock.Text = "";
           

        }

        public void setgrid()
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select * from Mobile_master order by mob_id";
            dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
        }


        public int GetNewid()
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select max(mob_id) from Mobile_master";
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
            string Mobilenm = mob_nm.Text;
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select * from Mobile_master where mob_nm = '" + Mobilenm + "'";
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
            mob_id.Text = Convert.ToString(GetNewid());
            flag = 1;
            mob_id.Enabled = false;
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
                            cmd.CommandText = "insert into Mobile_master values (" + mob_id.Text + ",'" + mob_nm.Text + "'," + mob_rate.Text + ", '" +
                                                scr_size.Text + "', '" + color.Text + "' , " + capacity.Text + ", '" + mob_descr.Text + "' ,'" + mob_feature.Text + "','" +
                                                filenm  + "' , " + mob_stock.Text + ")";

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
                    cmd.CommandText = "update Mobile_master set mob_rate=" + mob_rate.Text + ", screen_size='" +
                                        scr_size.Text + "', color='" + color.Text + "' , capacity =" + capacity.Text + ", mob_descr='" + mob_descr.Text +
                                        "' ,mob_features='" + mob_feature.Text + "', mob_image='" +
                                        filenm  + "' , mob_stock= " + mob_stock.Text + " where mob_id = " + mob_id.Text;

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
            mob_id.Enabled = false;
            enabletext();
            dr.Close();

        }

        protected void btn_del_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "delete Mobile_master where mob_id = " + mob_id.Text;

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
            mob_id.Text = GridView1.SelectedRow.Cells[1].Text;
            mob_nm.Text = GridView1.SelectedRow.Cells[2].Text;
            mob_rate.Text = GridView1.SelectedRow.Cells[3].Text;
            scr_size.Text = GridView1.SelectedRow.Cells[4].Text;
            color.Text = GridView1.SelectedRow.Cells[5].Text;
            capacity.Text = GridView1.SelectedRow.Cells[6].Text;
            mob_descr.Text = GridView1.SelectedRow.Cells[7].Text;
            mob_feature.Text = GridView1.SelectedRow.Cells[8].Text;
            filenm  = GridView1.SelectedRow.Cells[9].Text;
            mob_stock.Text = GridView1.SelectedRow.Cells[10].Text;
            btn_new.Enabled = false;
            btn_up.Enabled = true;
            btn_del.Enabled = true;
        }


        protected void btn_upload_Click1(object sender, EventArgs e)
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