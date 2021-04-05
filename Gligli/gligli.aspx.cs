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
    public partial class gligli : System.Web.UI.Page
    {
        public static List<VideoInfo> v1 = null;
        public static List<VideoInfo> v2 = null;
        public static List<VideoInfo> v3 = null;
        public static List<SpeInfo> s1 = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                IndexDataBin();
                Session["LoginUserID"] = UserDataBin().userID;
                Session["UserID"] = UserDataBin().userID;
            }
               
        }

        private void IndexDataBin()
        {
            //轮播图绑定
            ImgDatabin();
            //热门视频
            HotVideoBin();
            //分类推荐
            HotTypeVideoBin();
            //分区视频数
            TypeVideoCountGet();
            //用户更新列表
            UserWarchVideoUpList();
            DataBind();
        }
        //分区视频推荐
        private void HotTypeVideoBin()
        {
            //动画区
            VideoTypeAniment.DataSource = VideoMMag.SelectVideoByType(1);
            v1 = VideoMMag.SelectVideoTop10ByType(1);
            //鬼畜
            VideoTypeGhost.DataSource = VideoMMag.SelectVideoByType(8);
            v2 = VideoMMag.SelectVideoTop10ByType(8);
            //音乐
            VideoTypeMusic.DataSource = VideoMMag.SelectVideoByType(11);
            v3 = VideoMMag.SelectVideoTop10ByType(11);
            //专栏
            SpItem.DataSource = SpeInfoMMag.SelectSpTop8StateAll();
            s1 = SpeInfoMMag.SelectSpTop9();
        }
        //热门视频
        private void HotVideoBin()
        {
            ContentHotVideo.DataSource = VideoMMag.SelectVideoHotTopSix();
        }
        //换一换
        //动画
        protected void Change_Btn1_Click(object sender, EventArgs e)
        {
            VideoTypeAniment.DataSource = VideoMMag.SelectVideoByType(1);
            VideoTypeAniment.DataBind();
        }
        //鬼畜
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            VideoTypeGhost.DataSource = VideoMMag.SelectVideoByType(8);
            VideoTypeGhost.DataBind();
        }
        //音乐
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            VideoTypeMusic.DataSource = VideoMMag.SelectVideoByType(11);
            VideoTypeMusic.DataBind();
        }
        //轮播图绑定
        private void ImgDatabin()
        {
            ImgRoctRepeater.DataSource = ImgRotationInfoMMag.SelectImgByPage("主页");
        }
        //动态
        private void UserWarchVideoUpList()
        {
            UserWarchUpVideoList.DataSource = WarchInfoManager.SelectWarchJoinVideo(UserDataBin().userID);
        }

        //计算时间差
        public string DateDiff(DateTime DateTime1, DateTime DateTime2)
        {
            string dateDiff = null;
            try { TimeSpan ts1 = new TimeSpan(DateTime1.Ticks); TimeSpan ts2 = new TimeSpan(DateTime2.Ticks); TimeSpan ts = ts1.Subtract(ts2).Duration(); dateDiff = ts.Days.ToString() + "天" + ts.Hours.ToString() + "小时" + ts.Minutes.ToString() + "分"; }
            catch
            {

            }
            return dateDiff;
        }
        //各分区视频总数获取
        private void TypeVideoCountGet()
        {
            TypeVideoCountRepeater.DataSource = TypeInfoManager.SelectTypeVideoALL();
        }
        //用户信息绑定
        public UserInfo UserDataBin()
        {
            UserInfo us = new UserInfo();

            if (Request.Cookies["Account"] != null)
            {
                return UserInfoManager.SelectUserByAccount(Base64Helper.Base64Decode(Request.Cookies["Account"].Value));
            }
            else
            {
                us.userName = "请登录";
                us.Fs = 0;
                us.Gz = 0;
            }
            return us;
        }
        //用户退出登录
        protected void UserOutLogin_btn_Click(object sender, EventArgs e)
        {
            Response.Cookies["Account"].Expires = DateTime.Now.AddDays(-1);
            Session.Clear();
            Response.Redirect("gligli.aspx");
        }

        
    }
}