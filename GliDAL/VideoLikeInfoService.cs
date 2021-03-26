using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Data.SqlClient;

namespace GliDAL
{
      public class VideoLikeInfoService
    {
        public static List<VideoLikeInfo> Info(int id)
        {
            string sql = $"select * from VideoKeepInfo l left join VideoInfo v on l.videoID = v.videoID where l.userID = {id}";
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

        public static List<VideoLikeInfo> Info2(int id)
        {
            string sql = $"select top(5) * from VideoKeepInfo l left join VideoInfo v on l.videoID = v.videoID where l.userID = {id}";
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

        public static List<VideoLikeInfo> Num(int id)
        {
            string sql = $"select count(*)num  from VideoKeepInfo l left join VideoInfo v on l.videoID = v.videoID where l.userID = {id}";
            SqlDataReader dr = DBHelper.GetData(sql);
            VideoLikeInfo info = null;
            List<VideoLikeInfo> list = new List<VideoLikeInfo>();
            if (dr.Read())
            {
                info = new VideoLikeInfo();
                info.num = int.Parse(dr["num"].ToString());
                list.Add(info);
            }
            dr.Close();
            return list;
        }

        public static List<VideoLikeInfo> Search(int id, string sea)
        {
            string sql = $"select * from VideoKeepInfo l left join VideoInfo v on l.videoID =v.videoID where l.userID = {id} and title like '%{sea}%'";
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
