<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Gligli.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>GliGliManagement</title>
    <link rel="stylesheet" href="./css/AdminLogin.css" />
    <script src="./js/jquery-3.3.1.min.js"></script>
    <script src="./js/admin-logo.js"></script>
    <script src="https://cdn.bootcss.com/typed.js/2.0.5/typed.js"></script>
</head>
<body>
    <form runat="server" style="height: 100%; width: 100%">
        <!-- 扫描线 -->
        <div id="Scanning">
        </div>
        <!-- 打印信息展示 -->
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
                <li><asp:TextBox ID="UserName" class="UserText" runat="server"></asp:TextBox></li>
                <li><asp:TextBox ID="password" class="UserText" runat="server" TextMode="Password"></asp:TextBox></li>
                <li>
                   <asp:Button ID="UserLogin" CssClass="UserBtn" runat="server" Text="Login" />
                </li>
            </ul>
        </div>
    </form>
</body>
</html>
