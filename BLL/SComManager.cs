using System;
using System.Collections.Generic;
using System.Linq;
using GliDAL;
using System.Text;
using System.Threading.Tasks;
using Models;

namespace BLL
{
    public class SComManager
    {
        public static double GetCount(int id)
        {
            return SComService.GetCount(id);
        }
        public static List<SComInfo> GetVideoComList(int id, string type, int num)
        {
            return SComService.GetVideoComList(id, type, num);
        }
        public static List<SComInfo> GetVideoreComList(int comid, int videoid)
        {
            return SComService.GetVideoreComList(comid, videoid);
        }
        public static bool AddComm(string comm, int userid, int videoid, string recomID)
        {
            return SComService.AddComm(comm, userid, videoid, recomID);
        }
        public static void ComLike(int videoid, int likenum, int comid)
        {
            SComService.ComLike(videoid, likenum, comid);
        }
    }
}
