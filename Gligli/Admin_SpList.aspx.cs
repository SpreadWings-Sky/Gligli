using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Gligli
{
    public partial class Admin_SpList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SpListBin();
            }
        }
        protected  void SpListBin()
        {
            this.SpList.DataSource = SpeInfoMMag.SelectSpAll();
            DataBind();
        }
        //删除专栏
        protected void SpList_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = int.Parse(this.SpList.Rows[e.RowIndex].Cells[0].Text);
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "deletescript", "<script>lightyear.loading('show');</script>");
            if (SpeInfoMMag.DeleteSpByID(id))
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('删除成功', 'success', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');lightyear.loading('hide');</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('删除失败', 'warning', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');lightyear.loading('hide');</script>");
            }
            SpListBin();
        }
        //切换分页
        protected void SpList_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            this.SpList.PageIndex = e.NewPageIndex;
            SpListBin();
        }
        //更新信息
        protected void SpList_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }
        //编辑状态
        protected void SpList_RowEditing(object sender, GridViewEditEventArgs e)
        {
            this.SpList.EditIndex = e.NewEditIndex;
            SpListBin();
        }
        //取消修改
        protected void SpList_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            this.SpList.EditIndex = -1;
            SpListBin();
        }
    }
}