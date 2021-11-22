using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms ;


namespace Apple_Store_System
{
    public partial class Form_admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (Txt_user.Text == "admin")
            {
                if (Txt_pass.Text == "12345")
                {
                    MessageBox.Show("login successful");
                    Response.Redirect("~/admindashboardform.aspx");
                }
                else
                {
                    MessageBox.Show("Enter Correct Password");
                }
            }
            else
            {
                MessageBox.Show("Enter Correct username");
            }
        }

       
    }
}