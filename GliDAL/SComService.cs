using Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GliDAL
{
    public class SComService
    {
        public static double GetCount(int id)
        {
            string sql = $"select count(*) from SPCommentInfo c join userInfo u on(c.userID=u.userID) where c.spID ='{id}' and c.recomID is null";
            SqlDataReader sdr = DBHelper.GetData(sql);
            if (sdr.Read())
            {
                int a = sdr.GetInt32(0);
                sdr.Close();
                return a;
            }
            sdr.Close();
            return 0;

        }
        public static List<SComInfo> GetVideoComList(int id, string type, int num)
        {
            int start = num * 10 - 10;
            int stop = num * 10;
            string sql = $"select   comID,s.userID,Comment,RecomID,comtime,LikeNum,userName,sex,imageUrl,backimgUrl,brief from SPCommentInfo s join userInfo u on (s.userID = u.userID) where s.SpID = {id} and s.recomID is null ";
            SqlDataReader sdr = DBHelper.GetData(sql);
            List<SComInfo> list = new List<SComInfo>();
            string def = "0";
            SComInfo sCom = null;
            while (sdr.Read())
            {
                sCom = new SComInfo();

                sCom.comID = int.Parse(sdr["comid"].ToString());
                sCom.userID = int.Parse(sdr["userid"].ToString());
                sCom.Comment = sdr["Comment"].ToString();
                sCom.userName = sdr["username"].ToString();
                sCom.likeNum = int.Parse(sdr["likeNum"] == null?def.ToString(): sdr["likeNum"].ToString());
                sCom.comtime = DateTime.Now /*DateTime.Parse(sdr["comtime"]==null?DateTime.Now.ToString():sdr["comtime"].ToString())*/;
                sCom.imageUrl = sdr["imageUrl"].ToString();
                
                list.Add(sCom);
            }
            sdr.Close();
            return list;
        }
        public static List<SComInfo> GetVideoreComList(int recomID, int SpID)
        {
            string sql = $"select * from SPCommentInfo s  join userInfo u on(s.userID=u.userID) where s.SpID ='{SpID}' and s.recomID={recomID}";
            SqlDataReader sdr = DBHelper.GetData(sql);
            Dictionary<int, List<SComInfo>> dic = new Dictionary<int, List<SComInfo>>();
            List<SComInfo> list = new List<SComInfo>();
            SComInfo sCom = null;
            while (sdr.Read())
            {
                sCom = new SComInfo()
                {
                    comID = int.Parse(sdr["comid"].ToString()),
                    userID = int.Parse(sdr["userid"].ToString()),
                    Comment = sdr["Comment"].ToString(),
                    userName = sdr["username"].ToString(),
                    likeNum = int.Parse(sdr["likeNum"]==null?"0":sdr["likeNum"].ToString()),
                    comtime = DateTime.Now/*DateTime.Parse(sdr["comtime"] == null ? DateTime.Now.ToString() : sdr["comtime"].ToString())*/,
                    imageUrl = sdr["imageUrl"].ToString()

                };
                list.Add(sCom);

            }
            sdr.Close();
            return list;
        }
        public static bool AddComm(string comm, int userid, int SpID, string recomID = null)
        {
            if (recomID == "null")
            {
                string sql = $"insert into SPCommentInfo(SpID,userID,Comment,comtime,likeNum) values('{SpID}','{userid}','{comm}','{DateTime.Now}','0')";
                return DBHelper.Updata(sql);
            }
            else
            {
                int RecomID = int.Parse(recomID);
                string sql = $"insert into VideoCommentInfo(SpID,userID,Comment,RecomID,comtime,likeNum) values('{SpID}','{userid}','{comm}','{RecomID}','{DateTime.Now}','0')";
                return DBHelper.Updata(sql);
            }
        }
        public static void ComLike(int SpID, int likenum, int comid)
        {
            string sql = $"UPDATE SPCommentInfo SET likenum={likenum} where SpID={SpID} and comid={comid}";
            DBHelper.Updata(sql);
        }
    }
}

