using BLL;
using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gligli
{
    public partial class Details : System.Web.UI.Page
    {
        public static SpeInfo Spe = new SpeInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Sptui.DataSource = SpeInfoMMag.Sptui();
            if (Request.QueryString["id"] != null)
            {
                if (!IsPostBack)
                {
                    int id = int.Parse(Request.QueryString["id"]);
                    this.spList.DataSource = SpeInfoMMag.Deta(id);
                    Spe = SpeInfoMMag.UsInfo(id);
                    SpeInfoMMag.SpNu(id);
                }
            }
            DataBind();
        }
    }
}