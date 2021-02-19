using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using GliDAL;

namespace BLL
{
    public class VideoMMag
    {
        //查询全部视频
        public static List<VideoInfo> SelectVideoALL()
        {
            return VideoInfoServices.SelectVideoAll();
        }
        //通过ID删除视频
        public static bool DeleteVideobyID(int id)
        {
            return VideoInfoServices.DeleteVideoByID(id);
        }
        //通过视频ID更新视频信息
        public static bool UpVideobyID(int id,VideoInfo vd)
        {
            return VideoInfoServices.UpVideoByid(id, vd);
        }
    }
}
