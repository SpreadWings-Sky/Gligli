using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using GliDAL;

namespace BLL
{
    public  class giligiliManager
    {
        public static List<giligiliInfo> giligili(int id)
        {
            return giligiliService.giligili(id);
        }
        public static List<giligiliInfo> Num(int id)
        {
            return giligiliService.Num(id);
        }

        public static List<giligiliInfo> VideoInfo(int id)
        {
            return giligiliService.VideoInfo(id);
        }
        public static List<VideoLikeInfo> Search(int id, string sea = "")
        {
            return giligiliService.Search(id, sea);
        }
    }
}
