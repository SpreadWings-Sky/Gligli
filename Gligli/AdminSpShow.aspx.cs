using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Gligli
{
    public partial class AdminSpShow : System.Web.UI.Page
    {
        public string Mdstr = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["SpId"] != null&&Request.QueryString["SpId"] !=string.Empty)
                {
                    @Mdstr = SelectSpByID();
                }
            }
        }
        protected string SelectSpByID()
        {
            string path = Server.MapPath(".") + SpeInfoMMag.SelectSpByID(int.Parse(Request.QueryString["SpId"]));
            string md="文件不存在";
            if (File.Exists(path))
            {
                FileStream fs = new FileStream(path, FileMode.Open, FileAccess.Read);
                byte[] bytes = new byte[fs.Length];
                fs.Read(bytes, 0, bytes.Length);
                @md = Encoding.UTF8.GetString(bytes);
                fs.Close();
            }
            return md;
        }
    }
}