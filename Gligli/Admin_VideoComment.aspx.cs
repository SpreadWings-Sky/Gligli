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
    public partial class Admin_VideoComment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CommnetBin();
            }
        }
        protected void CommnetBin()
        {
            this.VideoCommentList.DataSource = VideoCommentInfoMMag.SelectCommetAll();
            DataBind();
        }

        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            for (int i = 0; i < VideoCommentList.Rows.Count; i++)
            {
                VideoCommentList.Rows[i].Cells[3].ToolTip = VideoCommentList.Rows[i].Cells[3].Text;
                if (VideoCommentList.Rows[i].Cells[3].Text.Length > 10)
                    VideoCommentList.Rows[i].Cells[3].Text = VideoCommentList.Rows[i].Cells[3].Text.Substring(0, 10) + "...";
            }
        }
        //切换分页
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            this.VideoCommentList.PageIndex = e.NewPageIndex;
            CommnetBin();
        }
        //删除评论
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = int.Parse(this.VideoCommentList.Rows[e.RowIndex].Cells[0].Text);
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "deletescript", "<script>lightyear.loading('show');</script>");
            if (VideoCommentInfoMMag.DeleteCommentByID(id))
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('删除成功', 'success', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');lightyear.loading('hide');</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('删除失败', 'warning', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');lightyear.loading('hide');</script>");
            }
            CommnetBin();
        }
    }
}