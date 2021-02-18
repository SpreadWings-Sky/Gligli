using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gligli
{
    public partial class Admin_index : System.Web.UI.MasterPage
    {
        //检测用户登录状态
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["userName"]!= null)
                {
                    this.user.Text = Session["userName"].ToString();
                    this.userimg.ImageUrl = Session["userImg"].ToString();
                }
                else
                {
                    Response.Redirect("AdminLogin.aspx");
                }
            }
        }
        //选项切换
        //主页
        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin-home.aspx");
        }
        //退出登录
        protected void Exit_Click(object sender, EventArgs e)
        {
            //清空会话状态
            Session.Abandon();
            Response.Redirect("AdminLogin.aspx");
        }
    }
}