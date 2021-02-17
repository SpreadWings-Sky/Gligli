using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gligli
{
    public partial class Admin_index : System.Web.UI.MasterPage
    {
        public string user = "张三";
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("gligli.aspx");
        }
    }
}