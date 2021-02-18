using GliDAL;
using Models;
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
            if (!IsPostBack)
            {
                this.UserName.Text = null;
                this.password.Text = null;
            }
        }
        protected void UserLoginbtn_Click(object sender, EventArgs e)
        {
            //获取用户信息
            string Account = this.UserName.Text.Trim();
            string pwd = this.password.Text.Trim();
            //判断是否为空
            if (Account.Equals("") || pwd.Equals(""))
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>iziToast.warning({ title: '提示', message: '请输入账号和密码！', });</script>");
                return;
            }
            //数据进行验证
            UserInfo user = UserInfoServ.UserLogin(Account);
            if (user.Account==null)
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>iziToast.error({title: '提示',message: '账号不存在！',});</script>");
                return;
            }
            if (user.Account == Account&&user.pwd==pwd)
            {
                if (user.state.Equals("gl"))
                {
                    Session["userName"] = user.userName;
                    Session["userAccount"] = user.Account;
                    Session["userImg"] = user.imgurl;
                    Response.Redirect("admin-home.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>iziToast.error({title: '失败',message: '账号没有管理员权限！',});</script>");
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>iziToast.error({title: '失败',message: '密码错误！',});</script>");
            }
        }
    }
}