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
    public partial class VideoTypeListWeb : System.Web.UI.Page
    {
        public static string type = "";
        public static List<VideoInfo> v1 = new List<VideoInfo>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["Type"] == null)
            {
                Response.Redirect("gligli.aspx");
            }
            else
            {
                type = Request["Type"];
                if (!IsPostBack)
                {
                    VideoTop(type);
                    IndexDataBin();
                }
                
            }
        }

        private void IndexDataBin()
        {
            //轮播图绑定
            ImgDatabin();
            //热门视频
            HotVideoBin();
            //用户更新列表
            UserWarchVideoUpList();
            DataBind();
        }
        //热门视频
        private void HotVideoBin()
        {
            ContentHotVideo.DataSource = VideoMMag.SelectVideoHotTopSix();
        }
        //轮播图绑定
        private void ImgDatabin()
        {
            ImgRoctRepeater.DataSource = ImgRotationInfoMMag.SelectImgByPage(type);
        }
        //动态
        private void UserWarchVideoUpList()
        {
            UserWarchUpVideoList.DataSource = WarchInfoManager.SelectWarchJoinVideo(UserDataBin().userID);
        }
        //数据
        private void VideoTop(string type)
        {
            switch (type)
            {
                case "音乐":
                    v1= VideoMMag.SelectVideoTop10ByType(11);
                    list_Repeater.DataSource = VideoMMag.SelectVideoByTypeWeb(11);
                    list2_Repeater.DataSource = VideoMMag.SelectVideoAllByType(11);
                    List3_Repeater.DataSource = VideoMMag.SelectVideoAllByType(11);
                    List4_Repeater.DataSource = VideoMMag.SelectVideoAllByType(11);
                    break;
                case "动画":
                    v1 = VideoMMag.SelectVideoTop10ByType(1);
                    list_Repeater.DataSource = VideoMMag.SelectVideoByTypeWeb(1);
                    list2_Repeater.DataSource = VideoMMag.SelectVideoAllByType(1);
                    List3_Repeater.DataSource = VideoMMag.SelectVideoAllByType(1);
                    List4_Repeater.DataSource = VideoMMag.SelectVideoAllByType(1);
                    break;
                case "鬼畜":
                    v1 = VideoMMag.SelectVideoTop10ByType(8);
                    list_Repeater.DataSource = VideoMMag.SelectVideoByTypeWeb(8);
                    list2_Repeater.DataSource = VideoMMag.SelectVideoAllByType(8);
                    List3_Repeater.DataSource = VideoMMag.SelectVideoAllByType(8);
                    List4_Repeater.DataSource = VideoMMag.SelectVideoAllByType(8);
                    break;
                default:
                    Response.Redirect("gligli.aspx");
                    break;
            }
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
        //换一换
        protected void Change_btn_Click(object sender, EventArgs e)
        {
            VideoTop(type);
            list_Repeater.DataBind();
        }
    }
}