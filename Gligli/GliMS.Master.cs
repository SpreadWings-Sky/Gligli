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
    public partial class GliMS : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //关注动态
                UserWarchVideoUpList();
                //分区视频数
                TypeVideoCountGet();
                DataBind();
            }
                
        }
        //动态
        private void UserWarchVideoUpList()
        {
            UserWarchUpVideoList.DataSource = WarchInfoManager.SelectWarchJoinVideo(UserDataBin().userID);
        }

        //计算时间差
        public string DateDiff(DateTime DateTime1, DateTime DateTime2)
        {
            string dateDiff = null;
            try { TimeSpan ts1 = new TimeSpan(DateTime1.Ticks); TimeSpan ts2 = new TimeSpan(DateTime2.Ticks); TimeSpan ts = ts1.Subtract(ts2).Duration(); dateDiff = ts.Days.ToString() + "天" + ts.Hours.ToString() + "小时" + ts.Minutes.ToString() + "分"; }
            catch
            {

            }
            return dateDiff;
        }
        //各分区视频总数获取
        private void TypeVideoCountGet()
        {
            TypeVideoCountRepeater.DataSource = TypeInfoManager.SelectTypeVideoALL();
        }
        //用户信息绑定
        public UserInfo UserDataBin()
        {
            UserInfo us = new UserInfo();

            if (Request.Cookies["Account"] != null)
            {
                return UserInfoManager.SelectUserByAccount(Base64Helper.Base64Decode(Request.Cookies["Account"].Value));
            }
            else
            {
                us.userName = "请登录";
                us.Fs = 0;
                us.Gz = 0;
            }
            return us;
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