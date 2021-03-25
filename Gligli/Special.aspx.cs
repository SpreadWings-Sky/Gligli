using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;
using BLL;

namespace Gligli
{
    public partial class Special : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.clList.DataSource = ImgRotationInfoMMag.ImgRotationInfos();

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