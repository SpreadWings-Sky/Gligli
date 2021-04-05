using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Data.SqlClient;

namespace GliDAL
{
    public class WarchInfoService
    {
        public static List<WarchInfo> Info(int id)
        {
            string sql = $"select *  from WarchInfo l left join UserInfo v on l.userID = v.userID where l.userID = {id}";
            SqlDataReader dr = DBHelper.GetData(sql);
            WarchInfo info = null;
            List<WarchInfo> list = new List<WarchInfo>();
            while (dr.Read())
            {

                info = new WarchInfo();
                info.userName = dr["userName"].ToString();
                info.brief = dr["brief"].ToString();
                info.imageUrl = dr["imageUrl"].ToString();
                list.Add(info);
            }
            dr.Close();
            return list;
        }
        //连接视频表通过用户动态获取视频更新列表
        public static List<WarchInfo> SelectWarchJoinVideo(int id)
        {
            string sql = $"select v.videoID,v.userID,v.title,u.userName,v.uptime,v.bacImg,u.imageUrl from WarchInfo w left join VideoInfo v on(w.watchID=v.userID) left join UserInfo u on(u.userID=v.userID) where w.userID = {id}";
            SqlDataReader dr = DBHelper.GetData(sql);
            List<WarchInfo> list = new List<WarchInfo>();
            WarchInfo warch = null;
            while (dr.Read())
            {
                warch = new WarchInfo()
                {
                    VideoID = dr.GetInt32(0),
                    VideoUserID = dr.GetInt32(1),
                    Title = dr.GetString(2),
                    VideoUserName = dr.GetString(3),
                    VideoUpTime = dr.GetDateTime(4),
                    VideoImg = dr.GetString(5),
                    imageUrl = dr.GetString(6)
                };
                list.Add(warch);
            }
            DBHelper.Close();
            return list;
        }
        //获取本周粉丝数据变化
        public static List<int> SelectWarchNumber(int UserID)
        {
            string sql = $"select datepart(dd,WatchTime) daytime,COUNT(*) Number from WarchInfo where datediff(week,WatchTime,getdate())=0  or datediff(week,WatchTime,getdate())=-1 and watchID = {UserID} group by datepart(dd,WatchTime)";
            List<int> list = new List<int>();
            SqlDataReader dr = DBHelper.GetData(sql);
            while (dr.Read())
            {
                list.Add(dr.GetInt32(1));
            }
            dr.Close();
            return list;
        }
        //用户粉丝总数
        public static int SelectWarchCount(int UserID)
        {
            string sql = $"select count(*) from WarchInfo where watchID = {UserID}";
            int count = 0;
            SqlDataReader dr = DBHelper.GetData(sql);
            if (dr.Read())
            {
                count = dr.GetInt32(0);
            }
            dr.Close();
            return count;
        }
    }
}
