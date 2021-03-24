using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Models;

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
            int id = int.Parse(this.SpList.Rows[e.RowIndex].Cells[0].Text);
            SpeInfo sp = new SpeInfo();
            sp.Title = ((TextBox)(this.SpList.Rows[e.RowIndex].Cells[2].Controls[0])).Text;
            sp.PageImg = ((TextBox)(this.SpList.Rows[e.RowIndex].Cells[3].FindControl("ImgUrl"))).Text;
            sp.State =((DropDownList)(this.SpList.Rows[e.RowIndex].Cells[7].FindControl("State"))).SelectedValue;
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "deletescript", "<script>lightyear.loading('show');</script>");
            if (SpeInfoMMag.UpSpInfoByid(id,sp))
            {
                this.SpList.EditIndex = -1;
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('修改成功', 'success', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');lightyear.loading('hide');</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('修改失败', 'warning', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');lightyear.loading('hide');</script>");
            }
            SpListBin();
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
        //文章id
        protected void SpShow_Btn_Click(object sender, EventArgs e)
        {
            LinkButton lb = (LinkButton)sender;

            DataControlFieldCell dcf = (DataControlFieldCell)lb.Parent;

            GridViewRow gvr = (GridViewRow)dcf.Parent; //此得出的值是表示那行被选中的索引值

            int row = gvr.RowIndex;
            string id = this.SpList.Rows[row].Cells[0].Text;
            Response.Redirect("AdminSpShow.aspx?SpId="+id+"");
        }
        //删除提示
        protected void SpList_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
                {
                    ((LinkButton)e.Row.Cells[8].Controls[1]).Attributes.Add("onclick", "javascript:return confirm('确认删除？')");
                }
            }
        }
    }
}