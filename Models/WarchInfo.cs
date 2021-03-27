using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class WarchInfo
    {
        public string userName { get; set; }
        public string brief { get; set; }
        public string imageUrl { get; set; }
        //连接视频获取更新动态
        public int VideoID { get; set; }
        public int VideoUserID { get; set; }
        public string Title { get; set; }
        public string VideoUserName { get; set; }
        public DateTime VideoUpTime { get; set; }
        public string VideoImg { get; set; }

    }
}
