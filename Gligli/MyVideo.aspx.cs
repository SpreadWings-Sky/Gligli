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
    public partial class MyVideo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            UserInfo info = new UserInfo();
            info = UserInfoManager.Add(1000015);
            this.Label1.Text = info.userName;
            this.touxiang.Text = info.userName;
            this.touxiang2.Text = info.brief;
            this.Image1.ImageUrl = info.imgurl;

            getVideoLikeInfo();
            getnum();
        }
        private void getVideoLikeInfo()
        {
            this.VideoLikeInfo.DataSource = giligiliManager.VideoInfo(1000015);
            this.VideoLikeInfo.DataBind();
        }
        private void getnum()
        {
            this.num.DataSource = giligiliManager.Num(1000015);
            this.num.DataBind();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string sea = this.TextBox1.Text;
            this.VideoLikeInfo.DataSource = giligiliManager.Search(1000015, sea);
            this.VideoLikeInfo.DataBind();
        }
    }
}