using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    [Serializable]
    public class ImgRotationInfo
    {
        //图片ID
        public int ImgID { get; set; }
        //图片来源
        public string ImgUrl { get; set; }
        //归属页面
        public string Page { get; set; }
        //标题
        public string Title { get; set; }
        //跳转地址
        public string ImgLike { get; set; }
    }
}
