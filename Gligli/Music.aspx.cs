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
    public partial class Music : System.Web.UI.Page
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
        //用户信息绑定
        public UserInfo UserDataBin()
        {
            return UserInfoManager.SelectUserByAccount(Base64Helper.Base64Decode(Request.Cookies["Account"].Value));
        }
        //用户退出登录
        protected void UserOutLogin_btn_Click(object sender, EventArgs e)
        {
            Response.Cookies["Account"].Expires = DateTime.Now.AddDays(-1);
            Session.Clear();
            Response.Redirect("gligli.aspx");
        }
    }
}