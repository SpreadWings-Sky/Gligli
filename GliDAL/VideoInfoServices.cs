using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Data.SqlClient;
using System.Data;

namespace GliDAL
{
    public class VideoInfoServices
    {
        //查询全部视频
        public static List<VideoInfo> SelectVideoAll()
        {
            List<VideoInfo> vdf = new List<VideoInfo>();
            string sql = "select * from VideoInfo";
            SqlDataReader da = DBHelper.GetData(sql);
            while (da.Read())
            {
                VideoInfo vd = new VideoInfo();
                vd.VideoID = da.GetInt32(0);
                vd.UserID = da.GetInt32(1);
                vd.Title = da.GetString(2);
                vd.VideoPlay = da.GetInt32(3);
                vd.Duction = da.GetString(4);
                vd.type = da.GetInt32(5);
                vd.barrageUrl = da.IsDBNull(6) ? "" : da.GetString(6);
                vd.bacimg = da.IsDBNull(7) ? "" : da.GetString(7);
                vd.VideoUrl = da.IsDBNull(8) ? "" : da.GetString(8);
                vd.Uptime = da.GetDateTime(9);
                vd.State = da.GetString(10);
                vdf.Add(vd);
            }
            da.Close();
            return vdf;
        }
        //删除视频
        public static bool DeleteVideoByID(int id)
        {
            string sql = string.Format("delete VideoInfo where videoID = {0}", id);
            return DBHelper.Updata(sql);
        }
        //更新视频信息通过ID
        public static bool UpVideoByid(int id, VideoInfo vd)
        {
            string sql = string.Format("update VideoInfo set title = '{0}',videoPlay= {1},duction= '{2}',type={3},barrageUrl='{4}',bacImg='{5}',videoUrl='{6}',state='{7}' where videoID={8}", vd.Title, vd.VideoPlay, vd.Duction, vd.type, vd.barrageUrl, vd.bacimg, vd.VideoUrl, vd.State, id);
            return DBHelper.Updata(sql);
        }
        //查询热门视频通过播放量排序
        public static List<VideoInfo> SelectVideoHotTopSix()
        {
            string sql = "select top 6 v.*,u.userName from VideoInfo v join UserInfo u on(v.userID = u.userID) where v.state = '正常' order by videoPlay desc ";
            SqlDataReader da = DBHelper.GetData(sql);
            List<VideoInfo> vd = new List<VideoInfo>();
            while (da.Read())
            {
                VideoInfo video = new VideoInfo()
                {
                    VideoID = da.GetInt32(0),
                    UserID = da.GetInt32(1),
                    Title = da.GetString(2),
                    VideoPlay = da.GetInt32(3),
                    Duction = da.GetString(4),
                    type = da.GetInt32(5),
                    barrageUrl = da.IsDBNull(6) ? "" : da.GetString(6),
                    bacimg = da.IsDBNull(7) ? "" : da.GetString(7),
                    VideoUrl = da.IsDBNull(8) ? "" : da.GetString(8),
                    Uptime = da.GetDateTime(9),
                    State = da.GetString(10),
                    UserName = da.GetString(11)
                };
                vd.Add(video);
            }
            DBHelper.Close();
            return vd;
        }
        //查询特定分区的视频
        public static List<VideoInfo> SelectVideoByType(int type)
        {
            string sql = $"select v.*,u.userName from VideoInfo v join UserInfo u on(v.userID = u.userID) where v.type = {type} and  v.state='正常'";
            SqlDataReader da = DBHelper.GetData(sql);
            List<VideoInfo> vd = new List<VideoInfo>();
            while (da.Read())
            {
                VideoInfo video = new VideoInfo()
                {
                    VideoID = da.GetInt32(0),
                    UserID = da.GetInt32(1),
                    Title = da.GetString(2),
                    VideoPlay = da.GetInt32(3),
                    Duction = da.GetString(4),
                    type = da.GetInt32(5),
                    barrageUrl = da.IsDBNull(6) ? "" : da.GetString(6),
                    bacimg = da.IsDBNull(7) ? "" : da.GetString(7),
                    VideoUrl = da.IsDBNull(8) ? "" : da.GetString(8),
                    Uptime = da.GetDateTime(9),
                    State = da.GetString(10),
                    UserName = da.GetString(11)
                };
                vd.Add(video);
            }
            DBHelper.Close();
            return vd;
        }
        //查询各分类下播放前10的视频
        public static List<VideoInfo> SelectVideoTop10ByType(int type)
        {
            string sql = $"select TOP 9 v.*,u.userName,(select count(*) from VideoCommentInfo where videoID = v.videoID ) CommentNumber,(select count(*) from VideoKeepInfo where videoID=v.videoID) KeepNumber from VideoInfo v join UserInfo u on(v.userID = u.userID) where v.type = {type} and  v.state='正常'order by v.videoplay desc";
            SqlDataReader da = DBHelper.GetData(sql);
            List<VideoInfo> vd = new List<VideoInfo>();
            while (da.Read())
            {
                VideoInfo video = new VideoInfo()
                {
                    VideoID = da.GetInt32(0),
                    UserID = da.GetInt32(1),
                    Title = da.GetString(2),
                    VideoPlay = da.GetInt32(3),
                    Duction = da.GetString(4),
                    type = da.GetInt32(5),
                    barrageUrl = da.IsDBNull(6) ? "" : da.GetString(6),
                    bacimg = da.IsDBNull(7) ? "" : da.GetString(7),
                    VideoUrl = da.IsDBNull(8) ? "" : da.GetString(8),
                    Uptime = da.GetDateTime(9),
                    State = da.GetString(10),
                    UserName = da.GetString(11),
                    CommentNumber = da.GetInt32(12),
                    KeepNumber = da.GetInt32(13)
                };
                vd.Add(video);
            }
            DBHelper.Close();
            return vd;
        }
    }
}
