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
                user.imgurl = da.GetString(9);
                user.state = da.GetString(13);
            }
            DBHelper.Close();
            return user;
        }
        //查询全部用户信息
        public static List<UserInfo> SelectUserAll()
        {
            List<UserInfo> userList = new List<UserInfo>();
            string sql = "select userID,userName,imageUrl,Account,sex,Email,Phone,address,Birt,brief,reghitTime,state from UserInfo";
            SqlDataReader da = DBHelper.GetData(sql);
            while (da.Read())
            {
                UserInfo us = new UserInfo();
                us.userID = da.GetInt32(0);
                us.userName = da.GetString(1);
                us.imgurl = da.GetString(2);
                us.Account = da.GetString(3);
                us.sex = da.IsDBNull(4) ? "无" : da.GetString(4).Equals('1') ? "男" : "女";
                us.Email = da.IsDBNull(5) ? "无" : da.GetString(5);
                us.Phone = da.IsDBNull(6) ? "无" : da.GetString(6);
                us.address = da.IsDBNull(7) ? "无" : da.GetString(7);
                us.Birt = da.IsDBNull(8) ? DateTime.Parse("2077 - 07 - 01 13:14:22") : da.GetDateTime(8);
                us.brief = da.GetString(9);
                us.regTime = da.GetDateTime(10);
                us.state = da.GetString(11);
                userList.Add(us);
            }
            da.Close();
            return userList;
        }
        //通过用户ID封禁
        public static bool DeleteUserByID(int userID)
        {
            string sql = string.Format("update UserInfo set state = 'fj' where userID = {0}",userID);
            return DBHelper.Updata(sql);
        }
        //通过ID更新用户信息
        public static bool UpUserByID(int userID,UserInfo us)
        {
            string sql = string.Format("update UserInfo set userName = '{0}',imageUrl= '{1}',brief='{2}',state='{3}' where userID = {4}",us.userName,us.imgurl,us.brief,us.state,userID);
            return DBHelper.Updata(sql);
        }
        //查询密码是否正确
        public static bool SelectUserPwd(string Account,string pwd)
        {
            string sql = string.Format("select userID from UserInfo where Account = '{0}' and pwd = '{1}'",Account,pwd);
            bool s = DBHelper.GetData(sql).Read();
            DBHelper.Close();
            return s;
        }
        //通过用户名和账号更新密码
        public static bool UpUserPwdByUserAndAccount(string name,string Account,string newpwd)
        {
            string sql = string.Format("update UserInfo set pwd = '{0}' where userName='{1}' and Account = '{2}'",newpwd,name,Account);
            return DBHelper.Updata(sql);
        }
        //通过账号连表查询用户信息
        public static UserInfo SelectUserByAccount(string Account)
        {
            string sql = $"select u.userName,u.imageUrl,count(w.watchID) gz,COUNT(w1.watchID),u.userID fs,u.reghitTime from UserInfo u left join WarchInfo w on(u.userID=w.userID) left join WarchInfo w1 on(u.userID=w1.watchID) where u.Account = '{Account}' group by u.userName,u.imageUrl,w.watchID,w1.watchID,u.userID,u.reghitTime ";
            SqlDataReader dr = DBHelper.GetData(sql);
            UserInfo user = new UserInfo();
            if (dr.Read())
            {
                user.userName = dr.GetString(0);
                user.imgurl = dr.GetString(1);
                user.Gz = dr.GetInt32(2);
                user.Fs = dr.GetInt32(3);
                user.userID = dr.GetInt32(4);
                user.regTime = dr.GetDateTime(5);
            }
            DBHelper.Close();
            return user;
        }
    }
}
