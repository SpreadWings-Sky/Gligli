using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using BLL;
using Models;
using GliDAL;

namespace Gligli
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                HttpCookie cookies = Request.Cookies["USER_COOKIE"];
                if (cookies != null)
                {
                    this.txtEmail.Text = cookies["Email"];
                    this.txtPass.Attributes.Add("value", cookies["pwd"]);
                    this.checkbox.Checked = true;
                }

                /* //跳转并返回上一页并刷新
                 if (Request.UrlReferrer != null)
                 {
                     ViewState["UrlReferrer"] = Request.UrlReferrer.ToString();
                 }*/
            }
        }

        protected void btnOneLogin_Click(object sender, EventArgs e)
        {
            string Email = txtEmail.Text;
            string pwd = txtPass.Text;

            if (UserInfoManager.AffirmUserEmail(Email))
            {
                if (UserInfoManager.FindUser(Email, pwd))
                {
                    HttpCookie cookie = new HttpCookie("USER_COOKIE");
                    if (this.checkbox.Checked)
                    {
                        //所有的验证信息检测之后，如果用户选择的记住密码，则将用户名和密码写入Cookie里面保存起来
                        cookie.Values.Add("Email", this.txtEmail.Text.Trim());
                        cookie.Values.Add("pwd", this.txtPass.Text.Trim());
                        //这里是设置Cookie的过期时间，这里设置一个星期的时间，过了一个星期之后状态保持自动清空
                        cookie.Expires = System.DateTime.Now.AddDays(7.0);
                        HttpContext.Current.Response.Cookies.Add(cookie);
                    }
                    else
                    {
                        if (cookie["USER_COOKIE"] != null)
                        {
                            //如果用户没有选择记住密码，那么立即将Cookie里面的信息情况，并且设置状态保持立即过期。
                            Response.Cookies["USER_COOKIE"].Expires = DateTime.Now;
                        }
                    }
                    Response.Write("<script>alert('登录成功！');</script>");
                    Response.Redirect("gligli.aspx");
                }
                else
                {
                    Response.Write("<script>confirm('账号或密码错误！');</script>");
                }
            }
            else
            {
                Response.Write("<script language=''>alert('邮箱未注册，不能进行登录！');</script>");
                return;
            }
        }

        //随机字符串
        public static string StrRandom = GenCode(6);
        protected void btnTwoLogin_Click(object sender, EventArgs e)
        {
            string Email = this.txtEnemail.Text;
            if (UserInfoManager.AffirmUserEmail(Email))
            {
                string vf = txtVerification.Text;
                if (vf == "")
                {
                    Response.Write("<script language=''>alert('验证码不能为空！');</script>");
                    return;
                }
                else if (StrRandom == vf)
                {
                    Response.Write("<script language=''>alert('登录成功！');</script>");
                    Response.Redirect("WebForm1.aspx");

                    //强制刷新页面
                    //Response.Redirect(Request.Url.ToString());
                }
                else
                {
                    Response.Write("<script language=''>alert('验证码不一样！');</script>");
                    txtVerification.Text = "";
                }
            }
            else
            {
                Response.Write("<script language=''>alert('邮箱未注册！');</script>");
                return;
            }
        }

        protected void txtCode_Click(object sender, EventArgs e)
        {
            if (UserInfoManager.AffirmUserEmail(this.txtEnemail.Text))
            {
                System.Text.StringBuilder strBody = new System.Text.StringBuilder();
                //strBody.Append("点击下面链接激活账号，48小时生效，否则重新注册账号，链接只能使用一次，请尽快激活！</br>");
                //strBody.Append("<a href='http://localhost:3210/Order/ActivePage?customerID=" + 11+ "&validataCode =" + 22 + "'>点击这里</a></br>");
                strBody.Append("验证码有效时间为5分钟，请尽快填写！");
                strBody.Append("验证码为：" + StrRandom);
                string MessageBody = strBody.ToString();
                //实例化一个发送邮件类。
                MailMessage mailMessage = new MailMessage();
                //发件人邮箱地址，方法重载不同，可以根据需求自行选择。
                mailMessage.From = new MailAddress("1916130556@qq.com");
                //收件人邮箱地址。
                mailMessage.To.Add(new MailAddress(txtEnemail.Text));
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
                Response.Write("<script language=''>alert('邮箱未注册，不能发送验证码！');</script>");
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

        //判断邮箱是否已存在
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string Email = this.txtEmail.Text;
            if (!UserInfoManager.AffirmUserEmail(Email))
            {
                args.IsValid = false;
            }
        }
        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string Email = this.txtEnemail.Text;
            if (!UserInfoManager.AffirmUserEmail(Email))
            {
                args.IsValid = false;
            }
        }
    }
}