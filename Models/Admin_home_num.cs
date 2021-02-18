using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    [Serializable]
    public class Admin_home_num
    {
        public int Videoplay;//视频总数
        public int Usernum;//用户总数
        public int Arknum;//专栏总数
        public int Spnum;//评论总数
        public int[] upvideonum = new int[7];//本周更新视频数
        public int[] regusernum = new int[5];//每月注册用户数
    }
}
