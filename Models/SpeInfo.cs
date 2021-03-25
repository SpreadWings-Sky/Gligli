using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    [Serializable]
    public class SpeInfo
    {
        //专栏编号
        public int spID { get; set; }
        //用户
        public int UserID { get; set; }
        //标题
        public string Title { get; set; }
        //封面
        public string PageImg { get; set; }
        //文章
        public string SpUrl { get; set; }
        //更新时间
        public DateTime UpTime { get; set; }
        //阅读数
        public int SpNumber { get; set; }
        //状态
        public string State { get; set; }
        //分区
        public string  Partition { get; set; }
        //链接用户表
        //用户名
        public string UserName { get; set; }
        //评论表
        public int Sum { get; set; }
        //头像
        public string ImageUrl { get; set; }
    }
}
