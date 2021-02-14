<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Gligli.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>GliGliManagement</title>
    <link rel="stylesheet" href="css/AdminLogin.css" />
    <link rel="stylesheet" href="./css/jquery.vidbacking.css"/>
    <script src="./js/jquery-2.1.1.min.js"></script>
    <script src="./js/jquery.vidbacking.js"></script>
    <script type="text/javascript">
        $(function () {
            $('body').vidbacking();
        });
    </script>
</head>
<body>
    <form runat="server" style="height: 100%; width: 100%">
        <div class="login">
            <h2>GLI管理</h2>
            <div class="login_box">
                <!-- required就是不能为空 必须在css效果中有很大的作用 -->
                <!-- 可以简写为required -->
                <input type="text" required /><label>用户名</label>
            </div>
            <div class="login_box">
                <input type="password" required="required" /><label>密码</label>
            </div>
            <a href="javascript:void(0)">登录
				<span></span>
                <span></span>
                <span></span>
                <span></span>
            </a>
        </div>
        <video autoplay muted loop class="vidbacking">
            <source src="./img/Admin-img/bg.mp4" type="video/mp4" />
        </video>
    </form>
</body>
</html>
