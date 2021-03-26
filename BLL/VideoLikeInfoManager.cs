using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using GliDAL;

namespace BLL
{
    public  class VideoLikeInfoManager
    {
        public static List<VideoLikeInfo> Info(int id)
        {
            return VideoLikeInfoService.Info(id);
        }
        public static List<VideoLikeInfo> Info2(int id)
        {
            return VideoLikeInfoService.Info2(id);
        }

        public static List<VideoLikeInfo> Num(int id)
        {
            return VideoLikeInfoService.Num(id);
        }
        public static List<VideoLikeInfo> Search(int id, string sea = "")
        {
            return VideoLikeInfoService.Search(id, sea);
        }

    }
}
