<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VideoTypeListWeb.aspx.cs" Inherits="Gligli.VideoTypeListWeb" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>吉哩吉哩 (゜-゜)つロ 干杯~-gligli</title>
    <link rel="stylesheet" href="./css/index-header.css" />
    <link rel="stylesheet" href="./css/font-awesome.min.css" />
    <link rel="stylesheet" href="./css/index-content.css" />
    <script src="./js/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="./css/index-content2.css">
    <script src="./js/layui-v2.6.1/layui/layui.js" charset="utf-8"></script>
    <link href="./js/layui-v2.6.1/layui/css/layui.css" rel="stylesheet">
    <style>
        .tab-head-lav ul li {
            display: inline;
            float: right;
            width: 20px;
            height: 20px;
            margin: auto 2px;
            color: darkgrey;
        }

        .tab-head-lav {
            width: 100%;
        }

        .alv {
            float: left;
            color: #f25d8e;
            width: auto;
        }

        .tab-head-lav div, .tab-head-lav ul {
            width: auto;
            line-height: 25px;
        }

        .layui-tab-content {
            margin-top: 5px
        }

        .layui-this i {
            color: #f25d8e;
        }

        .tab-content-lav, .layui-tab-content {
            width: 893px;
        }

            .layui-tab-content .video-list_copy ul li {
                display: inline-block;
                height: 202px;
                margin: 2px 5px;
                width: 200px;
            }

        img {
            width: 100%;
        }
        /* 2 */
        .layui-tab-content .articel-list ul li {
            display: flex;
            height: 92px;
            width: 49%;
            margin-bottom: 15px;
            border: 1px solid #999;
            border-radius: 3px;
        }

            .layui-tab-content .articel-list ul li img {
                margin: 11px 2px;
            }
        /* 3 */
        .layui-tab-content .video-list-boxs ul li {
            width: 100%;
            height: 90px;
            border: 1px solid #999;
            border-radius: 5px;
        }

            .layui-tab-content .video-list-boxs ul li img {
                width: 150px;
                height: 85px;
                margin: 2px;
                border-radius: 2px;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header id="header">
            <div class="grid">
                <!-- 左侧标题开始 -->
                <!-- 左侧标题开始 -->
                <div class="header-left grid grid-cell-1">
                    <!-- logo开始 -->
                    <div class="left-logo">
                        <a href="gligli.aspx">
                            <span class="logo-title">主站</span>
                        </a>
                        <!-- 目录 -->
                        <div class="logo-muen">
                            <div class="muen-left">
                                <asp:Repeater ID="TypeVideoCountRepeater" runat="server">
                                    <ItemTemplate>
                                        <a href="javascript:confirm('分区视频数')" class="ms"><%# Eval("TypeName") %><span><%# Eval("TypeVideoCount") %></span></a>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                            <div class="muen-right">
                                <a href="Special.aspx" class="ms">专栏</a>
                            </div>
                        </div>
                        <!-- 目录结束 -->
                    </div>
                    <!-- logo结束 -->
                    <!-- 左侧导航开始 -->
                    <div class="nav-left">
                        <ul>
                            <li class="Phone-logo"><a href="#">下载APP</a>
                                <div class="Dolowdimg">
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!-- 左侧导航结束 -->
                </div>
                <!-- 左侧标题结束 -->
                <!-- 中间搜索栏开始-->
                <div class="header-center grid-cell-2">
                    <div class="search-box">
                        <input type="text" placeholder="呐~这就叫做专业~~~">
                        <a href="">
                            <i class="fa fa-search" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
                <!-- 中间搜索栏结束 -->
                <!-- 右侧状态展示栏开始 -->
                <div class="header-right grid grid-cell-1">
                    <%if (Request.Cookies["Account"] == null || Request.Cookies["Account"].Value == string.Empty)
                        { %>
                    <!-- 未登录状态 -->
                    <div class="right-login">
                        <a href="Login.aspx" class="login-img">
                            <img src="./img/akari.jpg" alt="" /></a>
                        <a href="Login.aspx">登录</a>
                        <a href="Register.aspx">注册</a>
                    </div>
                    <%} %>
                    <%else
                        { %>
                    <!-- 登录状态 -->
                    <div class="userlogin grid">
                        <div class="userimg">
                            <a href='giligili.aspx'>
                                <img id="UserLogin" src='<%=UserDataBin().imgurl %>' alt=""></a>
                            <div class="user-item">
                                <p class="user-name"><%=UserDataBin().userName %></p>
                                <div class="item-num">
                                    <div class="num1">
                                        <span>关注</span>
                                        <p><%=UserDataBin().Gz.ToString() %></p>
                                    </div>
                                    <div class="num2">
                                        <span>粉丝</span>
                                        <p><%=UserDataBin().Fs.ToString() %></p>
                                    </div>
                                    <div class="num3">
                                        <span>动态</span>
                                        <p>--</p>
                                    </div>
                                </div>
                                <ul>
                                    <li><a href="giligili.aspx"><i class="fa fa-user" aria-hidden="true"></i>个人中心</a></li>
                                    <li><a href="UserUp.aspx"><i class="fa fa-cog" aria-hidden="true"></i>投稿管理</a></li>
                                    <li><a href="javascript:confirm('开发中')"><i class="fa fa-file-video-o" aria-hidden="true"></i>直播中心</a></li>
                                    <li>
                                        <asp:LinkButton ID="UserOutLogin_btn" OnClick="UserOutLogin_btn_Click" runat="server"><i class="fa fa-sign-out" aria-hidden="true"></i>退出</asp:LinkButton></li>
                                </ul>
                            </div>
                        </div>
                        <ul class="user-title grid">

                            <li><a href="javascript:void(0)">动态</a>
                                <div class="title-moving">
                                    <div class="moving-tab grid">
                                        <div class="moving-tab-item active">视频动态</div>
                                    </div>
                                    <div class="moving-list">
                                        <asp:Repeater ID="UserWarchUpVideoList" runat="server">
                                            <ItemTemplate>
                                                <div class="list-item gird">
                                                    <div class="list-item-left">
                                                        <a href='TA.aspx?UserID=<%# Eval("VideoUserID") %>'>
                                                            <img id="VideoUserImg" src="<%# Eval("imageUrl") %>" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="list-center">
                                                        <div class="center-name-time">
                                                            <a href='video-playback.aspx?videoID=<%# Eval("VideoID") %>'><%# Eval("VideoUserName") %><span><%# DateDiff(DateTime.Now,DateTime.Parse(Eval("VideoUpTime").ToString())) %>前</span></a>
                                                        </div>
                                                        <div class="center-title">
                                                            <a href='video-playback.aspx?videoID=<%# Eval("VideoID") %>'><%# Eval("Title") %></a>
                                                        </div>
                                                    </div>
                                                    <div class="list-right">
                                                        <img src='<%# Eval("VideoImg") %>' alt="">
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <div class="list-login-add">
                                            <input type="button" value="没有更多了">
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li><a href="Collection.aspx">收藏</a></li>
                            <li><a href="UserUp.aspx">创作中心</a></li>
                        </ul>
                    </div>
                    <%} %>
                    <!-- 投稿栏 -->
                    <div class="right-up">
                        <a href="UserUp.aspx">投稿</a>
                        <div class="up-box">
                            <ul>
                                <li><a href="UserUp.aspx">
                                    <img src="./img/tg1.png" alt="">专栏投稿</a></li>
                                <li><a href="UserUp.aspx">
                                    <img src="./img/tg2.png" alt="">音频投稿</a></li>
                                <li><a href="UserUp.aspx">
                                    <img src="./img/tg3.png" alt="">视频投稿</a></li>
                                <li><a href="UserAdminPage.aspx">
                                    <img src="./img/tg4.png" alt="">稿件管理</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- 右侧状态展示栏结束 -->
            </div>
            <img src="./img/gligli.png" alt="" class="gligli" />
        </header>

        <!-- 主体内容区开始 -->
        <section id="content">
            <!-- 主体内容导航栏开始 -->
            <div class="content-meun grid">
                <div class="meun-left grid">
                    <a href="gligli.aspx">首页</a>
                </div>
                <span class="content-meun-line"></span>
                <%--<div class="meun-conter grid grid-cell-2">
                <span><a href=""><span>动画</span><em>999+</em></a>
                </span>
                <span><a href=""><span>音乐</span><em>999+</em></a>
                </span>
                <span><a href=""><span>番剧</span><em>999+</em></a>
                </span>
                <span><a href=""><span>国创</span><em>999+</em></a>
                </span>
                <span><a href=""><span>游戏</span><em>999+</em></a>
                </span>
                <span><a href=""><span>数码</span><em>999+</em></a>
                </span>
                <span><a href=""><span>鬼畜</span><em>999+</em></a>
                </span>
                <span><a href=""><span>舞蹈</span><em>999+</em></a>
                </span>
                <span><a href=""><span>知识</span><em>999+</em></a>
                </span>
                <span><a href=""><span>生活</span><em>999+</em></a>
                </span>
                <span><a href=""><span>时尚</span><em>999+</em></a>
                </span>
                <span><a href=""><span>娱乐</span><em>999+</em></a>
                </span>
                <span><a href=""><span>放映厅</span><em>999+</em></a>
                </span>
                <span><a href=""><span>美食</span><em>999+</em></a>
                </span>
                <span><a href=""><span>单机游戏</span><em>999+</em></a></span>
                <span class="min-vis"><a href="#">更多<i class="fa fa-chevron-down" aria-hidden="true"></i></a>
                    <div class="meun-conter-item">
                        <a href="" class="item-name">资讯</a>
                        <a href="" class="item-name">影视</a>
                        <a href="" class="item-name">搞笑</a>
                        <a href="" class="item-name">动物圈</a>
                        <a href="" class="item-name">VLOG</a>
                    </div>
                </span>
                <span class="max-vis"><a href=""><span>资讯</span><em>999+</em></a></span>
                <span class="max-vis"><a href=""><span>影视</span><em>999+</em></a></span>
                <span class="max-vis"><a href=""><span>搞笑</span><em>999+</em></a></span>
                <span class="max-vis"><a href=""><span>动物圈</span><em>999+</em></a></span>
                <span class="max-vis"><a href=""><span>VLOG</span></a></span>
            </div>--%>
                <span class="content-meun-line"></span>
                <div class="meun-right">
                    <a href="Special.aspx">专栏</a>
                </div>
            </div>
            <!-- 主体内容导航栏结束 -->
            <!-- 轮播图热门推荐开始 -->
            <div class="content-img-hot">
                <div class="content-img-hot-left">
                    <ul>
                        <asp:Repeater ID="ImgRoctRepeater" runat="server">
                            <ItemTemplate>
                                <li>
                                    <a href='<%# Eval("ImgLike") %>'>
                                        <img src='<%# Eval("ImgUrl") %>' alt="">
                                        <p><%# Eval("Title") %></p>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                    <div class="left-trigger">
                        <span class="oncheck"></span>
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                    <script src="./js/img-hot.js"></script>
                </div>
                <div class="content-img-hot-right">
                    <asp:Repeater ID="ContentHotVideo" runat="server">
                        <ItemTemplate>
                            <div class="hot-video-item">
                                <a href='video-playback.aspx?videoID=<%# Eval("VideoID") %>'>
                                    <img src="<%# Eval("bacimg") %>" alt="">
                                    <div class="video-info">
                                        <p class="title" title='<%# Eval("Title") %>'><%# Eval("Title") %></p>
                                        <p class="userName"><span>UP</span><%# Eval("UserName") %></p>
                                        <p class="play"><span><%# Eval("VideoPlay") %></span>播放</p>
                                    </div>
                                </a>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <!-- 轮播图热门推荐结束 -->
            <!-- 分区大模块 -->
            <div class="content-videoclass">
                <div class="video-list">
                    <header class="video-list-header">
                        <div class="list-header-logo logo3">
                            <a href="javascript:void(0)"><%=type %>推荐</a>
                        </div>
                        <div class="list-header-btn">
                            <asp:LinkButton ID="Change_btn" class="btn-change" OnClick="Change_btn_Click" runat="server"><i class="fa fa-refresh" aria-hidden="true"></i>换一换</asp:LinkButton>
                        </div>
                    </header>
                    <div class="video-list-box ">
                        <ul>
                            <asp:Repeater ID="list_Repeater" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <a href='video-playback.aspx?VideoID=<%# Eval("VideoID") %>'>
                                            <img src='<%# Eval("bacimg") %>' alt="">
                                            <p class="video-list-play"><i class="fa fa-play-circle" aria-hidden="true"></i><%# Eval("VideoPlay") %></p>
                                            <p class="video-list-title"><%# Eval("Title") %></p>
                                            <p class="video-list-up"><span>UP</span><%# Eval("UserName") %></p>
                                        </a>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <!--分类方式-->
                    <div class="tab-head-lav layui-tab">
                        <div class="alv">
                            <p onclick="rus()">o((>ω<))o没有咯！</p>
                        </div>
                        <ul class="layui-tab-title">
                            <li class="layui-this"><i class="fa fa-th" aria-hidden="true"></i></li>
                            <li><i class="fa fa-th-large" aria-hidden="true"></i></li>
                            <li><i class="fa fa-list" aria-hidden="true"></i></li>
                        </ul>
                        <div class="tab-content-lav layui-tab-content">
                            <!--分类1-->
                            <div class="video-list_copy layui-tab-item layui-show">
                                <ul>
                                    <asp:Repeater ID="list2_Repeater" runat="server">
                                        <ItemTemplate>
                                            <li>
                                                <a href='video-playback.aspx?VideoID=<%# Eval("VideoID") %>'>
                                                    <img src='<%# Eval("bacimg") %>' alt="">
                                                    <p class="video-list-play"><i class="fa fa-play-circle" aria-hidden="true"></i><%# Eval("VideoPlay") %></p>
                                                    <p class="video-list-title"><%# Eval("Title") %></p>
                                                    <p class="video-list-up"><span>UP</span><%# Eval("UserName") %></p>
                                                </a>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>

                            <!--分类2-->

                            <div class=" articel-list layui-tab-item ">
                                <ul>
                                    <asp:Repeater ID="List3_Repeater" runat="server">
                                        <ItemTemplate>
                                            <li>
                                                <a href='video-playback.aspx?VideoID=<%# Eval("VideoID") %>' class="arti-img">
                                                    <img src='<%# Eval("bacimg") %>' alt=""></a>
                                                <div class="list-title-name">
                                                    <a href='video-playback.aspx?VideoID=<%# Eval("VideoID") %>' class="arti-name" title='<%# Eval("Title") %>'><%# Eval("Title") %>
                                                    </a>
                                                    <a href='TA.aspx?UserID=<%# Eval("UserID") %>' class="arti-up"><span>UP</span><%# Eval("UserName") %></a>
                                                    <p class="arti-play">
                                                        <i class="fa fa-play-circle" aria-hidden="true"></i><span><%# Eval("VideoPlay") %></span>
                                                    </p>
                                                </div>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>

                            <!--分类3-->

                            <div class="video-list-boxs layui-tab-item ">
                                <ul>
                                    <asp:Repeater ID="List4_Repeater" runat="server">
                                        <ItemTemplate>
                                            <li>
                                                <div class="boxs_lav">
                                                    <img src='<%# Eval("bacimg") %>' alt="">
                                                </div>
                                                <div class="boxs_a">
                                                    <a href='video-playback.aspx?VideoID=<%# Eval("VideoID") %>'>
                                                        <p class="video-list-title"><%# Eval("Title") %></p>
                                                        <p class="video-list-up"><span>UP</span><%# Eval("UserName") %></p>
                                                        <p class="video-list-play"><i class="fa fa-play-circle" aria-hidden="true"></i><%# Eval("VideoPlay") %></p>
                                                    </a>
                                                </div>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <div class="box-v"></div>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 排行榜 -->
                <div class="video-rank">
                    <header class="rank-header">
                        <span>排行榜</span>
                    </header>
                    <% for (int i = 0; i < 9; i++)
                        {
                            object @__o;
                            @__o = i;
                            if (i < 2)
                            {%>
                    <div class="rank-item">
                        <span class="item-number rank-on"><%= i+1 %></span>
                        <div class="item-right">
                            <div class="item-img">
                                <a href='video-playback.aspx?videoID=<%=v1[i].VideoID %>'>
                                    <img src='<%=v1[i].bacimg %>' alt="" /></a>
                            </div>
                            <div class="item-text">
                                <a href='video-playback.aspx?videoID=<%=v1[i].VideoID %>'>
                                    <p><%=v1[i].Title %></p>
                                    <span>播放量<%=v1[i].VideoPlay %></span>
                                </a>
                            </div>
                            <div class="video-show">
                                <div class="video-show-top item-right">
                                    <div class="item-img">
                                        <a href='video-play.aspxback?videoID=<%=v1[i].VideoID %>'>
                                            <img src='<%=v1[i].bacimg %>' alt="" />
                                        </a>
                                    </div>
                                    <div class="item-text">
                                        <a href='video-playback.aspx?videoID=<%=v1[i].VideoID %>'>
                                            <p><%=v1[i].Title %></p>
                                            <span><%=v1[i].UserName %></span><span><%=v1[i].Uptime.ToString("yyyy:MM:dd") %></span>
                                        </a>
                                    </div>
                                </div>
                                <div class="video-show-bottom">
                                    <ul class="grid">
                                        <li><i class="fa fa-play-circle" aria-hidden="true"></i><%=v1[i].VideoPlay %></li>
                                        <li><i class="fa fa-commenting-o" aria-hidden="true"></i><%=v1[i].CommentNumber %></li>
                                        <li><i class="fa fa-star-o" aria-hidden="true"></i><%=v1[i].KeepNumber %></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% }
                        else
                        {%>
                    <div class="rank-item">
                        <span class="item-number"><%=i+1 %></span>
                        <div class="item-right">
                            <div class="item-text">
                                <a href='video-playback.aspx?videoID=<%=v1[i].VideoID %>'>
                                    <p><%=v1[i].Title %></p>
                                </a>
                            </div>
                            <div class="video-show">
                                <div class="video-show-top item-right">
                                    <div class="item-img">
                                        <a href='video-play.aspxback?videoID=<%=v1[i].VideoID %>'>
                                            <img src='<%=v1[i].bacimg %>' alt="" />
                                        </a>
                                    </div>
                                    <div class="item-text">
                                        <a href='video-playback.aspx?videoID=<%=v1[i].VideoID %>'>
                                            <p><%=v1[i].Title %></p>
                                            <span><%=v1[i].UserName %></span><span><%=v1[i].Uptime.ToString("yyyy:MM:dd") %></span>
                                        </a>
                                    </div>
                                </div>
                                <div class="video-show-bottom">
                                    <ul class="grid">
                                        <li><i class="fa fa-play-circle" aria-hidden="true"></i><%=v1[i].VideoPlay %></li>
                                        <li><i class="fa fa-commenting-o" aria-hidden="true"></i><%=v1[i].CommentNumber %></li>
                                        <li><i class="fa fa-star-o" aria-hidden="true"></i><%=v1[i].KeepNumber %></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% }
                        } %>
                </div>
            </div>
        </section>
        <script>
            //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
            layui.use('element', function () {
                // var element = layui.element;
                var $ = layui.jquery, element = layui.element
            });
        </script>
    </form>
</body>
</html>
