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
            <!-- 右侧投稿 -->
            <div class="content_body">
                <div class="upload_warp">
                    <div class="new_link_top">
                        <div class="new_link_nav">
                            <a href="#" class="nav_item active">视频投稿</a>
                            <a href="#" class="nav_item">专栏投稿</a>
                        </div>
                        <div class="videoup_warp">
                            <div class="video_warp_content">
                                <div>
                                    <div class="Up_btn">
                                        <div class="Up_btn_content">
                                            <div class="file_list">
                                                <div class="file_title">
                                                    <h1>文件上传</h1>
                                                    <p>(推荐使用mp4)</p>
                                                </div>
                                                <div class="file_list_warp">
                                                    <div class="file_list_item">
                                                        <div class="file_item_ico">
                                                            <span>p1</span>
                                                        </div>
                                                        <div class="file_item_warp">
                                                            <div class="item_state_warp">
                                                                <span class="item-title">
                                                                    <p>
                                                                        [HYSUB]Kaifuku Jutsushi no
                                                                        Yarinaoshi[07][GB_MP4][1920X1080]
                                                                    </p>
                                                                </span>
                                                                <div class="item-state-op">
                                                                    <span>删除</span>
                                                                    <i class="item-state-op-ico"></i>
                                                                </div>
                                                            </div>
                                                            <div class="item_upload_info">
                                                                <span>上传完成</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="div-line"></div>
                                            </div>
                                            <div class="file-content">
                                                <div class="file-content-title">
                                                    <h1>基本信息</h1>
                                                </div>
                                                <div class="file-content-img">
                                                    <div class="img-title">
                                                        <h3>视频封面设置</h3>
                                                        <p>（格式jpeg、png，文件大小≤5MB，建议尺寸≥1146*717，最低尺寸≥960*600）</p>
                                                    </div>
                                                    <div class="img-up">
                                                        <img src="./img/banner.jpg" alt="">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- 主体结束 -->
    </div>
</body>

</html>
