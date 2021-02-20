using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Data.SqlClient;

namespace GliDAL
{
    public class AdminNumGet
    {
        //获取管理主页信息
        public static Admin_home_num Getnum()
        {
            Admin_home_num nums = new Admin_home_num();
            string sql = "select datepart(dd,uptime) 日期,COUNT(*) 数量 from VideoInfo where datediff(week,uptime,getdate())=0  or datediff(week,uptime,getdate())=-1 group by datepart(dd,uptime)";//查询本周更新视频数
            SqlDataReader da = DBHelper.GetData(sql);
            int i = 0;
            while (da.Read())
            {
                nums.upvideonum[i] = da.GetInt32(1);
                i++;
            }
            i = 0;
            da.Close();
            sql = "select count(videoID) from VideoInfo"; //查询视频总数
            da = DBHelper.GetData(sql);
            if (da.Read())
            {
                nums.Videoplay = da.GetInt32(0);
            }
            da.Close();
            sql = "select count(userID) from UserInfo";//查询用户总数
            da = DBHelper.GetData(sql);
            if (da.Read())
            {
                nums.Usernum = da.GetInt32(0);
            }
            da.Close();
            sql = "select count(spID) from SpeInfo";//查询专栏总数
            da = DBHelper.GetData(sql);
            if (da.Read())
            {
                nums.Arknum = da.GetInt32(0);
            }
            da.Close();
            sql = "select count(*) from  SPCommentInfo";//查询专栏评论总数
            da = DBHelper.GetData(sql);
            if (da.Read())
            {
                nums.Spnum = da.GetInt32(0);
            }
            da.Close();
            sql = "select count(*) from  VideoCommentInfo";//查询视频评论总数
            da = DBHelper.GetData(sql);
            if (da.Read())
            {
                nums.Spnum += da.GetInt32(0);
            }
            da.Close();
            sql = "select datepart(YYYY,reghitTime) 日期,COUNT(*) 数量 from UserInfo  where year(reghitTime)>year(GETDATE()) -5 GROUP BY YEAR(reghitTime)";//查询近五年注册的用户数
            da = DBHelper.GetData(sql);
            int j = 0;
            while (da.Read())
            {
                nums.regusernum[j] = da.GetInt32(1);
                j++;
            }
            j = 0;
            da.Close();
            return nums;
        }
        //获取视频列表排行
        public static VideoInfo[] GetVideoList()
        {
            VideoInfo[] vd = new VideoInfo[8];
            string sql = "select top 8 * from VideoInfo order by videoPlay desc";
            SqlDataReader da = DBHelper.GetData(sql);
            int i = 0;
            while (da.Read())
            {
                vd[i] = new VideoInfo();
                vd[i].VideoID = da.GetInt32(0);
                vd[i].UserID = da.GetInt32(1);
                vd[i].Title = da.GetString(2);
                vd[i].VideoPlay = da.GetInt32(3);
                vd[i].Duction = da.GetString(4);
                vd[i].type = da.GetInt32(5);
                vd[i].barrageUrl = da.IsDBNull(6) ? "" : da.GetString(6);
                vd[i].bacimg = da.IsDBNull(7) ? "" : da.GetString(7);
                vd[i].VideoUrl = da.IsDBNull(8) ? "" : da.GetString(8);
                vd[i].Uptime = da.GetDateTime(9);
                vd[i].State = da.GetString(10);
                i++;
            }
            da.Close();
            return vd;
        }
    }
}
