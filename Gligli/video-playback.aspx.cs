using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;
using BLL;

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
        private void CommentList(int videoID, string type = "likenum", int num = 1)
        {
            list = VComManager.GetVideoComList(videoID, type, num);
            ReplyList(list, videoID);
        }
        private void ReplyList(List<VComInfo> list, int videoID)
        {
            dic = new Dictionary<int, List<VComInfo>>();
            foreach (VComInfo item in list)
            {
                dic.Add(item.comID, VComManager.GetVideoreComList(item.comID, videoID));
            }
        }
        public void GetDetails(int videoId, string type)
        {
            CommentList(videoId, type);
        }
        //评论页数
        protected void num_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string rcomid = null;
            rcomid = Label1.Text == "" ? null : Label1.Text;
            string content = TextBox1.Text;
            VComManager.AddComm(content, 1000015, int.Parse(Session["videoID"].ToString()), rcomid);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            CommentList(100012, "likenum");
            string send = this.TextBox1.Text;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            CommentList(100012, "comtime");
            string send = this.TextBox1.Text;
        }
    }
}