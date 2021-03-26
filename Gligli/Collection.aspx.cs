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
    public partial class Collection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserInfo info = new UserInfo();
            info = UserInfoManager.Add(1000015);
            this.touxiang.Text = info.userName;
            this.touxiang2.Text = info.brief;
            this.Image1.ImageUrl = info.imgurl;


            getVideoLikeInfo();
            getnum();
        }
        private void getVideoLikeInfo()
        {
            this.VideoLikeInfo.DataSource = VideoLikeInfoManager.Info(1000015);
            this.VideoLikeInfo.DataBind();
        }
        private void getnum()
        {
            this.num.DataSource = VideoLikeInfoManager.Num(1000015);
            this.num.DataBind();
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            string sea = this.TextBox1.Text;
            this.VideoLikeInfo.DataSource = VideoLikeInfoManager.Search(1000015, sea);
            this.VideoLikeInfo.DataBind();
        }
    }
}