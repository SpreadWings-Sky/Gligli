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
    public partial class UserAdminPage : System.Web.UI.Page
    {
        //视频数统计
        public static int VideoCount = 0;
        public static int VideoNo = 0;
        public static int VideoTrue = 0;
        public static int Videopas = 0;
        //专栏
        public static int SpeCount = 0;
        public static int SpeNo = 0;
        public static int SpeTrue = 0;
        public static int Spepas = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                VideoData();
                DataBind();
            }
        }
        public  void VideoData()
        {
            int userid = int.Parse(Session["UserID"].ToString());
            //全部
            List<VideoInfo> list = VideoMMag.SelectVideoByUserID(userid);
            Repeater1.DataSource = list;
            VideoCount = list.Count;
            //进行中
            Repeater2.DataSource = VideoMMag.SelectVideoByUserIdNoExit(userid);
            VideoNo = VideoMMag.SelectVideoByUserIdNoExit(userid).Count;
            //通过
            Repeater3.DataSource = VideoMMag.SelectVideoByUserIdTrue(userid);
            VideoTrue = VideoMMag.SelectVideoByUserIdTrue(userid).Count;
            //驳回
            Repeater4.DataSource = VideoMMag.SelectVideoByUserIdPas(userid);
            Videopas = VideoMMag.SelectVideoByUserIdPas(userid).Count;

            //专栏
            //全部
            Repeater5.DataSource = SpeInfoMMag.SelectSpeAllByUserID(userid);
            SpeCount = SpeInfoMMag.SelectSpeAllByUserID(userid).Count;
            //进行中
            Repeater6.DataSource = SpeInfoMMag.SelectSpeNoByUserID(userid);
            SpeNo = SpeInfoMMag.SelectSpeNoByUserID(userid).Count;
            //通过
            Repeater7.DataSource = SpeInfoMMag.SelectSpeTrueByUserID(userid);
            SpeTrue = SpeInfoMMag.SelectSpeTrueByUserID(userid).Count;
            //驳回
            Repeater8.DataSource = SpeInfoMMag.SelectSpePasByUserID(userid);
            Spepas = SpeInfoMMag.SelectSpePasByUserID(userid).Count;
        }
    }
}