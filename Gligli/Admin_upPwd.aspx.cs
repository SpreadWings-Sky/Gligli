using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Gligli
{
    public partial class Admin_upPwd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //修改密码
        protected void UpPwdBtn_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text.Trim().Equals("")|| TextBox2.Text.Trim().Equals("")|| TextBox3.Text.Trim().Equals(""))
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('请输入完整', 'warning', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');</script>");
                return;
            }
            if (TextBox2.Text.Trim() != TextBox3.Text.Trim())
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('两次输入的密码不一致', 'warning', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');</script>");
                return;
            }
            if (UserInfoListMMag.SelectUserPwd(Session["userAccount"].ToString(), TextBox1.Text.Trim()))
            {
                if(UserInfoListMMag.UpPwdByNameAndAccount(Session["userName"].ToString(), Session["userAccount"].ToString(), TextBox2.Text.Trim()))
                {
                    LikeLog();
                }
                else
                {
                    ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('修改失败', 'warning', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');</script>");
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('旧密码错误!', 'warning', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');</script>");
            }
        }
        private void LikeLog()
        {
            Session.RemoveAll();
            Response.Redirect("AdminLogin.aspx");
        }
    }
}