using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public  class SearchInfo
    {
        public string TypeName { get; set; }//类型
        public string title { get; set; }//标题
        public string playNum { get; set; }//播放数
        public DateTime createtime { get; set; }//创建时间
        public int VideoID { get; set; }//视频id

        public string videoBaImg { get; set; }

        public int UserID { get; set; }//用户id
        public string  UserName { get; set; }//用户名
        public string imageUrl { get; set; } //用户头像

        public int spID { get; set; }//专栏id
        public string LikeNum { get; set; }//点赞数
        public string spUrl { get; set; }//专栏内容

        public string brief { get; set; }
        public string CommentNum { get; set; }
    }
}
