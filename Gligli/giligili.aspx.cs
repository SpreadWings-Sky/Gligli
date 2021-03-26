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
    public partial class giligili : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserInfo info = new UserInfo();
            info = UserInfoManager.Add(1000015);
            this.touxiang.Text = info.userName;
            this.touxiang2.Text = info.brief;
            this.Image1.ImageUrl = info.imgurl;

            getGiligiliList();
            Collection();
            getSpeInfo();
            getVideoLikeInfo();
            getVideoLikeInfoNum();
            GiligiliListNum();
        }
        private void getGiligiliList()
        {
            this.newsList.DataSource = giligiliManager.giligili(1000015);
            this.newsList.DataBind();
        }
        private void GiligiliListNum()
        {
            this.GiligiliNum.DataSource = giligiliManager.Num(1000015);
            this.GiligiliNum.DataBind();
        }

        private void getSpeInfo()
        {
            this.SpeInfo.DataSource = SpeInfoMMag.Info(1000015);
            this.SpeInfo.DataBind();
        }
        private void Collection()
        {
            this.CollectionList.DataSource = CollectionManager.giligili(1000015);
            this.CollectionList.DataBind();
        }
        private void getVideoLikeInfo()
        {
            this.VideoLikeInfo.DataSource = VideoLikeInfoManager.Info2(1000015);
            this.VideoLikeInfo.DataBind();
        }
        private void getVideoLikeInfoNum()
        {
            this.VideoLikeInfoNum.DataSource = VideoLikeInfoManager.Num(1000015);
            this.VideoLikeInfoNum.DataBind();
        }
    }
}