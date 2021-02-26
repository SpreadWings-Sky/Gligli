using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Data.SqlClient;

namespace GliDAL
{
    
    public  class SPCommentInfoServices
    {
        //查询专栏全部评论
        public static List<SPCommentInfo> SelectSpCommentAll()
        {
            List<SPCommentInfo> sp = new List<SPCommentInfo>();
            string sql = "select comID,spID,userID,Comment,zRecomID,RecomID from SPCommentInfo";
            SqlDataReader da = DBHelper.GetData(sql);
            while (da.Read())
            {
                SPCommentInfo spc = new SPCommentInfo();
                spc.ComID = da.GetInt32(0);
                spc.SpID = da.GetInt32(1);
                spc.UserID = da.GetInt32(2);
                spc.Comment = da.GetString(3);
                spc.ZRecomID = da.IsDBNull(4) ? 0 : da.GetInt32(5);
                spc.RecomID = da.IsDBNull(5) ? 0 : da.GetInt32(6);
                sp.Add(spc);
            }
            da.Close();
            return sp;
        }
        //通过编号删除评论
        public static bool DeleteCommentByID(int id)
        {
            string sql = string.Format("delete SPCommentInfo where comID ={0}", id);
            return DBHelper.Updata(sql);
        }
    }
}
