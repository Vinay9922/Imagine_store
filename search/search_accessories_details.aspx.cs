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
    public partial class search_accessories_details : System.Web.UI.Page
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

        static String accid;

        protected void Page_Load(object sender, EventArgs e)
        {


            cn = new SqlConnection();
            cn.ConnectionString = "Data Source=(local);Initial Catalog=apple store;Integrated Security=True";
            cn.Open();
            if (!IsPostBack)
                accid = Request.QueryString["ID"];


            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select * from Accessories where acc_id=" + accid;
            dr = cmd.ExecuteReader();

            int cnt = 1;

            while (dr.Read())
            {
                cnt++;
            }
            dr.Close();


            cmd = new SqlCommand("select * from Accessories where acc_id=" + accid, cn);
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

                            Session.Add("rate", dr[3]);
                            Session.Add("prodid", dr[0]);
                            Session.Add("prodnm", dr[1]);


                        PlaceHolder1.Controls.Add(new LiteralControl("<td>"));
                        l1 = new Literal();
                        i1 = new Image();
                        h1 = new System.Web.UI.WebControls.HyperLink();
                        i1.Height = 500;
                        i1.Width = 500;
                        i1.ImageUrl = "~/photo/" + dr.GetString(4);
                        l1.Text = "<br>";
                        int stock;
                        PlaceHolder1.Controls.Add(i1);
                        PlaceHolder1.Controls.Add(new LiteralControl("</td><td align=right>"));
                        PlaceHolder1.Controls.Add(l1);
                        PlaceHolder1.Controls.Add(h1);

                        PlaceHolder1.Controls.Add(new LiteralControl("<h5>Name:&nbsp;&nbsp;&nbsp;" + dr.GetString(1) + ""));
                        PlaceHolder1.Controls.Add(new LiteralControl("<h5>Description:&nbsp;&nbsp;&nbsp;" + dr.GetString(2) + ""));
                        PlaceHolder1.Controls.Add(new LiteralControl("<h5>Rate:&nbsp;&nbsp;&nbsp;" + dr.GetInt32(3) + ""));
                        PlaceHolder1.Controls.Add(new LiteralControl("<h5>Stock:&nbsp;&nbsp;&nbsp;" + dr.GetInt32(5) + ""));
                       
                        stock = Convert.ToInt32(dr[5]);
                        if (stock == 0)
                        {
                            DropDownlist_stock.Enabled = false;
                            btn_add_to_cart.Enabled = false;
                        }
                        else
                        {
                            for (int x = 1; x <= stock; x++)
                            {
                                DropDownlist_stock.Items.Add(Convert.ToString(x));
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

        protected void btn_add_to_cart_Click(object sender, EventArgs e)
        {

            //if (nmarray.Contains(Session["prodnm"]))
            //{
            //    MessageBox.Show("Item Alredy Exisits");
            //    Response.Redirect("~/search/main_search.aspx");
            //}
            //else
            //{

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
                         Session.Add("ratearray", ratelist );


                    Session.Add("qty", DropDownlist_stock.SelectedValue);
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

