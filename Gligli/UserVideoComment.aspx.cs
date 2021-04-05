using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gligli
{
    public partial class UserVideoComment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] != null && Session["UserID"].ToString() != string.Empty)
            {
                Repeater1.DataSource = VideoCommentInfoMMag.SelectVideoCommentByUserID(int.Parse(Session["UserID"].ToString()));
                DataBind();
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int id = int.Parse(e.CommandArgument.ToString());
            if (VideoCommentInfoMMag.DeleteCommentByID(id))
            {
                Response.Write("<script>alert('删除成功');location.href='UserVideoComment.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('你点的太快了！')</script>");
            }
        }
    }
}