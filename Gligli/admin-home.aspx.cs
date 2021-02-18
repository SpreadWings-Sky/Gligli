using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GliDAL;
using Models;

namespace Gligli
{
    public partial class admin_home : System.Web.UI.Page
    {
        public static Admin_home_num nums = new Admin_home_num();
        public static string upnums = null;
        public static string usernums = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            GetAdminNums();
            Page.DataBind();
        }
        public static void GetAdminNums()
        {
            nums = AdminNumGet.Getnum();
            for (int i = 0; i <7; i++)
            {
                upnums += nums.upvideonum[i].ToString();
                if (i < 7)
                {
                    upnums += ",";
                }
            }
            for (int i = 0; i < 5; i++)
            {
                usernums += nums.regusernum[i].ToString();
                if (i < 5)
                {
                    usernums += ",";
                }
            }
        }
    }
}