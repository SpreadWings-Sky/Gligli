using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Data.SqlClient;

namespace GliDAL
{
    public class videoSevice
    {
        public static List<string> GetVideoType(int i)
        {
            string sql = $"select * from TypeInfo where tpID='{i}'";
            SqlDataReader sdr = DBHelper.GetData(sql);
            List<string> list = new List<string>();
            while (sdr.Read())
            {
                list.Add(sdr["typeName"].ToString());
            }
            sdr.Close();
            return list;
        }
        public static VideoInfo getvideoList(int id)
        {
            string sql = $"select *,(select count(*) from VideoKeepInfo where videoID='{id}') as KeepNum,(select count(*) from VideoLikeInfo where videoID='{id}') as LikeNum,(select count(*) from WarchInfo where u.Userid = (select u.userID from VideoInfo w join userinfo u on (w.userID = u.userID) where videoID = '{id}')) as WarchNum from VideoInfo w join userinfo u on (w.userID = u.userID) where w.videoID = '{id}'";
            SqlDataReader sdr = DBHelper.GetData(sql);
            VideoInfo vi = new VideoInfo();
            if (sdr.Read())
            {
                vi.UserID = int.Parse(sdr["userID"].ToString());
                vi.VideoID = int.Parse(sdr["videoID"].ToString());
                vi.Title = sdr["title"].ToString();
                vi.VideoPlay = int.Parse(sdr["videoplay"].ToString()) + 1;
                vi.Duction = sdr["duction"].ToString();
                vi.type = int.Parse(sdr["type"].ToString());
                vi.barrageUrl = sdr["barrageUrl"].ToString();
                vi.bacimg = sdr["bacImg"].ToString();
                vi.VideoUrl = sdr["videoUrl"].ToString();
                vi.Uptime = DateTime.Parse(sdr["uptime"].ToString());
                vi.UserName = sdr["username"].ToString();
                vi.brief = sdr["brief"].ToString();
                vi.imageUrl = sdr["imageUrl"].ToString();
                vi.LikeNum = int.Parse(sdr["LikeNum"].ToString());
                vi.keepNum = int.Parse(sdr["keepNum"].ToString());
                vi.WarchNum = int.Parse(sdr["WarchNum"].ToString());
            }
            sdr.Close();
            sql = $"update VideoInfo  set videoplay={vi.VideoPlay} where videoid='{id}'";
            DBHelper.Updata(sql);
            return vi;
        }
        public static List<VideoInfo> Gethotlist(int id, int type)
        {
            string sql = $"select  top 12* from VideoInfo w join userinfo u on(w.userID=u.userID) where w.videoID!='{id}' and type='{type}'";
            SqlDataReader sdr = DBHelper.GetData(sql);
            VideoInfo vi = null;
            List<VideoInfo> list = new List<VideoInfo>();
            while (sdr.Read())
            {
                vi = new VideoInfo();
                vi.VideoID = int.Parse(sdr["videoID"].ToString());
                vi.UserID = int.Parse(sdr["videoID"].ToString());
                vi.Title = sdr["title"].ToString();
                vi.VideoPlay = int.Parse(sdr["videoplay"].ToString());
                vi.type = int.Parse(sdr["type"].ToString());
                vi.bacimg = sdr["bacImg"].ToString();
                vi.UserName = sdr["username"].ToString();
                list.Add(vi);
            }
            sdr.Close();
            return list;
        }
        public static bool IsLikeVideo(int userID, int videoID)
        {
            string sql = $"select * from VideoLikeInfo where userID={userID} and videoID={videoID}";
            SqlDataReader sdr = DBHelper.GetData(sql);
            if (sdr.Read())
            {
                sdr.Close();
                return true;
            }
            else
            {
                sdr.Close();
                return false;
            }
        }
        public static bool IsKeepVideo(int userID, int videoID)
        {
            string sql = $"select * from VideoKeepInfo where userID={userID} and videoID={videoID}";
            SqlDataReader sdr = DBHelper.GetData(sql);
            if (sdr.Read())
            {
                sdr.Close();
                return true;
            }
            else
            {
                sdr.Close();
                return false;
            }
        }
        public static bool IsWarchUser(int LoginUserID, int UpUserID)
        {
            string sql = $"select * from WarchInfo where userID={LoginUserID} and watchID={UpUserID}";
            SqlDataReader sdr = DBHelper.GetData(sql);
            if (sdr.Read())
            {
                sdr.Close();
                return true;
            }
            else
            {
                sdr.Close();
                return false;
            }
        }
        //点赞
        public static bool AddVideoLikeInfo(int userID, int videoID)
        {
            string sql = $"insert into VideoLikeInfo(userid,videoid) values ('{userID}','{videoID}')";
            return DBHelper.Updata(sql);
        }
        public static bool DelVideoLikeInfo(int userID, int videoID)
        {
            string sql = $"delete VideoLikeInfo where userID={userID} and videoID={videoID}";
            return DBHelper.Updata(sql);
        }
        //收藏
        public static bool AddVideoKeepInfo(int userID, int videoID)
        {
            string sql = $"insert into VideoKeepInfo(userid,videoid) values ('{userID}','{videoID}')";
            return DBHelper.Updata(sql);
        }
        public static bool DelVideoKeepInfo(int userID, int videoID)
        {
            string sql = $"delete VideoKeepInfo where userID={userID} and videoID={videoID}";
            return DBHelper.Updata(sql);
        }
        //关注
        public static bool AddWarchInfo(int LoginUserID, int UpUserID)
        {
            string sql = $"insert into WarchInfo(userid,watchID) values ('{LoginUserID}','{UpUserID}')";
            return DBHelper.Updata(sql);
        }
        public static bool DelWarchInfo(int LoginUserID, int UpUserID)
        {
            string sql = $"delete WarchInfo where userID={LoginUserID} and watchID={UpUserID}";
            return DBHelper.Updata(sql);
        }
    }
}
