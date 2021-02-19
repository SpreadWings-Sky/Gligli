using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class VideoInfo
    {
        public int VideoID;//视频id
        public int UserID;//用户ID
        public string Title;//标题
        public int VideoPlay;//视频播放数
        public string Duction;//简介
        public int type;//分类
        public string bacimg;//背景图片
        public string Url;//视频地址
        public DateTime Uptime;//上传时间
        public string State;//状态
    }
}
