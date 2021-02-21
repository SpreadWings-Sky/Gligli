using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Models;
using BLL;

namespace Gligli
{
    public partial class ImgFileUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //确认上传
        protected void UpBtn_Click(object sender, EventArgs e)
        {
            if (Upurl.HasFile)
            {
                //获取文件名
                string FileName = Upurl.FileName;
                //获取上传文件后缀
                string FileFix = Path.GetExtension(FileName).ToLower();
                //判断是否为图片
                if (FileFix.Equals(".png") || FileFix.Equals(".jpg") || FileFix.Equals(".jpeg") || FileFix.Equals(".pic"))
                {
                    string time = Base64Helper.Base64Encode(DateTime.Now.ToString("O").Trim());
                    //更新到数据库
                    ImgRotationInfo ig = new ImgRotationInfo();
                    ig.Title = this.TitleText.Text;
                    ig.ImgUrl = "./img/hot-img/" + time + FileFix;
                    ig.ImgLike = this.LikeUrl.Text;
                    ig.Page = this.PageSelect.SelectedItem.Text;
                    Upurl.SaveAs(Server.MapPath(".\\img\\hot-img\\" + time + FileFix));
                    if (ImgRotationInfoMMag.InsertImg(ig))
                        ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('上传成功!', 'success', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');</script>");
                    else
                        ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('上传失败!', 'danger', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');</script>");
                }
                else
                {
                    ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('文件不是图片格式!', 'warning', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');</script>");
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('未选择文件!', 'warning', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');</script>");
            }
        }
        //返回
        protected void RegBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Imgrot.aspx");
        }
    }
}