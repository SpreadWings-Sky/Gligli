using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Data.SqlClient;

namespace GliDAL
{
    public class SpeInfoServices
    {
        //查询全部专栏
        public static List<SpeInfo> SelectSpALL()
        {
            List<SpeInfo> Lsp = new List<SpeInfo>();
            string sql = "select * from SpeInfo";
            SqlDataReader da = DBHelper.GetData(sql);
            while (da.Read())
            {
                SpeInfo sp = new SpeInfo();
                sp.spID = da.GetInt32(0);
                sp.UserID = da.GetInt32(1);
                sp.Title = da.GetString(2);
                sp.PageImg = da.GetString(3);
                sp.SpUrl = da.GetString(4);
                sp.UpTime = da.IsDBNull(6) ? da.GetDateTime(5):DateTime.Now;
                sp.SpNumber = da.GetInt32(7);
                sp.State = da.GetString(9);
                Lsp.Add(sp);
            }
            da.Close();
            return Lsp;
        }
        //通过ID删除专栏
        public static bool DeleteSpByID(int id)
        {
            string sql = string.Format("Delete SpeInfo where spID ={0}", id);
            return DBHelper.Updata(sql);
        }
        //通过id更新专栏消息
        public static bool UpSpInfoByID(int id,SpeInfo sp)
        {
            string sql = string.Format("update SpeInfo set title = '{0}',pageimg='{1}',state='{2}' where spID ={3} ",sp.Title,sp.PageImg,sp.State,id);
            return DBHelper.Updata(sql);
        }
        //通过ID查询专栏地址
        public static string SelectSpByID(int id)
        {
            string sql = string.Format("select spUrl from SpeInfo where spID={0}", id);
            SqlDataReader da = DBHelper.GetData(sql);
            string url="";
            if (da.Read())
            {
                url = da.GetString(0);
            }
            da.Close();
            DBHelper.Close();
            return url;
        } 
        //查询全部过审专栏 
        public static List<SpeInfo> SelectSpStateAll()
        {
            string sql = "select s.spID,s.userID,s.title,s.pageimg,u.userName,count(c.spID) sun from SpeInfo s left join UserInfo u on(s.userID=u.userID) left join SPCommentInfo c on(c.spID=s.spID) where s.state = '正常' group by c.spID,u.userName,s.spID,s.userID,s.title,s.pageimg";
            List<SpeInfo> lsp = new List<SpeInfo>();
            SqlDataReader da = DBHelper.GetData(sql);
            while (da.Read())
            {
                SpeInfo sp = new SpeInfo();
                sp.spID = da.GetInt32(0);
                sp.UserID = da.GetInt32(1);
                sp.Title = da.GetString(2);
                sp.PageImg = da.GetString(3);
                sp.UserName = da.GetString(4);
                sp.Sum = da.GetInt32(5);
                lsp.Add(sp);
            }
            da.Close();
            return lsp;
        }
        //阅读量前9的专栏
        public static List<SpeInfo> SelectSpTop9()
        {
            string sql = "select top 8 s.spID,s.userID,s.title,s.pageimg,u.userName,count(c.spID) sun,s.spNumber from SpeInfo s left join UserInfo u on(s.userID=u.userID) left join SPCommentInfo c on(c.spID=s.spID) where s.state = '正常' group by c.spID,u.userName,s.spID,s.userID,s.title,s.pageimg,s.spNumber order by s.spNumber desc";
            List<SpeInfo> lsp = new List<SpeInfo>();
            SqlDataReader da = DBHelper.GetData(sql);
            while (da.Read())
            {
                SpeInfo sp = new SpeInfo();
                sp.spID = da.GetInt32(0);
                sp.UserID = da.GetInt32(1);
                sp.Title = da.GetString(2);
                sp.PageImg = da.GetString(3);
                sp.UserName = da.GetString(4);
                sp.Sum = da.GetInt32(5);
                sp.SpNumber = da.GetInt32(6);
                lsp.Add(sp);
            }
            da.Close();
            return lsp;
        }
        //获取专栏主页内容
        public static List<SpeInfo> SpeInfos()
        {
            string sql = "select s.spID, s.title,s.pageimg,s.spUrl,u.userName,s.partition,u.imageUrl from SpeInfo s left join UserInfo u on s.userID=u.userID";
            SqlDataReader dr = DBHelper.GetData(sql);
            List<SpeInfo> so = new List<SpeInfo>();
            SpeInfo spe = null;
            while (dr.Read())
            {
                spe = new SpeInfo()
                {
                    spID = dr.GetInt32(0),
                    Title = dr.GetString(1),
                    PageImg = dr.GetString(2),
                    SpUrl = dr.GetString(3),
                    UserName = dr.GetString(4),
                    Partition = dr.IsDBNull(5) ? "无" : dr.GetString(5),
                    ImageUrl = dr.GetString(6)

                };
                so.Add(spe);
            }
            dr.Close();
            return so;
        }
        public static List<SpeInfo> Info(int id)
        {
            string sql = $"select * from UserInfo l left join SpeInfo v on l.userID = v.userID where l.userID = {id}";
            SqlDataReader dr = DBHelper.GetData(sql);
            SpeInfo info = null;
            List<SpeInfo> list = new List<SpeInfo>();
            while (dr.Read())
            {

                info = new SpeInfo();
                info.Title = dr["title"].ToString();
                info.UserName = dr["userName"].ToString();
                info.ImageUrl = dr["imageUrl"].ToString();
                info.Brief = dr["brief"].ToString();
                list.Add(info);
            }
            dr.Close();
            return list;
        }

        public static List<SpeInfo> Collection(int id)
        {
            string sql = $"select * from SpKeepInfo s left join UserInfo u on s.userID=u.userID left join SpeInfo si on s.spID=si.spID where u.userID={id}";
            SqlDataReader dr = DBHelper.GetData(sql);
            SpeInfo info = null;
            List<SpeInfo> list = new List<SpeInfo>();
            while (dr.Read())
            {

                info = new SpeInfo();
                info.Title = dr["title"].ToString();
                info.UserName = dr["userName"].ToString();
                info.ImageUrl = dr["imageUrl"].ToString();
                info.Brief = dr["brief"].ToString();
                list.Add(info);
            }
            dr.Close();
            return list;
        }
        //东
        public static List<SpeInfo> SpeInfo(int id)
        {
            string sql = $"select top(5) * from UserInfo l left join SpeInfo v on l.userID = v.userID where l.userID = {id}";
            SqlDataReader dr = DBHelper.GetData(sql);
            SpeInfo info = null;
            List<SpeInfo> list = new List<SpeInfo>();
            while (dr.Read())
            {
                info = new SpeInfo();
                info.Title = dr["title"].ToString();
                info.UserName = dr["userName"].ToString();
                info.ImageUrl = dr["imageUrl"].ToString();
                info.Brief = dr["brief"].ToString();
                list.Add(info);
            }
            dr.Close();
            return list;
        }
        //陈
        //获取专栏详情页内容
        public static List<SpeInfo> Deta(int id)
        {
            string sql = $"select title, pageimg,SpText from SpeInfo where spID={id};";
            SqlDataReader dr = DBHelper.GetData(sql);
            List<SpeInfo> de = new List<SpeInfo>();
            SpeInfo deta = null;
            while (dr.Read())
            {
                deta = new SpeInfo()
                {
                    Title = dr.GetString(0),
                    PageImg = dr.GetString(1),
                    SpText = dr.GetString(2)
                };
                de.Add(deta);
            }
            dr.Close();
            return de;
        }
        //点击增加阅读量
        public static bool SpNu(int id)
        {
            string sql = $"update SpeInfo set spNumber=spNumber+1 where spID={id}";
            return DBHelper.Updata(sql);

        }
        public static SpeInfo UsInfo(int id)
        {
            string sql = $"select userName,imageUrl,spNumber,sum(fs) from (select  watchID,count(userID) fs from WarchInfo  where watchID=(select userID from SpeInfo  where spID={id}) group by watchID,userID) w left join (select DISTINCT u.userName,u.imageUrl,s.spNumber,u.userID from (UserInfo u left join SpeInfo s on u.userID=s.userID) where u.userID=(select userID from SpeInfo where spID={id}) ) u on w.watchID=u.userID group by userName,imageUrl,spNumber";
            //阅读
            SqlDataReader dr = DBHelper.GetData(sql);
            SpeInfo us = null;
            //粉丝
            while (dr.Read())
            {

                us = new SpeInfo()
                {
                    UserName = dr.GetString(0),
                    ImageUrl = dr.GetString(1),
                    SpNumber = dr.GetInt32(2),
                    Fs = dr.GetInt32(3)
                };
            }

            dr.Close();
            return us;
        }
        public static List<SpeInfo> Sptui()
        {
            string sql = "select top 5 s.spID, s.title,s.pageimg,s.spUrl,u.userName,s.partition,u.imageUrl from SpeInfo s left join UserInfo u on s.userID=u.userID";
            SqlDataReader dr = DBHelper.GetData(sql);
            List<SpeInfo> so = new List<SpeInfo>();
            SpeInfo spe = null;
            while (dr.Read())
            {
                spe = new SpeInfo()
                {
                    spID = dr.GetInt32(0),
                    Title = dr.GetString(1),
                    PageImg = dr.GetString(2),
                    SpUrl = dr.GetString(3),
                    UserName = dr.GetString(4),
                    Partition = dr.IsDBNull(5) ? "无" : dr.GetString(5),
                    ImageUrl = dr.GetString(6)

                };
                so.Add(spe);
            }
            dr.Close();
            return so;
        }
    }
}
