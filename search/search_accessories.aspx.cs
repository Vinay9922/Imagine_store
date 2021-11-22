using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Apple_Store_System.search
{
    public partial class search_accessories : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
           cn = new SqlConnection();
            cn.ConnectionString = "Data Source=(local);Initial Catalog=apple store;Integrated Security=True";
            cn.Open();


            cmd = new SqlCommand("SELECT * FROM Accessories", cn);
                dr = cmd.ExecuteReader();
                int cnt = 1;

                while (dr.Read())
                {
                    cnt++;
                }
                dr.Close();
                cmd = new SqlCommand("SELECT * FROM Accessories", cn);
                dr = cmd.ExecuteReader();
                int i;
                Literal lit1, lit2, lit3, lit4, lit5;
                lit1 = new Literal();
                lit2 = new Literal();
                lit3 = new Literal();
                lit4 = new Literal();
                lit5 = new Literal();

                lit1.Text = "<table border=3 bgcolor='white'>";
                lit2.Text = "<tr>";
                lit3.Text = "<td align=center width=100 height=100 >";
                lit4.Text = "</td>";
                lit5.Text = "</tr>";
                PlaceHolder1.Controls.Add(new LiteralControl("<table border=4><br>"));
                PlaceHolder1.Controls.Add(new LiteralControl("<tr>"));
                int j;
                for (i = 0; i < cnt; i++)
                {
                    for (j = 0; j < 5; j++)
                    {
                        if (dr.Read())
                        {
     PlaceHolder1.Controls.Add(new LiteralControl("<td width=200 style=border-right-style: ridge; border-right-color:orange;><center>"));
PlaceHolder1.Controls.Add(new LiteralControl("<a href=search_accessories_details.aspx?ID=" + dr[0].ToString() + "><img src='../photo/" + dr[4].ToString() + "' height=150 width=150 ></img></a><br>"));
  PlaceHolder1.Controls.Add(new LiteralControl("<font color=orange size=4>" + dr[1].ToString() + "</font>"));
  PlaceHolder1.Controls.Add(new LiteralControl("</a><br>"));
    PlaceHolder1.Controls.Add(new LiteralControl("<font color=orange size=4>" + ("Rs.") + "</font>"));
    PlaceHolder1.Controls.Add(new LiteralControl("<font color=orange size=4>" + dr[3].ToString() + "/-</font>"));
                         PlaceHolder1.Controls.Add(new LiteralControl("</center></td>"));
                        }
    
                    }
                    PlaceHolder1.Controls.Add(new LiteralControl("</tr>"));

                }

                PlaceHolder1.Controls.Add(new LiteralControl("</table>"));

            
        }
    }
}