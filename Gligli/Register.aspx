<%@ Page Title="" Language="C#" MasterPageFile="~/FootSite.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Gligli.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/rest.css">
    <link rel="stylesheet" href="css/register.css">
    <script src="js/jquery-3.3.1.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entirety grid">
        <div id="register" class="grid-cell-3">
            <div class="r-head">
                <span id="r-title">注册</span>
            </div>
            <div class="r-content">
                <ul>
                    <li>
                        <asp:TextBox ID="txtName" runat="server" placeholder="请输入昵称" CssClass="nickname"></asp:TextBox>
                        <span class="name">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* 昵称不能为空！" ControlToValidate="txtName" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="* 昵称已存在！" ControlToValidate="txtName" OnServerValidate="CustomValidator1_ServerValidate" ></asp:CustomValidator>
                        </span>
                    </li>
                    <li>
                        <asp:TextBox ID="txtOneEmail" runat="server" placeholder="请输入邮箱" CssClass="mailbox"></asp:TextBox>
                        <span class="email">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* 邮箱不能为空！" ControlToValidate="txtOneEmail" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* 请输入正确的邮箱格式(***@**.com)！" ControlToValidate="txtOneEmail" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="* 邮箱已存在！" ControlToValidate="txtOneEmail" OnServerValidate="CustomValidator2_ServerValidate" ></asp:CustomValidator>
                        </span>
                    </li>
                    <li>
                        <asp:TextBox ID="txtOnePass" runat="server" placeholder="请输入8-20位字母或数字密码" CssClass="cipher"  TextMode="Password"></asp:TextBox>
                        <span class="pass">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* 请输入密码！" ControlToValidate="txtOnePass" Display="Dynamic"></asp:RequiredFieldValidator>
                        </span>
                    </li>
                    <li>
                        <asp:TextBox ID="txtDepass" runat="server" placeholder="请再次输入8-20位字母或数字密码" CssClass="decipher"  TextMode="Password"></asp:TextBox>
                        <span class="depass">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* 确认密码不能为空！" ControlToValidate="txtDepass" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="* 密码与确认密码不符！" ControlToCompare="txtOnePass" ControlToValidate="txtDepass" Display="Dynamic"></asp:CompareValidator>
                        </span>
                    </li>
                    <li>
                        <div class="box">
                            <form action="#">
                                <asp:TextBox ID="txtVerification" runat="server" CssClass="auth-num" placeholder="请输入验证码"></asp:TextBox>
                                <asp:Button ID="txtCode" runat="server" Text="发送验证码" CssClass="auth-btn" OnClick="txtCode_Click" />
                            </form>
                        </div>
                        <span class="box-num"></span>
                    </li>
                    <li class="move">
                        <asp:CheckBox ID="checkbox" runat="server" CssClass="agree" Text="" />
                        <span class="size">我已同意
                            <a href="#" class="font">《gligli使用协议》</a>和
                            <a href="#" class="font">《gligli隐私政策》</a>
                        </span>
                    </li>
                    <li>
                        <asp:Button ID="btnRegister" runat="server" Text="注册" CssClass="r-btn" OnClick="btnRegister_Click" />
                    </li>
                </ul>
            </div>
            <a href="Login.aspx" id="r-skip">已有账号，直接<span class="color">登录</span>></a>
        </div>
        <div id="photo" class="grid-cell-3">
            <img src="./img/title.jpg" alt="">
        </div>
    </div>
    
    <script>
        $(".nickname").blur(function () {
            var name = $(".nickname").val();
            if (name.length >= 10 && name.length > 0) {
                $(".name").text("* 请输入不超过10个字符的昵称！");
            }
            else {
                $(".name").text("");
            }
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
