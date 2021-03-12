<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gligli_user_upvideo.aspx.cs" Inherits="Gligli.gligli_user_upvideo" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>创作中心-gligli</title>
    <link rel="stylesheet" href="./css/User_upVideo.css" />
    <link rel="stylesheet" href="./css/font-awesome.min.css" />
</head>

<body>
    <div id="warp">
        <!-- 头部开始 -->
        <header id="header">
            <!-- 左侧logo -->
            <div class="left-block">
                <a href="#">
                    <img src="./img/gligli.png" alt="" />主站</a>
            </div>
            <!-- 右侧内容显示 -->
            <div class="right-block">
                <span class="UserImg">
                    <a class="ImgT" href="">
                        <img src="./img/akari.jpg" alt="" /></a>
                    <div class="UserMuen">
                        <a href="#"><i class="fa fa-user-o" aria-hidden="true"></i><span>个人中心</span></a>
                        <a href="#"><i class="fa fa-sign-out" aria-hidden="true"></i><span>退出登录</span></a>
                    </div>
                </span>
                <div class="UserRegitDay">在gligli的第10000天</div>
            </div>
        </header>
        <!-- 头部结束 -->
        <!-- 主体开始 -->
        <section id="content">
            <!-- 左侧菜单 -->
            <div class="content_warp_nav">
                <div class="nav_warp">
                    <div class="nav_data">
                        <div class="nav-content">
                            <div class="upload_btn">
                                <a href="#"><i class="fa fa-upload" aria-hidden="true"></i>投稿</a>
                            </div>
                            <!-- 选择列表 -->
                            <ul class="nav-warp">
                                <li class="bar_item">
                                    <div class="bar_item_meun">
                                        <span class="box">
                                            <i class="fa fa-home" aria-hidden="true"></i><span>首页</span>
                                        </span>
                                    </div>
                                </li>
                                <li class="bar_item">
                                    <div class="bar_item_meun">
                                        <span class="box">
                                            <i class="fa fa-credit-card" aria-hidden="true"></i><span>内容管理</span><i
                                                class="fa fa-angle-up" fa-angle-up aria-hidden="true"></i>
                                        </span>
                                    </div>
                                </li>
                                <li class="bar_item">
                                    <div class="bar_item_meun">
                                        <span class="box">
                                            <i class="fa fa-line-chart" aria-hidden="true"></i><span>数据中心</span>
                                        </span>
                                    </div>
                                </li>
                                <li class="bar_item">
                                    <div class="bar_item_meun">
                                        <span class="box">
                                            <i class="fa fa-users" aria-hidden="true"></i><span>粉丝管理</span>
                                        </span>
                                    </div>
                                </li>
                                <li class="bar_item">
                                    <div class="bar_item_meun">
                                        <span class="box">
                                            <i class="fa fa-comments" aria-hidden="true"></i><span>互动管理</span>
                                        </span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- 主体结束 -->
    </div>
</body>

</html>
