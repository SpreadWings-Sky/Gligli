using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Models;

namespace GliDAL
{
    public class SpeRanServices
    {
        public static List<SpeRan> SpeRans()
        {
            string sql = "select * from SpeRan";
            SqlDataReader dr = DBHelper.GetData(sql);
            List<SpeRan> sr = new List<SpeRan>();
            SpeRan sran = null;
            while (dr.Read())
            {
                sran = new SpeRan()
                {
                    id = dr.GetInt32(0),
                    Yest = dr.GetString(1),
                    Theday = dr.GetString(2),
                    Welist = dr.GetString(3),
                    Molist = dr.GetString(4),
                };
                sr.Add(sran);
            }
            dr.Close();
            return sr;
        }
    }
}
