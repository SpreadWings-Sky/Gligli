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
        //查询账号密码是否存在
        public static bool SelectUserPwd(string Account, string pwd)
        {
            return UserInfoServ.SelectUserPwd(Account, pwd);
        }
        //通过账号和用户名更新密码
        public static bool UpPwdByNameAndAccount(string name,string account,string newpwd)
        {
            return UserInfoServ.UpUserPwdByUserAndAccount(name, account, newpwd);
        }
    }
}
