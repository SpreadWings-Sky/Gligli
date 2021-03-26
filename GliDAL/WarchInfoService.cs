using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Data.SqlClient;

namespace GliDAL
{
    public class WarchInfoService
    {
        public static List<WarchInfo> Info(int id)
        {
            string sql = $"select *  from WarchInfo l left join UserInfo v on l.userID = v.userID where l.userID = {id}";
            SqlDataReader dr = DBHelper.GetData(sql);
            WarchInfo info = null;
            List<WarchInfo> list = new List<WarchInfo>();
            while (dr.Read())
            {

                info = new WarchInfo();
                info.userName = dr["userName"].ToString();
                info.brief = dr["brief"].ToString();
                info.imageUrl = dr["imageUrl"].ToString();
                list.Add(info);
            }
            dr.Close();
            return list;
        }
    }
}
