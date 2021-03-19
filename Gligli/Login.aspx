<%@ Page Title="" Language="C#" MasterPageFile="~/FootSite.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Gligli.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/rest.css">
    <link rel="stylesheet" href="css/login.css">
    <script src="js/jquery-3.3.1.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entirety grid">
        <div id="photo" class="grid-cell-3">
            <img src="./img/title.jpg" alt="">
        </div>
        <div id="login" class="grid-cell-3">
            <div class="l-head">
                <span id="l-title">登录</span>
            </div>
            <div class="l-top">
                <a href="#" class="active">密码登录</a>
                <a href="#">验证登录</a>
            </div>
            <div class="l-content">
                <div id="m-content" class="l-default">
                    <ul>
                        <li>
                            <asp:TextBox ID="txtEmail" runat="server" placeholder="请输入账号" CssClass="mailbox"></asp:TextBox>
                            <span class="email">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* 账号不能为空！" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* 请输入正确的账号格式(***@**.com)！" ControlToValidate="txtEmail" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                <asp:CustomValidator ID="CustomValidator1" runat="server"  ErrorMessage="* 该账号未注册！" ControlToValidate="txtEmail" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                            </span>
                        </li>
                        <li>
                            <asp:TextBox ID="txtPass" runat="server" placeholder="请输入8-20位字母或数字密码" CssClass="cipher"  TextMode="Password"></asp:TextBox>
                            <span class="pass">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* 请输入密码！" ControlToValidate="txtPass" Display="Dynamic"></asp:RequiredFieldValidator>
                            </span>
                        </li>
                        <li>
                            <span class="click">
                                <asp:CheckBox ID="checkbox" runat="server" CssClass="rtpass" Text="记住密码" /> 
                            </span>
                            <span class="forget">忘记密码</span>
                        </li>
                        <li> 
                            <asp:Button ID="btnOneLogin" runat="server" Text="登录" CssClass="l-btn" OnClick="btnOneLogin_Click" />
                        </li>
                    </ul>
                </div>
                <div id="y-content">
                     <ul>
                        <li>
                            <asp:TextBox ID="txtEnemail" runat="server" placeholder="请输入邮箱" CssClass="enmailbox"></asp:TextBox>
                            <span class="an-email">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="* 请输入正确的邮箱格式(***@**.com)！" ControlToValidate="txtEnemail" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                <asp:CustomValidator ID="CustomValidator2" runat="server"  ErrorMessage="* 该邮箱未注册！" ControlToValidate="txtEnemail" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
                            </span>
                        </li>
                        <li>
                            <form action="#">
                                <asp:TextBox ID="txtVerification" runat="server" CssClass="auth-num" placeholder="请输入验证码"></asp:TextBox>
                                <asp:Button ID="txtCode" runat="server" Text="发送验证码" CssClass="auth-btn" OnClick="txtCode_Click" />
                            </form>
                            <span class="box-num"></span>
                        </li>
                        <li> 
                            <asp:Button ID="btnTwoLogin" runat="server" Text="登录" CssClass="ath-btn" OnClick="btnTwoLogin_Click" />
                        </li>
                    </ul>
                </div>
                <a href="Register.aspx" id="l-skip"><没有账号，需要<span class="color">注册</span></a>
            </div>
        </div>
    </div>
    <script>
        $(".l-top a").click(function () {
            $(this).addClass("active").siblings("a").removeClass("active");
            var index = $(this).index();
            $(".l-content div").eq(index).addClass("l-default").siblings("div").removeClass("l-default");
        });
        $(".forget").click(function () {
            $(".l-top a").eq(0).removeClass("active");
            $(".l-top a").eq(1).addClass("active");
            $(".l-content div").eq(1).addClass("l-default").siblings("div").removeClass("l-default");
        });
        $(".cipher").blur(function () {
            var pass = $(".cipher").val();
            if (pass.length < 8 || pass.length > 20) {
                $(".pass").text("* 密码不在8-20位字母或数字的合理范围内！");
            }
            else {
                $(".pass").text("");
            }
        });
    </script>
</asp:Content>
