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
        public static UserInfo Add(int id)
        {
            string sql = $"select * from UserInfo where userID={id}";
            SqlDataReader dr = DBHelper.GetData(sql);
            UserInfo info = null;
            if (dr.Read())
            {
                info = new UserInfo();
                info.userID = int.Parse(dr["userID"].ToString());
                info.userName = dr["userName"].ToString();
                info.Account = dr["Account"].ToString();
                info.pwd = dr["pwd"].ToString();
                info.sex = dr["sex"].ToString();
                info.Email = dr["Email"].ToString();
                info.Phone = dr["Phone"].ToString();
                info.address = dr["address"].ToString();
                info.Birt = DateTime.Parse(dr["reghitTime"].ToString());
                info.brief = dr["brief"].ToString();
                info.imgurl = dr["imageUrl"].ToString();
            }
            dr.Close();
            return info;
        }

        public static bool updateUser(UserInfo user)
        {
            string sql = $"update [user] set userName='{user.userName}',pwd='{user.pwd}',sex='{user.sex}',Email='{user.Email}',Phone='{user.Phone}',[address]='{user.address}',Birt='{user.Birt}',brief='{user.brief}',imageUrl='{user.imgurl}' ";
            return DBHelper.Updata(sql);
        }

        public static List<UserInfo> Info(int id)
        {
            string sql = $"select * from UserInfo where userID={id}";
            SqlDataReader dr = DBHelper.GetData(sql);
            UserInfo info = null;
            List<UserInfo> list = new List<UserInfo>();
            while (dr.Read())
            {

                info = new UserInfo();
                info.userName = dr["userName"].ToString();
                info.userID = int.Parse(dr["userID"].ToString());
                info.imgurl = dr["imageUrl"].ToString();
                info.brief = dr["brief"].ToString();
                info.pwd = dr["pwd"].ToString();
                list.Add(info);
            }
            dr.Close();
            return list;
        }


        public static bool UpUserInfo(UserInfo Info)
        {
            string sql = $"UPDATE UserInfo set " +
                $"userName='{Info.userName}',brief='{Info.brief}',sex='{Info.sex}'," +
                $"imageUrl='{Info.imgurl}' where userID={Info.userID}";

            return DBHelper.Updata(sql);
        }

    }
}

