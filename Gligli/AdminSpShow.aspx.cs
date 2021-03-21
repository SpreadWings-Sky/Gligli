using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Gligli
{
    public partial class AdminSpShow : System.Web.UI.Page
    {
        public string Mdstr = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["SpId"] != null&&Request.QueryString["SpId"] !=string.Empty)
                {
                    Mdstr = Server.UrlDecode(SelectSpByID());
                }
            }
        }
        protected string SelectSpByID()
        {
            return SpeInfoMMag.SelectSpByID(int.Parse(Request.QueryString["SpId"]));
        }
    }
}