using BLL;
using Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gligli
{
    public partial class modify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Account"] == null)
            {
                Response.Write("<script>alert('请先登录！');location.href='Login.aspx'</script>");
            }
            if (!IsPostBack)
            {
                getInfo();
            }
        }
        private void getInfo()
        {
            UserInfo info = new UserInfo();
            info = UserInfoManager.Add(UserInfoManager.SelectUserByAccount(Base64Helper.Base64Decode(Request.Cookies["Account"].Value)).userID);
            this.userName.Text = info.userName;
            this.userID.Text = info.userID.ToString();
            this.brief.Text = info.brief;
            this.Image1.ImageUrl = info.imgurl;
            if (int.Parse(info.sex) == 1)
            {
                RadioButtonList1.SelectedValue = "男";
            }
            else
            {
                RadioButtonList1.SelectedValue = "女";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string fileName = FileUpload1.FileName;
                string back = Path.GetExtension(fileName);
                if (back != ".jpg" && back != ".PNG" && back != ".gif")
                {
                    Response.Write("<script>alert('请上传图片')</script>");
                    return;
                }
                FileUpload1.SaveAs(Server.MapPath("./Content/img/" + fileName));
                //Response.Write("<script>alert('上传成功')</script>");
                Session["ImageUrl"] = "./Content/img/" + fileName;
                this.Image1.ImageUrl = "./Content/img/" + fileName;
            }
            else
            {
                Response.Write("<script>alert('请先选择图片')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            UserInfo info = new UserInfo();
            info.userName = this.userName.Text;
            info.userID = int.Parse(this.userID.Text);
            info.brief = this.brief.Text;
            string sex = "1";
            if (RadioButtonList1.SelectedValue == "男")
            {
                sex = "1";
            }
            else
            {
                sex = "2";
            }
            info.sex = sex.ToString();
            if (Session["ImageUrl"] == null)
            {
                Response.Write("<script>alert('请选择图片')</script>");
                return;
            }
            else
            {
                info.imgurl = Session["ImageUrl"].ToString();
            }

            if (UserInfoManager.UpUserInfo(info))
            {
                Response.Write("<script>alert('成功')</script>");
            }
            else
            {
                Response.Write("<script>alert('失败')</script>");
            }

        }
    }
}