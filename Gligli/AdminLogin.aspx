<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Gligli.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>GliGliManagement</title>
    <link rel="stylesheet" href="./css/AdminLogin.css"/>
    <script src="./js/jquery-3.3.1.min.js"></script>
    <script src="https://cdn.bootcss.com/typed.js/2.0.5/typed.js"></script>
    <script>
        $(window).ready(function () {
            var options = {
                strings: ["Documentation: " + window.location.href],
                typeSpeed: 50,
                cursorChar: '',
                startDelay: 3000
            }
            var options1 = {
                strings: ["System information as of " + Date()],
                typeSpeed: 50,
                cursorChar: '',
                startDelay: 6000
            }
            var options2 = {
                strings: ["Welcome to GLIGLIManagement (GLM VER 1.02) "],
                typeSpeed: 50,
                cursorChar: ''
            }
            var type1 = new Typed("#WT", options2);
            var typed = new Typed("#DM", options);
            var type2 = new Typed("#SI", options1);
        });
    </script>
</head>
<body> 
    <form runat ="server" style="height:100%;width:100%">
        <!-- 扫描线 -->
        <div id="Scanning">
        </div>
        <!-- 信息展示 -->
        <div class="content">
            <p id="WT"></p>
            <p id="DM"></p>
            <p id="SI"></p>
        </div>
        <!-- 登录框 -->
        <div class="login">
            <ul>
                <li>GliGliManagement</li>
                <li>&lt;SYSTEM BOOTING &gt;</li>
                <li>GCI VER 1.02 SYS START</li>
                <li><span>UserName:</span><asp:TextBox ID="UserName" class="UserText" runat="server"></asp:TextBox></li>
                <li><span>PassWord:</span><asp:TextBox ID="password" class="UserText" runat="server" TextMode="Password"></asp:TextBox></li>
                <li>
                    <asp:Button ID="UserLogin" CssClass="UserBtn" runat="server" Text="Login" /></li>
            </ul>
        </div>
    </form>
</body>
</html>
