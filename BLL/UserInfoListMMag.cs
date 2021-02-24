using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using GliDAL;

namespace BLL
{
    public class UserInfoListMMag
    {
        //查询全部用户
        public static List<UserInfo> SelectUserALL()
        {
            return UserInfoServ.SelectUserAll();
        }
        //通过ID封禁用户
        public static bool DeleteUserByID(int id)
        {
            return UserInfoServ.DeleteUserByID(id);
        }
        //通过ID更新用户信息
        public static bool UpUserByID(int id,UserInfo us)
        {
            return UserInfoServ.UpUserByID(id, us);
        }
    }
}
