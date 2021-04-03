using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gligli
{
    public partial class LightFiction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.spList.DataSource = SpeInfoMMag.SpeInfos();

            this.Ranlist.DataSource = SpeRanManager.SpeRans();
            this.Ranlist1.DataSource = SpeRanManager.SpeRans();
            this.Ranlist2.DataSource = SpeRanManager.SpeRans();
            this.Ranlist3.DataSource = SpeRanManager.SpeRans();

            this.UserInfo.DataSource = UserInfoManager.UserInfos();
            DataBind();
        }
    }
}