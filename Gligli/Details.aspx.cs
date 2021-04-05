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
    public partial class Details : System.Web.UI.Page
    {
        public static SpeInfo Spe = new SpeInfo();
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
                    this.SpCom.DataSource = SpeInfoMMag.SpCom(id);
                }
            }
            DataBind();
        }
        protected void btnFend_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            if (Request.Cookies["Account"] == null)
            {

                Response.Write("<script>alert('您未登录，请先登录!');location.href='Details.aspx?id=" + id + "';</script>");
                return;
            }
            if (txtComment.Text.Length < 1)
            {
                Response.Write("<script>alert('评论不能为空');location.href='Details.aspx?id=" + id + "';</script>");
                return;
                //Response.Redirect($"Details.aspx?id={id}");
            }
            if (txtComment.Text == " " || txtComment.Text == string.Empty || txtComment.Text == null)
            {
                Response.Write("<script>alert('评论不能为空')location.href='Details.aspx?id=" + id + "';</script>");
                // Response.Redirect($"Details.aspx?id={id}");
            }
            else
            {
                SpeInfo com = new SpeInfo()
                {
                    spID = int.Parse(Request.QueryString["id"]),
                    Comment = this.txtComment.Text,
                    UserID = int.Parse(Session["LoginUserID"].ToString()),
                };
                SpeInfoMMag.SpComs(com);
                Response.Redirect($"Details.aspx?id={com.spID}");
            }
        }
    }
}