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
        public int id = 1000015;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Account"] == null)
            {
                Response.Write("<script>alert('请先登录！');location.href='Login.aspx'</script>");
            }
            id = UserInfoManager.SelectUserByAccount(Base64Helper.Base64Decode(Request.Cookies["Account"].Value)).userID;
            UserInfo info = new UserInfo();
            info = UserInfoManager.Add(id);
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
            this.newsList.DataSource = giligiliManager.giligili(id);
            this.newsList.DataBind();
        }
        private void GiligiliListNum()
        {
            this.GiligiliNum.DataSource = giligiliManager.Num(id);
            this.GiligiliNum.DataBind();
        }

        private void getSpeInfo()
        {
            this.SpeInfo.DataSource = SpeInfoMMag.SpeInfo(id);
            this.SpeInfo.DataBind();
        }
        private void Collection()
        {
            this.CollectionList.DataSource = CollectionManager.giligili2(id);
            this.CollectionList.DataBind();
        }
        private void getVideoLikeInfo()
        {
            this.VideoLikeInfo.DataSource = VideoLikeInfoManager.Info2(id);
            this.VideoLikeInfo.DataBind();
        }
        private void getVideoLikeInfoNum()
        {
            this.VideoLikeInfoNum.DataSource = VideoLikeInfoManager.Num(id);
            this.VideoLikeInfoNum.DataBind();
        }
    }
}