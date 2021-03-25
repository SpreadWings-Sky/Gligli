using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GliDAL;
using Models;

namespace BLL
{
    public class VComManager
    {
        //桥梁 
        public static double GetCount(int id)
        {
            return VComSevice.GetCount(id);
        }
        public static List<VComInfo> GetVideoComList(int id, string type, int num)
        {
            return VComSevice.GetVideoComList(id, type, num);
        }
        public static List<VComInfo> GetVideoreComList(int comid, int videoid)
        {
            return VComSevice.GetVideoreComList(comid, videoid);
        }
        public static bool AddComm(string comm, int userid, int videoid, string recomID)
        {
            return VComSevice.AddComm(comm, userid, videoid, recomID);
        }
    }
}
