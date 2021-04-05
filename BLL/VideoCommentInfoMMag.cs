using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using GliDAL;

namespace BLL
{
    public class VideoCommentInfoMMag
    {
        //查询全部评论
        public static List<VideoCommentInfo> SelectCommetAll()
        {
            return VideoCommentInfoServices.SelectCommentAll();
        }
        //查询全部评论和子评论
        public static Dictionary<VideoCommentInfo, List<VideoCommentInfo>> SelectCommentAndChildrenComment()
        {
            return VideoCommentInfoServices.SelectCommentAndChildrenComment();
        }
        //通过id删除评论
        public static bool DeleteCommentByID(int id)
        {
            return VideoCommentInfoServices.DeleteCommentByID(id);
        }
        //查询当前用户的评论
        public static List<VideoCommentInfo> SelectVideoCommentByUserID(int UserID)
        {
            return VideoCommentInfoServices.SelectVideoCommentByUserID(UserID);
        }
    }
}
