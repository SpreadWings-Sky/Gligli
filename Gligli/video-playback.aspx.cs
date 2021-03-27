using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;
using BLL;
using System.Web.Services;

namespace Gligli
{
    public partial class video_playback : System.Web.UI.Page
    {
        public static Dictionary<int, List<VComInfo>> dic = null;
        public static List<VComInfo> list = null;
        protected void Page_Load(object sender, EventArgs e)
        {
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
            }
        }
        private void GetCount(int id)
        {
            double a = VComManager.GetCount(id) / 10;
            Session["Count"] = Convert.ToInt32(Math.Ceiling(a));
        }
        public void getvideo(int id)
        {
            VideoInfo vi = VideoMMag.getvideoList(id);
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                return;
            }
            if (Session["LoginUserID"] == null)
            {
                Response.Write("<script>alert('请登录！！')</script> ");
                return;
            }
            string rcomid = null;
            rcomid = Label1.Text == "" ? null : Label1.Text;
            string content = TextBox1.Text;
            if (VComManager.AddComm(content, 1000015, int.Parse(Session["videoID"].ToString()), rcomid))
            {
                TextBox1.Text = "";
                Label1.Text = "";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox4.Text == null)
            {
                return;
            }
            if (Session["LoginUserID"] == null)
            {
                Response.Write("<script>alert('请登录！！')</script> ");
                return;
            }
            string rcomid = null;
            rcomid = Label1.Text == "" ? null : Label1.Text;
            string content = TextBox4.Text;
            if (VComManager.AddComm(content, 1000015, int.Parse(Session["videoID"].ToString()), rcomid))
            {
                TextBox1.Text = "";
                Label1.Text = "";
            }
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
        public UserInfo UserDataBin()
        {
            return UserInfoManager.SelectUserByAccount(Base64Helper.Base64Decode(Request.Cookies["Account"].Value));
        }
        //用户退出登录
        protected void UserOutLogin_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("OutLogin.aspx");
        }
    }
}