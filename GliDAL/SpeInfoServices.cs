using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Data.SqlClient;

namespace GliDAL
{
    public class SpeInfoServices
    {
        //查询全部专栏
        public static List<SpeInfo> SelectSpALL()
        {
            List<SpeInfo> Lsp = new List<SpeInfo>();
            string sql = "select * from SpeInfo";
            SqlDataReader da = DBHelper.GetData(sql);
            while (da.Read())
            {
                SpeInfo sp = new SpeInfo();
                sp.spID = da.GetInt32(0);
                sp.UserID = da.GetInt32(1);
                sp.Title = da.GetString(2);
                sp.PageImg = da.GetString(3);
                sp.SpUrl = da.GetString(4);
                sp.UpTime = da.GetDateTime(5);
                sp.SpNumber = da.GetInt32(6);
                sp.State = da.GetString(7);
                Lsp.Add(sp);
            }
            da.Close();
            return Lsp;
        }
        //通过ID删除专栏
        public static bool DeleteSpByID(int id)
        {
            string sql = string.Format("Delete SpeInfo where spID ={0}", id);
            return DBHelper.Updata(sql);
        }
        //通过id更新专栏消息
        public static bool UpSpInfoByID(int id,SpeInfo sp)
        {
            string sql = string.Format("");
            return DBHelper.Updata(sql);
        }
    }
}
