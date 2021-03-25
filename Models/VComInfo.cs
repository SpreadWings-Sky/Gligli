using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class VComInfo
    {
        public int comID { get; set; }
        public int videoID { get; set; }
        public int userID { get; set; }
        public string Comment { get; set; }
        public int zRecomID { get; set; }
        public int RecomID { get; set; }
        public DateTime comtime { get; set; }
        public int likeNum { get; set; }
        //联表字段
        public string userName { get; set; }
        public string imageUrl { get; set; }
    }
}
