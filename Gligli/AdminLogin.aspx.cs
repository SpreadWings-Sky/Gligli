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
            if (Account.Equals("") || pwd.Equals(""))
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>iziToast.warning({ title: '提示', message: '请输入账号和密码！', });</script>");
                return;
            }
            //数据进行验证
            if (UserInfoServ.UserLogin(Account, pwd))
            {
                Session["Account"] = Account;
                Session["pwd"] = pwd;
                Response.Redirect("gligli.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>iziToast.error({title: '失败',message: '账号或密码错误！',});</script>");
            }
        }
    }
}