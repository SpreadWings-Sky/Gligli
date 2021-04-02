using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Data.SqlClient;

namespace GliDAL
{
    public class CollectionService
    {
        public static List<CollectionInfo> giligili(int id)
        {
            string sql = $"select * from VideoKeepInfo l left join VideoInfo v on l.videoID = v.videoID where l.userID = {id}";
            SqlDataReader dr = DBHelper.GetData(sql);
            CollectionInfo info = null;
            List<CollectionInfo> list = new List<CollectionInfo>();
            while (dr.Read())
            {

                info = new CollectionInfo();
                info.bacImg = dr["bacImg"].ToString();
                list.Add(info);
            }
            dr.Close();
            return list;
        }
        public static List<CollectionInfo> giligili2(int id)
        {
            string sql = $"select top(5) * from VideoKeepInfo l left join VideoInfo v on l.videoID = v.videoID where l.userID = {id}";
            SqlDataReader dr = DBHelper.GetData(sql);
            CollectionInfo info = null;
            List<CollectionInfo> list = new List<CollectionInfo>();
            while (dr.Read())
            {

                info = new CollectionInfo();
                info.bacImg = dr["bacImg"].ToString();
                list.Add(info);
            }
            dr.Close();
            return list;
        }

    }
}
