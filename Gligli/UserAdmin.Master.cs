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
    public partial class UserAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Account"] == null || Request.Cookies["Account"].Value == string.Empty)
            {
                 Response.Redirect("Login.aspx");
            }
            else
            {
                Session["UserID"] = UserData().userID;
            }
        }
        public  UserInfo UserData()
        {
            return UserInfoManager.SelectUserByAccount(Base64Helper.Base64Decode(Request.Cookies["Account"].Value));
        }
        //计算时间差
        public string DateDiff(DateTime DateTime1, DateTime DateTime2)
        {
            string dateDiff = null;
            try { TimeSpan ts1 = new TimeSpan(DateTime1.Ticks); TimeSpan ts2 = new TimeSpan(DateTime2.Ticks); TimeSpan ts = ts1.Subtract(ts2).Duration(); dateDiff = ts.Days.ToString() + "天"; }
            catch
            {

            }
            return dateDiff;
        }
    }
}