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
    public partial class AdminVideoList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindVideoInfo();
            }
        }
        private void BindVideoInfo()
        {
            this.GridView1.DataSource = VideoMMag.SelectVideoALL();
            this.GridView1.DataBind();
        }
        //切换分页
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            this.GridView1.PageIndex = e.NewPageIndex;
            BindVideoInfo();
        }
        //删除视频
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int videoID = int.Parse(this.GridView1.Rows[e.RowIndex].Cells[2].Text);
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "deletescript", "<script>lightyear.loading('show');</script>");
            if (VideoMMag.DeleteVideobyID(videoID))
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('修改成功', 'success', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');lightyear.loading('hide');</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('修改失败', 'warning', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');lightyear.loading('hide');</script>");
            }
            BindVideoInfo();
        }
        //视频信息修改
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            this.GridView1.EditIndex = e.NewEditIndex;
            BindVideoInfo();
        }
        //取消修改
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            this.GridView1.EditIndex = -1;
            BindVideoInfo();
        }
        //更新视频信息
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            VideoInfo vd = new VideoInfo();
            vd.UserID = int.Parse(this.GridView1.Rows[e.RowIndex].Cells[0].Text);
            vd.Title = ((TextBox)(this.GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text;
            vd.VideoID = int.Parse(this.GridView1.Rows[e.RowIndex].Cells[2].Text);
            vd.Duction = ((TextBox)(this.GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text;
            vd.VideoPlay = int.Parse(((TextBox)(this.GridView1.Rows[e.RowIndex].Cells[4].Controls[0])).Text);
            vd.type = int.Parse(((TextBox)(this.GridView1.Rows[e.RowIndex].Cells[5].Controls[0])).Text);
            vd.barrageUrl = ((TextBox)(this.GridView1.Rows[e.RowIndex].Cells[6].Controls[0])).Text;
            vd.bacimg = ((TextBox)(this.GridView1.Rows[e.RowIndex].Cells[8].FindControl("TextBox1"))).Text;
            vd.VideoUrl = ((TextBox)(this.GridView1.Rows[e.RowIndex].Cells[7].FindControl("TextBox2"))).Text;
            vd.Uptime = DateTime.Parse(this.GridView1.Rows[e.RowIndex].Cells[9].Text);
            vd.State = ((DropDownList)(this.GridView1.Rows[e.RowIndex].Cells[10].FindControl("State"))).SelectedItem.Text;
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "deletescript", "<script>lightyear.loading('show');</script>");
            if (VideoMMag.UpVideobyID(vd.VideoID, vd))
            {
                this.GridView1.EditIndex = -1;
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('修改成功', 'success', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');lightyear.loading('hide');</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>lightyear.notify('修改失败', 'warning', 2000, 'mdi mdi-emoticon-happy', 'top', 'center');lightyear.loading('hide');</script>");
            }
            BindVideoInfo();
        }
        //播放视频
        protected void videplay_Click(object sender, EventArgs e)
        {
            LinkButton lb = (LinkButton)sender;

            DataControlFieldCell dcf = (DataControlFieldCell)lb.Parent;

            GridViewRow gvr = (GridViewRow)dcf.Parent; //此得出的值是表示那行被选中的索引值

            int row = gvr.RowIndex;
            string title = this.GridView1.Rows[row].Cells[1].Text;
            string lr = ((Label)(this.GridView1.Rows[row].Cells[7].FindControl("Label1"))).Text;
            string url = ResolveUrl(lr);
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>$.confirm({title:'"+title+"',content:'<video width=\"100%\" controls=\"controls\"><source src=\""+url+"\" type=\"video/mp4\"></video>',buttons:{cancel:{text:'取消'},},});</script>");
        }
        //控制文本长度
        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                GridView1.Rows[i].Cells[3].ToolTip = GridView1.Rows[i].Cells[3].Text;
                if (GridView1.Rows[i].Cells[3].Text.Length > 25)
                    GridView1.Rows[i].Cells[3].Text = GridView1.Rows[i].Cells[3].Text.Substring(0, 25) + "...";
            }
        }
    }
}