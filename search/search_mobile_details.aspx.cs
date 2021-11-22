using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections;
using System.Windows.Forms;

namespace Apple_Store_System.search
{
    public partial class search_mobile_details : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataReader dr;

        static int cnt = 0;
        public static ArrayList idlist = new ArrayList();
        public static ArrayList ratelist = new ArrayList();
        public static ArrayList qtylist = new ArrayList();
        public static ArrayList nmlist = new ArrayList();
        public static ArrayList cntlist = new ArrayList();
        int stock;
        static String mobid;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection();
            cn.ConnectionString = "Data Source=(local);Initial Catalog=apple store;Integrated Security=True";
            cn.Open();
            if(!IsPostBack)
                mobid = Request.QueryString["ID"];


            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select * from Mobile_master where mob_id="+mobid;
            dr = cmd.ExecuteReader();

            int cnt = 1;

            while (dr.Read())
            {
                cnt++;
            }
            dr.Close();


            cmd = new SqlCommand("select * from Mobile_master  where mob_id=" + mobid, cn);
            dr = cmd.ExecuteReader();
            int i;
            Literal l1;
            Image i1;
            HyperLink h1;
            PlaceHolder1.Controls.Add(new LiteralControl("<table class='grid10'>"));
            PlaceHolder1.Controls.Add(new LiteralControl("<tr>"));
            int j;
            for (i = 0; i < cnt; i++)
            {
                for (j = 0; j < 5; j++)
                {
                    if (dr.Read())
                    {
                        Session.Add("rate", dr[2]);
                        Session.Add("prodid", dr[0]);
                        Session.Add("prodnm", dr[1]);

                        PlaceHolder1.Controls.Add(new LiteralControl("<td>"));
                        l1 = new Literal();
                        i1 = new Image();
                        h1 = new System.Web.UI.WebControls.HyperLink();
                        i1.Height = 500;
                        i1.Width = 500;
                        i1.ImageUrl = "~/photo/" + dr.GetString(8);
                        l1.Text = "<br>";
                        PlaceHolder1.Controls.Add(i1);
                        PlaceHolder1.Controls.Add(new LiteralControl("</td><td align=right>"));
                        PlaceHolder1.Controls.Add(l1);
                        PlaceHolder1.Controls.Add(h1);

                        PlaceHolder1.Controls.Add(new LiteralControl("<h5>Name:&nbsp;&nbsp;&nbsp;" + dr.GetString(1) + ""));
                        PlaceHolder1.Controls.Add(new LiteralControl("<h5>Rate:&nbsp;&nbsp;&nbsp;" + dr.GetInt32(2) + ""));
                        PlaceHolder1.Controls.Add(new LiteralControl("<h5>Screen Size:&nbsp;&nbsp;&nbsp;" + dr.GetString(3) + ""));
                        PlaceHolder1.Controls.Add(new LiteralControl("<h5>Color:&nbsp;&nbsp;&nbsp;" + dr.GetString(4) + ""));
                        PlaceHolder1.Controls.Add(new LiteralControl("<h5>Capacity:&nbsp;&nbsp;&nbsp;" + dr.GetInt32(5) + ""));
                        PlaceHolder1.Controls.Add(new LiteralControl("<h5>Description:&nbsp;&nbsp;&nbsp;" + dr.GetString(6) + ""));
                        PlaceHolder1.Controls.Add(new LiteralControl("<h5>Features:&nbsp;&nbsp;&nbsp;" + dr.GetString(7) + ""));
                        PlaceHolder1.Controls.Add(new LiteralControl("<h5>Stock:&nbsp;&nbsp;&nbsp;" + dr.GetInt32(9) + ""));

                        stock = Convert.ToInt32(dr[9]);
                        if (stock == 0)
                        {
                            DropDownList_stock.Enabled = false;
                            add_cart.Enabled = false;
                        }
                        else
                        {
                            for (int x = 1; x <= stock; x++)
                            {
                                DropDownList_stock.Items.Add(Convert.ToString(x));
                            }
                        }

                        PlaceHolder1.Controls.Add(new LiteralControl("<br>"));
                        PlaceHolder1.Controls.Add(new LiteralControl("</td>"));
                    }

                }// ending j loop
                PlaceHolder1.Controls.Add(new LiteralControl("</tr>"));

            }//ending i loop

            PlaceHolder1.Controls.Add(new LiteralControl("</table>"));
            dr.Close();
        

       
        }

        protected void add_cart_Click(object sender, EventArgs e)
        {
            //if (nmarray.Contains(Session["prodnm"]))
            //{
            //    MessageBox.Show("Item Alredy Exisits");
            //    Response.Redirect("~/search/main_search.aspx");
            //}


            //else
            

                if (Session["idarray"] != null)
                {

                    idlist = (ArrayList)Session["idarray"];
                    nmlist = (ArrayList)Session["nmarray"];
                    qtylist = (ArrayList)Session["qtyarray"];
                    ratelist = (ArrayList)Session["ratearray"];
                }

                    cnt = cnt + 1;
                    idlist.Add(Session["prodid"]);
                    Session.Add("idarray", idlist);


                    nmlist.Add(Session["prodnm"]);
                    Session.Add("nmarray", nmlist);


                    ratelist.Add(Session["rate"]);
                    Session.Add("ratearray", ratelist);


                    Session.Add("qty", DropDownList_stock.SelectedValue);
                    qtylist.Add(Session["qty"]);
                    Session.Add("qtyarray", qtylist);

                    Session.Add("cnt", cnt);
                    cntlist.Add(Session["cnt"]);
                    Session.Add("cntarray", cntlist);
                
    
                MessageBox.Show("Your Item Added The Cart");

                Response.Redirect("~/search/main_search.aspx");
            }
        }
    }
