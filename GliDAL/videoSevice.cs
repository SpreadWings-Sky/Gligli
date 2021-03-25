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
        public static VideoInfo getvideoList(int id)
        {
            string sql = $"select * from VideoInfo w join userinfo u on(w.userID=u.userID) where w.videoID='{id}'";
            SqlDataReader sdr = DBHelper.GetData(sql);
            VideoInfo vi = new VideoInfo();
            if (sdr.Read())
            {
                vi.UserID = int.Parse(sdr["userID"].ToString());
                vi.VideoID = int.Parse(sdr["videoID"].ToString());
                vi.Title = sdr["title"].ToString();
                vi.VideoPlay = int.Parse(sdr["videoplay"].ToString());
                vi.Duction = sdr["duction"].ToString();
                vi.type = int.Parse(sdr["type"].ToString());
                vi.barrageUrl = sdr["barrageUrl"].ToString();
                vi.bacimg = sdr["bacImg"].ToString();
                vi.VideoUrl = sdr["videoUrl"].ToString();
                vi.Uptime = DateTime.Parse(sdr["uptime"].ToString());
                vi.UserName = sdr["username"].ToString();
                vi.brief = sdr["brief"].ToString();
                vi.imageUrl = sdr["imageUrl"].ToString();
            }
            sdr.Close();
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
    }
}
