using BLL;
using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gligli
{
    public partial class video_playback : System.Web.UI.Page
    {
        public static int isLikeVideo = 1;
        public static int isKeepVideo = 1;
        public static int isWarchUser = 1;
        public static Dictionary<int, List<VComInfo>> dic = null;
        public static List<VComInfo> list = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            TypeVideoCountRepeater.DataSource = TypeInfoManager.SelectTypeVideoALL();
            if (Request["videoID"] == null)
            {
                Response.Redirect("gligli.aspx");
            }
            else
            {
                getvideo(int.Parse(Request["videoID"]));
                GetCount(int.Parse(Request["videoID"]));
                VideoList(int.Parse(Request["videoID"]), int.Parse(Session["type"].ToString()));
                CommentList(int.Parse(Request["videoID"]));
                IsLikeVideo(int.Parse(Session["LoginUserID"].ToString()), int.Parse(Request["videoID"]));
                IsKeepVideo(int.Parse(Session["LoginUserID"].ToString()), int.Parse(Request["videoID"]));
                IsWarchUser(int.Parse(Session["LoginUserID"].ToString()), int.Parse(Session["UserID"].ToString()));
            }
        }
        //视频点赞与取消点赞
        [WebMethod]
        public static void AddVideoLikeInfo(int userID, int videoID)
        {
            if (VideoMMag.AddVideoLikeInfo(userID, videoID))
            {
                isLikeVideo = 0;
            }
        }
        [WebMethod]
        public static void DelVideoLikeInfo(int userID, int videoID)
        {
            if (VideoMMag.DelVideoLikeInfo(userID, videoID))
            {
                isLikeVideo = 1;
            }
        }
        //视频收藏与取消收藏
        [WebMethod]
        public static void AddVideoKeepInfo(int userID, int videoID)
        {
            if (VideoMMag.AddVideoKeepInfo(userID, videoID))
            {
                isKeepVideo = 0;
            }
        }
        [WebMethod]
        public static void DelVideoKeepInfo(int userID, int videoID)
        {
            if (VideoMMag.DelVideoKeepInfo(userID, videoID))
            {
                isKeepVideo = 1;
            }
        }
        //关注与取消关注
        [WebMethod]
        public static void AddWarchInfo(int LoginUserID, int UpUserID)
        {
            if (VideoMMag.AddWarchInfo(LoginUserID, UpUserID))
            {
                isWarchUser = 0;
            }
        }
        [WebMethod]
        public static void DelWarchInfo(int LoginUserID, int UpUserID)
        {
            if (VideoMMag.DelWarchInfo(LoginUserID, UpUserID))
            {
                isWarchUser = 1;
            }
        }
        public static void IsLikeVideo(int userID, int videoID)
        {
            if (VideoMMag.IsLikeVideo(userID, videoID))
            {
                isLikeVideo = 0;
            }
            else
            {
                isLikeVideo = 1;
            }
        }
        public static void IsKeepVideo(int userID, int videoID)
        {
            if (VideoMMag.IsKeepVideo(userID, videoID))
            {
                isKeepVideo = 0;
            }
            else
            {
                isKeepVideo = 1;
            }
        }
        public static void IsWarchUser(int LoginUserID, int UpUserID)
        {
            if (VideoMMag.IsWarchUser(LoginUserID, UpUserID))
            {
                isWarchUser = 0;
            }
            else
            {
                isWarchUser = 1;
            }
        }
        private void GetCount(int id)
        {
            double a = VComManager.GetCount(id) / 10;
            Session["ComCount"] = a * 10;
            Session["Count"] = Convert.ToInt32(Math.Ceiling(a));
        }
        public void getvideo(int id)
        {
            VideoInfo vi = VideoMMag.getvideoList(id);
            Session["UserID"] = vi.UserID;
            Session["videoUrl"] = vi.VideoUrl;
            Session["videopic"] = vi.bacimg;
            Session["barrageUrl"] = vi.barrageUrl;
            Session["title"] = vi.Title;
            Session["videoplay"] = vi.VideoPlay;
            Session["uptime"] = vi.Uptime;
            Session["type"] = vi.type;
            Session["videoID"] = vi.VideoID;
            Session["username"] = vi.UserName;
            Session["introduction"] = vi.brief;
            Session["duction"] = vi.Duction;
            Session["LikeNum"] = vi.LikeNum;
            Session["keepNum"] = vi.keepNum;
            Session["WarchNum"] = vi.WarchNum;
            Session["headImg"] = vi.imageUrl;
            videotype(vi.type);
        }
        public static List<string> Videotype = null;
        public void videotype(int videotype)
        {
            Videotype = VideoMMag.GetVideoType(videotype);
        }
        private void VideoList(int id, int type)
        {
            this.videoList.DataSource = VideoMMag.Gethotlist(id, type);
            DataBind();

        }
        public static int index = 1;
        public static string type = "likeNum";
        public static void CommentList(int videoID)
        {
            list = VComManager.GetVideoComList(videoID, type, index);
            ReplyList(list, videoID);
        }
        private static void ReplyList(List<VComInfo> list, int videoID)
        {
            dic = new Dictionary<int, List<VComInfo>>();
            foreach (VComInfo item in list)
            {
                dic.Add(item.comID, VComManager.GetVideoreComList(item.comID, videoID));
            }
        }
        //评论页数
        [WebMethod]
        public static void ComIndex(int indexs, int VideoID)
        {
            index = indexs;
            CommentList(VideoID);
        }
        [WebMethod]
        public static void Like(int num, int videoID, int comID)
        {
            VComManager.ComLike(videoID, num, comID);
        }

        [WebMethod]
        public static void SendCom(string content, int loginID, int VideoID, string rcomid = null)
        {
            video_playback v = new video_playback();
            VComManager.AddComm(v.Server.HtmlEncode(content), loginID, VideoID, rcomid);
            CommentList(VideoID);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            type = "LikeNum";
            index = 1;
            CommentList(int.Parse(Session["videoID"].ToString()));
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            type = "ComTime";
            index = 1;
            CommentList(int.Parse(Session["videoID"].ToString()));
        }
        protected void UpdatePanel1_Load(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "replyLoad", "replyLoad();", true);
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
        //动态
        private void UserWarchVideoUpList()
        {
            UserWarchUpVideoList.DataSource = WarchInfoManager.SelectWarchJoinVideo(UserDataBin().userID);
        }
    }
}