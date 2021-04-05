using BLL;
using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Razor.Parser.SyntaxTree;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gligli
{
    public partial class UserEditWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["id"] != null && Request["id"] != string.Empty&&Request["Type"]!=null&&Request["Type"]!=string.Empty)
            {
                if (!IsPostBack)
                {
                    switch (Request["Type"])
                    {
                        case "Video":
                            VideoInfo video = VideoMMag.SelectVideoByVideoID(int.Parse(Request["id"]));
                            Video_title.Text = video.Title;
                            Video_typelist.DataSource = TypeInfoManager.SelectTypeAll();
                            Video_typelist.Text = video.type.ToString();
                            Video_desc.Text = video.Duction;
                            Spe_item.Style["display"] = "none";
                            break;
                        case "Spe":
                            SpeInfo spe = SpeInfoMMag.SelectSpeBySpeID(int.Parse(Request["id"]));
                            Spe_Title.Text = spe.Title;
                            SpeTypeList.Text = spe.Partition;
                            SpeBox.Style["display"] = "block";
                            VideoBox.Style["display"] = "none";
                            Video_item.Style["display"] = "none";
                            break;
                        default:
                            break;
                    }
                    DataBind();
                }
            }
        }

        protected void VideoUp_btn_Click(object sender, EventArgs e)
        {
            if(Video_title.Text==null|| Video_title.Text == string.Empty)
            {
                Response.Write("<script>alert('标题不能为空')</script>");
                return;
            }
            VideoInfo video = new VideoInfo()
            {
                VideoID = int.Parse(Request["id"]),
                Title = Video_title.Text,
                type = int.Parse(Video_typelist.SelectedValue),
                Duction = Video_desc.Text
            };
            if(VideoMMag.UpUserVideoByid(video))
            {
                Response.Write("<script>alert('修改成功');location.href='UserAdminPage.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('网络出现波动')</script>");
            }
        }

        protected void UpSpe_btn_Click(object sender, EventArgs e)
        {
            if (Spe_Title.Text == null || Spe_Title.Text == string.Empty)
            {
                Response.Write("<script>alert('标题不能为空')</script>");
                return;
            }
            SpeInfo spe = new SpeInfo()
            {
                spID = int.Parse(Request["id"]),
                Title = Spe_Title.Text,
                Partition = SpeTypeList.SelectedValue
            };
            if (SpeInfoMMag.UserUpSpeByID(spe))
            {
                Response.Write("<script>alert('修改成功');location.href='UserAdminPage.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('网络出现波动')</script>");
            }
        }
    }
}