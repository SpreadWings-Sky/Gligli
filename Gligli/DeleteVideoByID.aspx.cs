using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Gligli
{
    public partial class DeleteVideoByID : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["id"] != null && Request["id"] != string.Empty)
            {
                int id = int.Parse(Request["id"]);
                if (VideoMMag.DeleteVideobyID(id))
                {
                    Response.Write("<script>alert('删除成功！');location.href='UserAdminPage.aspx'</script>");
                }
                else
                {
                    Response.Write("<script>alert('操作过快');location.href='UserAdminPage.aspx'</script>");
                }
            }
            else
            {
                Response.Write("<script>window.history.back();location.href='UserAdminPage.aspx'</script>");
            }
        }
    }
}