using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Models;

namespace Gligli
{
    public partial class special_column : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserInfo info = new UserInfo();
            info = UserInfoManager.Add(1000015);
            this.touxiang.Text = info.userName;
            this.touxiang2.Text = info.brief;
            this.Image1.ImageUrl = info.imgurl;
            getSpeInfo();
        }
        private void getSpeInfo()
        {
            this.SpeInfo.DataSource = SpeInfoMMag.Info(1000015);
            this.SpeInfo.DataBind();
        }
    }
}