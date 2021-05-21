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
    public partial class special_column : System.Web.UI.Page
    {
        public int id = 1000015;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["UserID"] != null)
            {
                id = UserInfoManager.SelectUserByAccount(Base64Helper.Base64Decode(Request.Cookies["Account"].Value)).userID;
                UserInfo info = new UserInfo();
                info = UserInfoManager.Add(id);
                this.touxiang.Text = info.userName;
                this.touxiang2.Text = info.brief;
                this.Image1.ImageUrl = info.imgurl;
                //getSpeInfo();
                if (!IsPostBack)
                {
                    ViewState["Page"] = 0;
                    Bangding();
                }
            }
        }
        public void Bangding()
        {
            PagedDataSource pds = new PagedDataSource();
            pds.DataSource = SpeInfoMMag.Info(id);
            pds.AllowPaging = true;
            pds.PageSize = 6; //每页记录数
            pds.CurrentPageIndex = Pager;//当前页
            Label2.Text = "第" + (pds.CurrentPageIndex + 1).ToString() + "页 共" + pds.PageCount.ToString() + "页";
            SetEnable(pds);//上下页按钮的有效壮态
            DataList1.DataSource = pds;
            DataList1.DataBind();
        }
        private int Pager
        {
            get
            {
                return (int)ViewState["Page"];
            }
            set
            {
                ViewState["Page"] = value;
            }
        }
        private void SetEnable(PagedDataSource pds)
        {
            Button2.Enabled = true;
            Button3.Enabled = true;
            if (pds.IsFirstPage)
            {
                Button2.Enabled = false;
            }
            if (pds.IsLastPage)
            {
                Button3.Enabled = false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Pager--;
            Bangding();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Pager++;
            Bangding();
        }
    }
}