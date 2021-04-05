using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text.RegularExpressions;
using Models;
using BLL;
using System.Web.WebSockets;

namespace Gligli
{
    public partial class UserUp : System.Web.UI.Page
    {
        public static string txt = "无";
        public static string html = "无";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Video_typelist.DataSource = TypeInfoManager.SelectTypeAll();
                DataBind();
            }
        }
        //视频投稿
        protected void VideoUp_btn_Click(object sender, EventArgs e)
        {
            string title = Video_title.Text;
            string desc = Video_desc.Text;
            if (title == string.Empty || title == null)
            {
                Response.Write("<script>alert('输入标题')</script>");
                return;
            }
            string fileName = "";
            if (Video_up.HasFile)
            {
                fileName = Video_up.FileName.Trim();
                string fileFix = Path.GetExtension(fileName).ToLower();
                if (fileFix == ".mp4" || fileFix == ".flv")
                {
                    Video_up.SaveAs(Server.MapPath((".\\video\\" + fileName)));
                }
                else
                {
                    Response.Write("<script>请选择视频文件！</script>");
                }
            }
            else
            {
                Response.Write("<script>请选择视频文件</script>");
                return;
            }
            string imgFile = "";
            if (VideoPage_up.HasFile)
            {
                imgFile = VideoPage_up.FileName.Trim();
                string fileFix = Path.GetExtension(imgFile).ToLower();
                if (fileFix == ".png" || fileFix == ".jpg" || fileFix == ".jpeg" || fileFix == ".pic")
                {
                    VideoPage_up.SaveAs(Server.MapPath((".\\video\\video-img\\" + imgFile)));
                }
                else
                {
                    Response.Write("<script>请选择图片！</script>");
                }
            }
            else
            {
                Response.Write("<script>请选择图片</script>");
                return;
            }
           
            VideoInfo video = new VideoInfo()
            {
                UserID = UserInfoManager.SelectUserByAccount(Base64Helper.Base64Decode(Request.Cookies["Account"].Value)).userID,
                Title = title,
                Duction = desc,
                type = int.Parse(Video_typelist.SelectedValue),
                bacimg = "./video/video-img/" + imgFile,
                VideoUrl = "./video/" + fileName
            };
            if (VideoMMag.AddVideo(video))
            {
                Spe_Title.Text = "";
                Response.Write("<script>alert('投稿成功，审核中');location.href='UserAdminPage.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('网络出现波动')</script>");
            }
        }
        //专栏投稿
        protected void UpSpe_btn_Click(object sender, EventArgs e)
        {
            if (Spe_Title.Text == string.Empty || Spe_Title.Text == null)
            {
                Response.Write("<script>alert('输入标题')</script>");
                SpeBox.Style["display"] = "block";
                VideoBox.Style["display"] = "none";
                return;
            }
            html = Request.Form["content"];
            txt = NoHTML(Request.Form["content"]);
            if (txt.Length<10)
            {
                Response.Write("<script>alert('文章内容太少')</script>");
                return;
            }
            string fileName = "";
            if (SpeImgUp.HasFile)
            {
                fileName = SpeImgUp.FileName;
                string fileFix = Path.GetExtension(fileName).ToLower();
                if (fileFix == ".png" || fileFix == ".jpg" || fileFix == ".jpeg" || fileFix == ".pic")
                {
                    SpeImgUp.SaveAs(Server.MapPath((".\\Sp\\" + fileName)));
                }
                else
                {
                    Response.Write("<script>请选择图片文件！</script>");
                    return;
                }
            }
            else
            {
                Response.Write("<script>请选择封面</script>");
                return;
            }
            SpeInfo spe = new SpeInfo()
            {
                UserID = UserInfoManager.SelectUserByAccount(Base64Helper.Base64Decode(Request.Cookies["Account"].Value)).userID,
                Title = Spe_Title.Text,
                PageImg = "./Sp/"+ fileName,
                SpUrl = txt.Substring(0,txt.Length/10),
                SpText = html,
                Partition = SpeTypeList.SelectedValue,
            };
            if (SpeInfoMMag.AddSpe(spe))
            {
                Spe_Title.Text = "";
                Response.Write("<script>alert('投稿成功，审核中');location.href='UserAdminPage.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('网络出现波动')</script>");
            }

        }
        /// <summary>
        /// 去除HTML标记
          /// </summary>
          /// <param name="NoHTML">包括HTML的源码 </param>
          /// <returns>已经去除后的文字</returns>
        public static string NoHTML(string Htmlstring)
        {
            //删除脚本  

            Htmlstring = Regex.Replace(Htmlstring, @"<script[^>]*?>.*?</script>", "", RegexOptions.IgnoreCase);

            //删除HTML  

            Htmlstring = Regex.Replace(Htmlstring, @"<(.[^>]*)>", "", RegexOptions.IgnoreCase);

            Htmlstring = Regex.Replace(Htmlstring, @"([\r\n])[\s]+", "", RegexOptions.IgnoreCase);

            Htmlstring = Regex.Replace(Htmlstring, @"-->", "", RegexOptions.IgnoreCase);

            Htmlstring = Regex.Replace(Htmlstring, @"<!--.*", "", RegexOptions.IgnoreCase);

            Htmlstring = Regex.Replace(Htmlstring, @"&(quot|#34);", "\"", RegexOptions.IgnoreCase);

            Htmlstring = Regex.Replace(Htmlstring, @"&(amp|#38);", "&", RegexOptions.IgnoreCase);

            Htmlstring = Regex.Replace(Htmlstring, @"&(lt|#60);", "<", RegexOptions.IgnoreCase);

            Htmlstring = Regex.Replace(Htmlstring, @"&(gt|#62);", ">", RegexOptions.IgnoreCase);

            Htmlstring = Regex.Replace(Htmlstring, @"&(nbsp|#160);", "   ", RegexOptions.IgnoreCase);

            Htmlstring = Regex.Replace(Htmlstring, @"&(iexcl|#161);", "\xa1", RegexOptions.IgnoreCase);

            Htmlstring = Regex.Replace(Htmlstring, @"&(cent|#162);", "\xa2", RegexOptions.IgnoreCase);

            Htmlstring = Regex.Replace(Htmlstring, @"&(pound|#163);", "\xa3", RegexOptions.IgnoreCase);

            Htmlstring = Regex.Replace(Htmlstring, @"&(copy|#169);", "\xa9", RegexOptions.IgnoreCase);

            Htmlstring = Regex.Replace(Htmlstring, @"&#(\d+);", "", RegexOptions.IgnoreCase);

            Htmlstring.Replace("<", "");

            Htmlstring.Replace(">", "");

            Htmlstring.Replace("\r\n", "");

            Htmlstring = HttpContext.Current.Server.HtmlEncode(Htmlstring).Trim();

            return Htmlstring;
        }
       
    }
}