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
    public partial class Admin_UserList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UserDataBin();
            }
        }
        //绑定数据
        protected void UserDataBin()
        {
            this.UserListGrid.DataSource = UserInfoListMMag.SelectUserALL();
            DataBind();
        }
        //切换分页
        protected void UserListGrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            this.UserListGrid.PageIndex = e.NewPageIndex;
            UserDataBin();
        }
        //封禁账号
        protected void UserListGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int userID = int.Parse(this.UserListGrid.Rows[e.RowIndex].Cells[0].Text);
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "deletescript", "<script>lightyear.loading('show');</script>");
            if (UserInfoListMMag.DeleteUserByID(userID))
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('修改成功', 'success', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');lightyear.loading('hide');</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('修改失败', 'warning', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');lightyear.loading('hide');</script>");
            }
            UserDataBin();
        }
        //修改
        protected void UserListGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            this.UserListGrid.EditIndex = e.NewEditIndex;
            UserDataBin();
        }
        //取消修改
        protected void UserListGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            this.UserListGrid.EditIndex = -1;
            UserDataBin();
        }
        //更新数据
        protected void UserListGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            UserInfo us = new UserInfo();
            us.userID = int.Parse(this.UserListGrid.Rows[e.RowIndex].Cells[0].Text);
            us.userName = ((TextBox)(this.UserListGrid.Rows[e.RowIndex].Cells[1].Controls[0])).Text;
            us.imgurl = ((TextBox)(this.UserListGrid.Rows[e.RowIndex].Cells[2].FindControl("TextBox1"))).Text;
            us.brief = ((TextBox)(this.UserListGrid.Rows[e.RowIndex].Cells[9].Controls[0])).Text;
            us.state = ((DropDownList)(this.UserListGrid.Rows[e.RowIndex].Cells[11].FindControl("State"))).SelectedValue;
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "deletescript", "<script>lightyear.loading('show');</script>");
            if (UserInfoListMMag.UpUserByID(us.userID,us))
            {
                this.UserListGrid.EditIndex = -1;
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('修改成功', 'success', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');lightyear.loading('hide');</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('修改失败', 'warning', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');lightyear.loading('hide');</script>");
            }
            UserDataBin();
        }
        //封禁提示
        protected void UserListGrid_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
                {
                    ((LinkButton)e.Row.Cells[12].Controls[1]).Attributes.Add("onclick", "javascript:return confirm('确认封禁此账号？')");
                }
            }
        }
    }
}