    using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    [Serializable]
    public class UserInfo
    {
        public int userID { get; set; }//用户ID
        public string userName { get; set; }//用户名
        public string Account { get; set; }//用户账号
        public string pwd { get; set; }//密码
        public char sex { get; set; }//性别
        public string Email { get; set; }//邮箱
        public string Phone { get; set; }//手机号
        public string address { get; set; }//地址
        public DateTime Birt { get; set; }//生日
        public string imgurl { get; set; }//头像地址
        public string backimg { get; set; }//背景图
        public string brief { get; set; }//简介
        public DateTime regTime { get; set; }//注册时间
        public string state { get; set; }//账号状态
        //连接关注表
        public int Fs { get; set; }//粉丝总数
        public int Gz { get; set; }//关注总数
    }
}
