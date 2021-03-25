using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Models;

namespace GliDAL
{
    public class UserInfoServer
    {
            //【注册】确认昵称语句
            public static bool AffirmUserName(string userName)
            {
                string sql = $"select * from UserInfo where userName='{userName}'";
                SqlDataReader read = DBHelper.GetData(sql);
                if (read.Read())
                {
                    read.Close();
                    return true;
                }
                read.Close();
                return false;
            }

            //【注册】【登录】确认邮箱功能
            public static bool AffirmUserEmail(string Email)
            {
                string sql = $"select * from UserInfo where Email='{Email}'";
                SqlDataReader read = DBHelper.GetData(sql);
                if (read.Read())
                {
                    read.Close();
                    return true;
                }
                else
                {
                    read.Close();
                    return false;
                }
            }

            //【注册】插入语句
            public static bool InsertUser(UserInfo user)
            {
                string sql = $"insert into UserInfo(userName, Email, Account, pwd, reghitTime, state) values('{user.userName}', '{user.Email}', '{user.Email}', '{user.pwd}', '{user.regTime}', '{user.state}')";
                return DBHelper.Updata(sql);
            }

            //【登录】查询语句
            public static Boolean FindUser(string Email, string pwd)
            {
                string sql = $"select * from UserInfo where Email='{Email}' and pwd='{pwd}'";
                SqlDataReader read = DBHelper.GetData(sql);
                if (read.Read())
                {
                    read.Close();
                    return true;
                }
                read.Close();
                return false;
            }
        //专栏用户获取
        public static List<UserInfo> UserInfos()
        {
            string sql = "select top 5 userName,imageUrl from UserInfo ";
            SqlDataReader dr = DBHelper.GetData(sql);
            List<UserInfo> ul = new List<UserInfo>();
            UserInfo user = null;
            while (dr.Read())
            {
                user = new UserInfo()
                {
                    userName = dr.GetString(0),
                    imgurl = dr.GetString(1)
                };
                ul.Add(user);
            }
            dr.Close();
            return ul;
        }
    }
    }

