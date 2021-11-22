using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Apple_Store_System.search
{
    public partial class main_search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_search_mobile_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/search/search_mobile.aspx");
        }

        protected void btn_accessories_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/search/search_accessories.aspx");
        }

        protected void btn_show_cart_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/search/ShowCart.aspx");

        }
    }
}