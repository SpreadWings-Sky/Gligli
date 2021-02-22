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
    public partial class Admin_Imgrot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BinImgData();
            }
        }
        private void BinImgData()
        {
            string page = this.DropDownList2.SelectedItem.Text;
            if (page.Equals("全部")) this.GridView1.DataSource = ImgRotationInfoMMag.SelectImgAll();
            else this.GridView1.DataSource = ImgRotationInfoMMag.SelectImgByPage(page);
            DataBind();
        }
        //禁用图片
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int ID = int.Parse(this.GridView1.Rows[e.RowIndex].Cells[0].Text);
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "deletescript", "<script>lightyear.loading('show');</script>");
            if (ImgRotationInfoMMag.DeImgById(ID))
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('修改成功', 'success', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');lightyear.loading('hide');</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('修改失败', 'warning', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');lightyear.loading('hide');</script>");
            }
            BinImgData();
        }
        //编辑状态
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            this.GridView1.EditIndex = e.NewEditIndex;
            BinImgData();
        }
        //取消修改
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            this.GridView1.EditIndex = -1;
            BinImgData();
        }
        //更新轮播图信息
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            ImgRotationInfo ig = new ImgRotationInfo();
            ig.ImgID = int.Parse(this.GridView1.Rows[e.RowIndex].Cells[0].Text);
            ig.ImgUrl = this.GridView1.Rows[e.RowIndex].Cells[1].Text;
            ig.Page = ((DropDownList)(this.GridView1.Rows[e.RowIndex].Cells[2].FindControl("DropDownList1"))).SelectedItem.Text;
            ig.Title = ((TextBox)(this.GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text;
            ig.ImgLike = ((TextBox)(this.GridView1.Rows[e.RowIndex].Cells[4].Controls[0])).Text;
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "deletescript", "<script>lightyear.loading('show');</script>");
            if (ImgRotationInfoMMag.UpImgByID(ig.ImgID, ig))
            {
                this.GridView1.EditIndex = -1;
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('修改成功', 'success', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');lightyear.loading('hide');</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('修改失败', 'warning', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');lightyear.loading('hide');</script>");
            }
            BinImgData();
        }
        //筛选内容
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            BinImgData();
        }
        //新增轮播图
        protected void ImgAddLike_Click(object sender, EventArgs e)
        {
            Response.Redirect("ImgFileUp.aspx");
        }
    }
}