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
        //用户登录信息查询
        public static UserInfo UserLogin(string Account)
        {
            string sql = string.Format("select * from UserInfo where Account='{0}'", Account);
            SqlDataReader da =  DBHelper.GetData(sql);
            UserInfo user = new UserInfo();
            if (da.Read())
            {
                user.userID = da.GetInt32(0);
                user.userName = da.GetString(1);
                user.Account = da.GetString(2);
                user.pwd = da.GetString(3);
                user.state = da.GetString(13);
            }
            DBHelper.Close();
            return user;
        }
    }
}
