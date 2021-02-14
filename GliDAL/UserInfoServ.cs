using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace GliDAL
{
    public class UserInfoServ
    {
        public static bool UserLogin(string Account, string pwd)
        {
            string sql = string.Format("select * from UserInfo where Account='{0}' and pwd ='{1}' and state ='gl'", Account, pwd);
            SqlDataReader da =  DBHelper.GetData(sql);
            bool yh = false;
            if (da.Read())
            {
                yh = true;
            }
            DBHelper.Close();
            return yh;
        }
    }
}
