using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    [Serializable]
    public class SPCommentInfo
    {
        //评论id
        public int ComID { get; set; }
        //专栏id
        public int SpID { get; set; }
        //用户iD
        public int UserID { get; set; }
        //评论
        public string Comment { get; set; }
        //主评论ID
        public int ZRecomID { get; set; }
        //回复评论
        public int RecomID { get; set; }
    }
}
