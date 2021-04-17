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
    public partial class Details : System.Web.UI.Page
    {
        public static SpeInfo Spe = new SpeInfo();
        public static List<SComInfo> list = null;
        public static Dictionary<int, List<SComInfo>> dic = null;
        protected void Page_Load(object sender, EventArgs e)
        {

            this.Sptui.DataSource = SpeInfoMMag.Sptui();
            if (Request.QueryString["id"] != null)
            {
                if (!IsPostBack)
                {

                    int id = int.Parse(Request.QueryString["id"]);
                    this.spList.DataSource = SpeInfoMMag.Deta(id);
                    Spe = SpeInfoMMag.UsInfo(id);
                    SpeInfoMMag.SpNu(id);
                    GetCount(id);
                    CommentList(id);
                }
            }
            else
            {
                Response.Redirect("gligli.aspx");
            }
            DataBind();
        }
        //评论数量
        protected void GetCount(int id)
        {
            double a = VComManager.GetCount(id) / 10;
            Session["ComCount"] = a * 10;
            Session["Count"] = Convert.ToInt32(Math.Ceiling(a));
        }
        public static int index = 1;
        public static string type = "likeNum";
        public static void CommentList(int SpID)
        {
            list = SComManager.GetVideoComList(SpID, type, index);
            ReplyList(list, SpID);
        }
        [WebMethod]
        public static void ComIndex(int indexs, int SpID)
        {
            index = indexs;
            CommentList(SpID);
        }
        [WebMethod]
        public static void Like(int num, int SpID, int comID)
        {
            SComManager.ComLike(SpID, num, comID);
        }
        [WebMethod]
        private static void ReplyList(List<SComInfo> list, int SpID)
        {
            dic = new Dictionary<int, List<SComInfo>>();
            foreach (SComInfo item in list)
            {
                dic.Add(item.comID, SComManager.GetVideoreComList(item.comID, SpID));
            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            type = "LikeNum";
            index = 1;
            CommentList(int.Parse(Request.QueryString["id"].ToString()));
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            type = "ComTime";
            index = 1;
            CommentList(int.Parse(Request.QueryString["id"].ToString()));
        }
        public static void SendCom(string content, int loginID, int SpID, string rcomid = null)
        {
            SComManager.AddComm(content, loginID, SpID, rcomid);
            CommentList(SpID);
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            if (Request.Cookies["Account"] == null)
            {

                Response.Write("<script>alert('您未登录，请先登录!');location.href='Details.aspx?id=" + id + "';</script>");
                return;
            }
            if (sendbox.Text.Length < 1)
            {
                Response.Write("<script>alert('评论不能为空');location.href='Details.aspx?id=" + id + "';</script>");
                return;
                //Response.Redirect($"Details.aspx?id={id}");
            }

            else
            {
                SpeInfo com = new SpeInfo()
                {
                    spID = int.Parse(Request.QueryString["id"]),
                    Comment = this.sendbox.Text,
                    UserID = int.Parse(Session["LoginUserID"].ToString()),
                };
                SpeInfoMMag.SpComs(com);
                Response.Redirect($"Details.aspx?id={com.spID}");
            }
        }

    }   
}