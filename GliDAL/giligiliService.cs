using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Data.SqlClient;

namespace GliDAL
{
    public class giligiliService
    {
        public static List<giligiliInfo> giligili(int id)
        {
            string sql = $"SELECT top(14) * from VideoInfo where userID={id}";
            SqlDataReader dr = DBHelper.GetData(sql);
            giligiliInfo info = null;
            List<giligiliInfo> list = new List<giligiliInfo>();
            while (dr.Read())
            {

                info = new giligiliInfo();
                info.videID = int.Parse(dr["videoID"].ToString());
                info.userID = int.Parse(dr["userID"].ToString());
                info.title = dr["title"].ToString();
                info.bacImg = dr["bacImg"].ToString();
                list.Add(info);
            }
            dr.Close();
            return list;
        }

        public static List<giligiliInfo> VideoInfo(int id)
        {
            string sql = $"SELECT * from VideoInfo where userID={id}";
            SqlDataReader dr = DBHelper.GetData(sql);
            giligiliInfo info = null;
            List<giligiliInfo> list = new List<giligiliInfo>();
            while (dr.Read())
            {

                info = new giligiliInfo();
                info.videID = int.Parse(dr["videoID"].ToString());
                info.userID = int.Parse(dr["userID"].ToString());
                info.title = dr["title"].ToString();
                info.bacImg = dr["bacImg"].ToString();
                info.uptime = DateTime.Parse(dr["uptime"].ToString());
                list.Add(info);
            }
            dr.Close();
            return list;
        }

        public static List<giligiliInfo> Num(int id)
        {
            string sql = $"SELECT top(14) count(*)num  from VideoInfo where userID={id}";
            SqlDataReader dr = DBHelper.GetData(sql);
            giligiliInfo info = null;
            List<giligiliInfo> list = new List<giligiliInfo>();
            if (dr.Read())
            {
                info = new giligiliInfo();
                info.num = int.Parse(dr["num"].ToString());
                list.Add(info);
            }
            dr.Close();
            return list;
        }


        public static List<VideoLikeInfo> Search(int id, string sea)
        {
            string sql = $"SELECT * from VideoInfo where userID={id} and title like '%{sea}%'";
            SqlDataReader dr = DBHelper.GetData(sql);
            VideoLikeInfo info = null;
            List<VideoLikeInfo> list = new List<VideoLikeInfo>();
            while (dr.Read())
            {

                info = new VideoLikeInfo();
                info.bacImg = dr["bacImg"].ToString();
                info.title = dr["title"].ToString();
                info.uptime = DateTime.Parse(dr["uptime"].ToString());
                list.Add(info);
            }
            dr.Close();
            return list;
        }
    }
}
