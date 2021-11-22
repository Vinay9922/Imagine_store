using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Windows.Forms;

namespace Apple_Store_System.search
{
    public partial class ShowCart : System.Web.UI.Page
    {
        ArrayList idarray;
        ArrayList nmarray;
        ArrayList qtyarray;
        ArrayList ratearray;
        ArrayList cntarray;
        float grand;
        protected void Page_Load(object sender, EventArgs e)
        {

            float tax;
            idarray = new ArrayList();
            nmarray = new ArrayList();
            ratearray = new ArrayList();
            cntarray = new ArrayList();
            qtyarray = new ArrayList();
            int i;
            idarray = (ArrayList)Session["idarray"];
            nmarray = (ArrayList)Session["nmarray"];
            ratearray = (ArrayList)Session["ratearray"];
            qtyarray = (ArrayList)Session["qtyarray"];
            cntarray = (ArrayList)Session["cntarray"];
            Literal lit1, lit2, lit3, lit4;
            lit1 = new Literal();
            lit2 = new Literal();
            lit3 = new Literal();
            lit4 = new Literal();

            lit1.Text = "<Table class='table' style='color:black;font-size:larger;' ><tr ><td align=center><font  size=4 >SR No</font></td><td align=center><font  size=4>Item Name</font></td><td align=center><font  size=4>Rate</font></td><td align=center><font  size=4>Qty</font></td> <td align=center><font  size=4>Amount</font></td></tr>";

            lit4.Text = "</Table>";
            int tot = 0;
            PlaceHolder1.Controls.Add(lit1);

            if (idarray==null)
            {
                MessageBox.Show("not avaliable");
                Response.Redirect("~/search/main_search.aspx");
            }
            else
            {


                for (i = 0; i <= idarray.Count - 1; i++)
                {
                    PlaceHolder1.Controls.Add(new LiteralControl("<tr>"));

                    PlaceHolder1.Controls.Add(new LiteralControl("<td width=200 align=center>" + (i + 1)));
                    PlaceHolder1.Controls.Add(new LiteralControl("</td>"));
                    PlaceHolder1.Controls.Add(new LiteralControl("<td width=200 align=center>" + nmarray[i]));
                    PlaceHolder1.Controls.Add(new LiteralControl("</td>"));
                    PlaceHolder1.Controls.Add(new LiteralControl("<td width=200 align=center>" + ratearray[i]));
                    PlaceHolder1.Controls.Add(new LiteralControl("</td>"));
                    PlaceHolder1.Controls.Add(new LiteralControl("<td width=200 align=center>" + qtyarray[i]));
                    PlaceHolder1.Controls.Add(new LiteralControl("</td>"));
                    PlaceHolder1.Controls.Add(new LiteralControl("<td width=200 align=center>" + Convert.ToInt32(ratearray[i]) * Convert.ToInt32(qtyarray[i])));
                    PlaceHolder1.Controls.Add(new LiteralControl("</td>"));
                    PlaceHolder1.Controls.Add(new LiteralControl("</td>"));
                    PlaceHolder1.Controls.Add(new LiteralControl("<td width=200 align=center><a href=cancle_product.aspx?ID=" + (i) + ">Cancel</a>"));

                    PlaceHolder1.Controls.Add(new LiteralControl("</td>"));
                    PlaceHolder1.Controls.Add(new LiteralControl("</tr>"));
                    tot += Convert.ToInt32(ratearray[i]) * Convert.ToInt32(qtyarray[i]);
                }
                Session.Add("tot", tot);
                PlaceHolder1.Controls.Add(new LiteralControl("<tr>"));
                PlaceHolder1.Controls.Add(new LiteralControl("<td width=200 align=center>"));
                PlaceHolder1.Controls.Add(new LiteralControl("</td>"));
                PlaceHolder1.Controls.Add(new LiteralControl("<td width=200 align=center>"));
                PlaceHolder1.Controls.Add(new LiteralControl("</td>"));
                PlaceHolder1.Controls.Add(new LiteralControl("<td width=200 align=center>"));
                PlaceHolder1.Controls.Add(new LiteralControl("</td>"));

                PlaceHolder1.Controls.Add(new LiteralControl("<td width=200 align=center><font  size=4>Total  </font>"));
                PlaceHolder1.Controls.Add(new LiteralControl("</td><td width=200 align=center><font  size=4>" + tot + "</font>"));
                PlaceHolder1.Controls.Add(new LiteralControl("</td></tr>"));


                PlaceHolder1.Controls.Add(new LiteralControl("<tr>"));
                PlaceHolder1.Controls.Add(new LiteralControl("<td width=200 align=center>"));
                PlaceHolder1.Controls.Add(new LiteralControl("</td>"));
                PlaceHolder1.Controls.Add(new LiteralControl("<td width=200 align=center>"));
                PlaceHolder1.Controls.Add(new LiteralControl("</td>"));
                PlaceHolder1.Controls.Add(new LiteralControl("<td width=200 align=center>"));
                PlaceHolder1.Controls.Add(new LiteralControl("</td>"));

                PlaceHolder1.Controls.Add(new LiteralControl("<td width=200 align=center><font  size=4>GST(5%)</font>"));
                tax = (tot * 5.0f) / 100;
                Session.Add("gstamt", tax);
                PlaceHolder1.Controls.Add(new LiteralControl("</td><td width=200 align=center><font  size=4>" + tax + "</font>"));
                PlaceHolder1.Controls.Add(new LiteralControl("</td></tr>"));

                PlaceHolder1.Controls.Add(new LiteralControl("<tr>"));
                PlaceHolder1.Controls.Add(new LiteralControl("<td width=200 align=center>"));
                PlaceHolder1.Controls.Add(new LiteralControl("</td>"));
                PlaceHolder1.Controls.Add(new LiteralControl("<td width=200 align=center>"));
                PlaceHolder1.Controls.Add(new LiteralControl("</td>"));
                PlaceHolder1.Controls.Add(new LiteralControl("<td width=200 align=center>"));
                PlaceHolder1.Controls.Add(new LiteralControl("</td>"));

                PlaceHolder1.Controls.Add(new LiteralControl("<td width=200 align=center><font  size=4>Grand Total  </font>"));
                grand = tot+tax;
                PlaceHolder1.Controls.Add(new LiteralControl("</td><td width=200 align=center><font  size=4>" + grand + "</font>"));
                PlaceHolder1.Controls.Add(new LiteralControl("</td></tr>"));
                Session.Add("grand", grand);


                PlaceHolder1.Controls.Add(lit4);
            }
        }

        protected void btn_buy_now_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Form_user_login.aspx");
        }
    }
}