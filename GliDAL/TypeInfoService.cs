using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Data.SqlClient;

namespace GliDAL
{
    public class TypeInfoService
    {
        //查询各分类下视频总数
        public static List<TypeInfo> SelectTypeVideoALL()
        {
            string sql = "select t.typeName,Count(t.typeName) TypeCount from TypeInfo t left join VideoInfo v on(t.tpID = v.type) group by t.typeName";
            SqlDataReader dr = DBHelper.GetData(sql);
            List<TypeInfo> list = new List<TypeInfo>();
            while (dr.Read())
            {
                TypeInfo type = new TypeInfo();
                type.TypeName = dr.GetString(0);
                type.TypeVideoCount = dr.GetInt32(1);
                list.Add(type);
            }
            DBHelper.Close();
            return list;
        }
    }
}
