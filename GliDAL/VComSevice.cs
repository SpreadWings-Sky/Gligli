using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Data.SqlClient;

namespace GliDAL
{
    public class VComSevice
    {
        //数据访问方法
        public static double GetCount(int id)
        {
            string sql = $"select count(*) from VideoCommentInfo v join userInfo u on(v.userID=u.userID) where v.videoID ='{id}' and v.recomID is null";
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

        public static List<VComInfo> GetVideoComList(int id, string type, int num)
        {
            int start = num * 10 - 9;
            int stop = num * 10;
            string sql = $"select* from   (select   comID,v.userID,Comment,RecomID,comtime,LikeNum,userName,sex,imageUrl,backimgUrl,brief,   ROW_NUMBER() " +
                               $" OVER(order   by   {type} desc)   AS ROWNUM   from VideoCommentInfo v join userInfo " +
                               $"u on (v.userID = u.userID) where v.videoID = {id} " +
                               $"and v.recomID is null) t where   rownum between   {start}   and   {stop} ";
            SqlDataReader sdr = DBHelper.GetData(sql);
            List<VComInfo> list = new List<VComInfo>();
            VComInfo vCom = null;
            while (sdr.Read())
            {
                vCom = new VComInfo()
                {
                    comID = int.Parse(sdr["comid"].ToString()),
                    userID = int.Parse(sdr["userid"].ToString()),
                    Comment = sdr["Comment"].ToString(),
                    userName = sdr["username"].ToString(),
                    likeNum = int.Parse(sdr["likeNum"].ToString()),
                    comtime = DateTime.Parse(sdr["comtime"].ToString()),
                    imageUrl = sdr["imageUrl"].ToString()
                };
                list.Add(vCom);
            }
            sdr.Close();
            return list;
        }
        public static List<VComInfo> GetVideoreComList(int recomID, int videoid)
        {
            string sql = $"select * from VideoCommentInfo v join userInfo u on(v.userID=u.userID) where v.videoID ='{videoid}' and v.recomID={recomID}";
            SqlDataReader sdr = DBHelper.GetData(sql);
            Dictionary<int, List<VComInfo>> dic = new Dictionary<int, List<VComInfo>>();
            List<VComInfo> list = new List<VComInfo>();
            VComInfo vCom = null;
            while (sdr.Read())
            {
                vCom = new VComInfo()
                {
                    comID = int.Parse(sdr["comid"].ToString()),
                    userID = int.Parse(sdr["userid"].ToString()),
                    Comment = sdr["Comment"].ToString(),
                    userName = sdr["username"].ToString(),
                    likeNum = int.Parse(sdr["likeNum"].ToString()),
                    comtime = DateTime.Parse(sdr["comtime"].ToString()),
                    imageUrl = sdr["imageUrl"].ToString()

                };
                list.Add(vCom);

            }
            sdr.Close();
            return list;
        }
        public static bool AddComm(string comm, int userid, int videoid, string recomID = null)
        {
            if (recomID == "null")
            {
                string sql = $"insert into VideoCommentInfo(videoID,userID,Comment,comtime,likeNum) values('{videoid}','{userid}','{comm}','{DateTime.Now}','0')";
                return DBHelper.Updata(sql);
            }
            else
            {
                int RecomID = int.Parse(recomID);
                string sql = $"insert into VideoCommentInfo(videoID,userID,Comment,RecomID,comtime,likeNum) values('{videoid}','{userid}','{comm}','{RecomID}','{DateTime.Now}','0')";
                return DBHelper.Updata(sql);
            }
        }
        public static void ComLike(int videoid, int likenum, int comid)
        {
            string sql = $"UPDATE VideoCommentInfo SET likenum={likenum} where videoid={videoid} and comid={comid}";
            DBHelper.Updata(sql);
        }
    }
}
