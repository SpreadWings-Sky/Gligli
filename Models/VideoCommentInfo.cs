using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    [Serializable]
    public class VideoCommentInfo
    {
        //评论id
        public int comID { get; set; }
        //视频id
        public int VideoID { get; set; }
        //用户id 
        public int userID { get; set; }
        //评论
        public string Comment { get; set; }
        //回复评论ID
        public int RecomID { get; set; }
        //主评论ID
        public int zRecomID { get; set; }
    }
}
