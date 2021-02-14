using GliDAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gligli
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UserLoginbtn_Click(object sender, EventArgs e)
        {
            //获取用户信息
            string Account = this.UserName.Text;
            string pwd = this.password.Text;
            //判断是否为空
            if (Account.Equals("") || pwd.Equals("")) return;
            //数据进行验证
            if (UserInfoServ.UserLogin(Account, pwd))
            {
                
            }
            else
            {
                Response.Write("<script>alert('账号或密码错误');</script>");
            }
        }
    }
}