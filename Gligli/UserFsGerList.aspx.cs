using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Gligli
{
    public partial class UserFsGerList : System.Web.UI.Page
    {
        public string Number = null;
        public int Count = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] != null && Session["UserID"].ToString() != string.Empty)
            {
                List<int> list = WarchInfoManager.SelectWarchNumber(int.Parse(Session["UserID"].ToString()));
                for (int i = 0; i < 7; i++)
                {
                    if (i < list.Count)
                        Number += list[i].ToString();
                    else
                        Number += 0;
                    if (i < 7)
                    {
                        Number += ",";
                    }
                }
                Count = WarchInfoManager.SelectWarchCount(int.Parse(Session["UserID"].ToString()));
            }
            else
            {
                Response.Redirect("gligli.aspx");
            }
        }
    }
}