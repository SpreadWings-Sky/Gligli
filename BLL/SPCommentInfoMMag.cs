using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GliDAL;
using Models;

namespace BLL
{
    public class SPCommentInfoMMag
    {
        //查询专栏全部评论
        public static List<SPCommentInfo> SelectSpCommentAll()
        {
            return SPCommentInfoServices.SelectSpCommentAll();
        }
        //通过id删除评论
        public static bool DeleteCommentByID(int id)
        {
           return  SPCommentInfoServices.DeleteCommentByID(id);
        }
    }
}
