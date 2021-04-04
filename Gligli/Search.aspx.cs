using BLL;
using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gligli
{
    public partial class Search : System.Web.UI.Page
    {
        public static  List<SearchInfo> list = null;
        public static List<SearchInfo> splist = null;
        public static List<SearchInfo> userlist = null;
        public static Dictionary<int, List<SearchInfo>> dic = null;
        protected void Page_Load(object sender, EventArgs e) { 
            GetSpList();
            GetTyeList();
            GetUserList();
            GetVideoList();
            GetSpTypeList();
        }

        public  void GetTyeList()
        {
            this.Type.DataSource = SearchManager.GetTypeList();
            DataBind();
        }
        public void GetSpTypeList()
        {
            this.SpType.DataSource = SearchManager.GetSpTypeList();
            DataBind();
        }
        public void GetUserList()
        {
            userlist = SearchManager.GetUserList(search);
            GetUserVList(userlist);
        }
        public void GetUserVList(List<SearchInfo> list)
        {
            dic = new Dictionary<int, List<SearchInfo>>();
            foreach (SearchInfo item in list)
            {
                dic.Add(item.UserID, SearchManager.GetUserVList(item.UserID));
            }
        }
        //视频
        public static string type1 = "%%";
        public static string type2 = "KeepNumber desc ";

        //专栏
        public static string type3 = "%%";
        public static string type4 = "KeepNumber desc ";
        public static string search = "";
        private  void GetVideoList()
        {
            list = SearchManager.GetVideoList(search, type1, type2);
        }
        [WebMethod]
        public static void Type1(string type)
        {
            type1 = type;
            Search s = new Search();
            s.GetVideoList();
        }
        [WebMethod]
        public static void Type2(string type)
        {
            type2 = type;
            Search s = new Search();
            s.GetVideoList();
        }
        private void GetSpList()
        {
            splist = SearchManager.GetSpList(search, type3, type4);
        }
        [WebMethod]
        public static void Type3(string type)
        {
            type3 = type;
            Search s = new Search();
            s.GetSpList();
        }
        [WebMethod]
        public static void Type4(string type)
        {
            type4 = type;
            Search s = new Search();
            s.GetSpList();
        }
        [WebMethod]
        public static void Searchs(string text)
        {
            search = text;
            Search s = new Search();
            s.GetSpList();
            s.GetUserList();
            s.GetVideoList();
        }
    }
}