﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Data.SqlClient;

namespace GliDAL
{
    public class VideoCommentInfoServices
    {
        //查询全部视频的评论
        public static List<VideoCommentInfo> SelectCommentAll()
        {
            List<VideoCommentInfo> vcomnet = new List<VideoCommentInfo>();
            string sql = "select * from VideoCommentInfo";
            SqlDataReader da = DBHelper.GetData(sql);
            while (da.Read())
            {
                VideoCommentInfo vc = new VideoCommentInfo();
                vc.comID = da.GetInt32(0);
                vc.VideoID = da.GetInt32(1);
                vc.userID = da.GetInt32(2);
                vc.Comment = da.GetString(3);
                vc.RecomID = da.GetInt32(4);
                vcomnet.Add(vc);
            }
            da.Close();
            return vcomnet;
        }
        //查询评论及回复评论
        public static Dictionary<VideoCommentInfo, List<VideoCommentInfo>> SelectCommentAndChildrenComment()
        {
            Dictionary<VideoCommentInfo, List<VideoCommentInfo>> dComment = new Dictionary<VideoCommentInfo, List<VideoCommentInfo>>();
            string sql = "select s.comID,s.videoID,s.userID,s.Comment,a.comID,a.userID,a.Comment,a.RecomID from VideoCommentInfo s inner join VideoCommentInfo a on s.comID = a.RecomID";
            SqlDataReader da = DBHelper.GetData(sql);
            while (da.Read())
            {
                VideoCommentInfo vd = new VideoCommentInfo();
                vd.comID = da.GetInt32(0);
                vd.VideoID = da.GetInt32(1);
                vd.userID = da.GetInt32(2);
                vd.Comment = da.GetString(3);
                VideoCommentInfo rec = new VideoCommentInfo();
                rec.comID = da.GetInt32(4);
                rec.userID = da.GetInt32(5);
                rec.Comment = da.GetString(6);
                rec.RecomID = da.GetInt32(7);
                List<VideoCommentInfo> coment = new List<VideoCommentInfo>();
                bool Waht = true;
                //判断是否已存在父级评论
                foreach (VideoCommentInfo item in dComment.Keys)
                {
                    if(item.comID == vd.comID)
                    {
                        dComment[item].Add(rec);
                        Waht = false;
                        break;
                    }
                }
                if(Waht)
                {
                    coment.Add(rec);
                    dComment.Add(vd, coment); 
                }
            }
            da.Close();
            return dComment;
        }
    }
}