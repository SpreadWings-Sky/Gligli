using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Gligli
{
    public partial class gligli : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                IndexDataBin();
        }

        private void IndexDataBin()
        {
            //轮播图绑定
            ImgDatabin();
            HotVideoBin();
            HotTypeVideoBin();
            DataBind();
        }
        //分区视频推荐
        private void HotTypeVideoBin()
        {
            //动画区
            VideoTypeAniment.DataSource = VideoMMag.SelectVideoByType(1);
            //鬼畜
            VideoTypeGhost.DataSource = VideoMMag.SelectVideoByType(3);
            //音乐
            VideoTypeMusic.DataSource = VideoMMag.SelectVideoByType(2);
        }
        //热门视频
        private void HotVideoBin()
        {
            ContentHotVideo.DataSource = VideoMMag.SelectVideoHotTopSix();
        }

        //轮播图绑定
        private void ImgDatabin()
        {
            ImgRoctRepeater.DataSource = ImgRotationInfoMMag.SelectImgByPage("主页");
        }
        //用户退出登录
        protected void UserOutLogin_btn_Click(object sender, EventArgs e)
        {
            Response.Cookies["Account"].Expires = DateTime.Now.AddDays(-1);
            Session.Clear();
            Response.Redirect(Request.Url.ToString());
        }
    }
}