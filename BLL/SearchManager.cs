using GliDAL;
using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class SearchManager
    {
        public static List<SearchInfo> GetTypeList()
        {
            return SearchService.GetTypeList();
        }
        public static List<SearchInfo> GetSpTypeList()
        {
            return SearchService.GetSpTypeList();
        }
        public static List<SearchInfo> GetVideoList(string search, string type1, string type2, int num)
        {
            return SearchService.GetVideoList(search, type1, type2, num);
        }
        public static List<SearchInfo> GetSpList(string search, string type1, string type2, int num)
        {
            return SearchService.GetSpList(search, type1, type2, num);
        }
        public static List<SearchInfo> GetUserList(string search)
        {
            return SearchService.GetUserList(search);
        }
        public static List<SearchInfo> GetUserVList(int userid)
        {
            return SearchService.GetUserVList(userid);
        }
        public static Dictionary<string, double> GetCount()
        {
            return SearchService.GetCount();
        }
    }
}
