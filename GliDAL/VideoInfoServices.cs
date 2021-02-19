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
        public static bool UpVideoByid(int id,VideoInfo vd)
        {
            string sql = string.Format("update VideoInfo set title = '{0}',videoPlay= {1},duction= '{2}',type={3},barrageUrl='{4}',bacImg='{5}',videoUrl='{6}',state='{7}' where videoID={8}",vd.Title,vd.VideoPlay,vd.Duction,vd.type,vd.barrageUrl,vd.bacimg,vd.VideoUrl,vd.State,id);
            return DBHelper.Updata(sql);
        }
    }
}
