using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using BLL;
using Models;
using System.Web.UI.WebControls;

namespace Gligli
{
    public partial class Admin_SPCommentList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CommentBin();
            }
        }
        protected void CommentBin()
        {
            this.SPList.DataSource = SPCommentInfoMMag.SelectSpCommentAll();
            DataBind();
        }
        //删除评论
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = int.Parse(this.SPList.Rows[e.RowIndex].Cells[0].Text);
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "deletescript", "<script>lightyear.loading('show');</script>");
            if (SPCommentInfoMMag.DeleteCommentByID(id))
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('删除成功', 'success', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');lightyear.loading('hide');</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('删除失败', 'warning', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');lightyear.loading('hide');</script>");
            }
            CommentBin();
        }
        //切换分页
        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            this.SPList.PageIndex = e.NewSelectedIndex;
        }
    }
}