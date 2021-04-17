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
    public partial class TA : System.Web.UI.Page
    {
        public int id = 1000015;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request["UserID"] != null)
                {
                    id = int.Parse(Request["UserID"]);
                    UserInfo info = new UserInfo();
                    info = UserInfoManager.Add(id);
                    this.touxiang.Text = info.userName;
                    this.touxiang2.Text = info.brief;
                    this.Image1.ImageUrl = info.imgurl;

                    getGiligiliList();

                    getSpeInfo();
                    GiligiliListNum();
                }
                else
                {
                    Response.Redirect("gligli.aspx");
                }
                
            }
        }
        private void getGiligiliList()
        {
            this.newsList.DataSource = giligiliManager.giligili(id);
            this.newsList.DataBind();
        }
        private void GiligiliListNum()
        {
            this.GiligiliNum.DataSource = giligiliManager.Num(id);
            this.GiligiliNum.DataBind();
        }

        private void getSpeInfo()
        {
            this.SpeInfo.DataSource = SpeInfoMMag.SpeInfo(id);
            this.SpeInfo.DataBind();
        }
    }
}