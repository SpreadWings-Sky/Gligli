using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gligli
{
    public partial class UserAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Account"] == null || Request.Cookies["Account"].ToString() == string.Empty)
            {
                 Response.Redirect("Login.aspx");
            }
        }
    }
}