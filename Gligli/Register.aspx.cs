using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;
using BLL;
using System.Net.Mail;
using System.Net;

namespace Gligli
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            //强制刷新页面
            //Response.Redirect(Request.Url.ToString());
        }

        //随机字符串
        public static string StrRandom = GenCode(6);
        //【注册】按钮
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //获取注册页面的值
            string userName = txtName.Text;
            string Email = txtOneEmail.Text;
            string pwd = txtOnePass.Text;

            //用户名未注册
            if (this.checkbox.Checked)
            {
                string body = txtVerification.Text;
                if (body == "")
                {
                    Response.Write("<script language=''>alert('验证码不能为空！');</script>");
                    return;
                }
                else if (StrRandom == body)
                {
                    //执行注册，保存到数据库
                    UserInfo user = new UserInfo()
                    {
                        userName = userName,
                        Email = Email,
                        Account = Email,
                        pwd = pwd,
                        regTime = DateTime.Now,
                        state = "zc"
                    };
                    if (UserInfoManager.InsertUser(user))
                    {
                        Response.Write("<script language=''>alert('注册成功请登录！');</script>");
                        Response.Redirect("Login.aspx");
                    }
                }
                else
                {
                    Response.Write("<script language=''>alert('验证码不一样！');</script>");
                    txtVerification.Text = "";
                }

            }
            else
            {
                Response.Write("<script language=''>confirm('勾选注册协议，才能进行注册！');</script>");
                /*Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>confirm('勾选注册协议，才能进行注册！');</script>");*/
                return;
            }

        }

        protected void txtCode_Click(object sender, EventArgs e)
        {
            if (!UserInfoManager.AffirmUserEmail(this.txtOneEmail.Text))
            {
                System.Text.StringBuilder strBody = new System.Text.StringBuilder();
                //strBody.Append("点击下面链接激活账号，48小时生效，否则重新注册账号，链接只能使用一次，请尽快激活！</br>");
                //strBody.Append("<a href='http://localhost:3210/Order/ActivePage?customerID=" + 11+ "&validataCode =" + 22 + "'>点击这里</a></br>");
                strBody.Append("请填写您的验证码，5分钟内生效，否则重新注册账号，请尽快填写！");
                strBody.Append("验证码为：" + StrRandom);
                string MessageBody = strBody.ToString();
                //实例化一个发送邮件类
                MailMessage mailMessage = new MailMessage();
                //发件人邮箱地址，方法重载不同，可以根据需求自行选择。
                mailMessage.From = new MailAddress("1916130556@qq.com");
                //收件人邮箱地址。
                mailMessage.To.Add(new MailAddress(txtOneEmail.Text));
                //邮件标题。
                mailMessage.Subject = "gligli验证码";
                //邮件内容。
                mailMessage.Body = MessageBody;

                //实例化一个SmtpClient类。
                SmtpClient client = new SmtpClient();
                //在这里我使用的是yeah邮箱，所以是smtp.qq.com，如果你使用的是126邮箱，那么就是smtp.126.com。
                client.Host = "smtp.qq.com";
                //使用安全加密连接。
                client.EnableSsl = true;
                //不和请求一块发送。
                client.UseDefaultCredentials = false;
                //验证发件人身份(发件人的邮箱，邮箱里的生成授权码);
                client.Credentials = new NetworkCredential("1916130556@qq.com", "tnbatgrfetladead");//前缀是指@之前的字符
                                                                                                    //发送
                client.Send(mailMessage);
                Response.Write("<script language=''>alert('发送邮件成功！');</script>");
            }
            else
            {
                Response.Write("<script language=''>alert('邮箱已注册！');</script>");
                return;
            }
        }

        //随机字符串
        private static string GenCode(int num)
        {
            string str = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklnmopqrstuvwxyz";//图片上随机文字
            char[] chastr = str.ToCharArray();
            string code = "";
            Random rd = new Random();
            int i;
            for (i = 0; i < num; i++)
            {
                code += str.Substring(rd.Next(0, str.Length), 1);
            }
            return code;
        }

        //昵称是否存在
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string userName = txtName.Text;
            if (UserInfoManager.AffirmUserName(userName))
            {
                args.IsValid = false;
            }
        }
        //邮箱是否存在
        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string Email = txtOneEmail.Text;
            if (UserInfoManager.AffirmUserEmail(Email))
            {
                args.IsValid = false;
            }
        }
    }
}