<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gligli.aspx.cs" Inherits="Gligli.gligli" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>吉哩吉哩 (゜-゜)つロ 干杯~-gligli</title>
    <link rel="stylesheet" href="./css/index-header.css" />
    <link rel="stylesheet" href="./css/index-footer.css" />
    <link rel="stylesheet" href="./css/font-awesome.min.css" />
    <link rel="stylesheet" href="./css/index-content.css" />
    <script src="./js/jquery-3.3.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <header id="header">
            <div class="grid">
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
                                <a href="" class="ms">动画<span>1996</span></a>
                                <a href="" class="ms">生活<span>1596</span></a>
                                <a href="" class="ms">番剧<span>1589</span></a>
                                <a href="" class="ms">鬼畜<span>1546</span></a>
                                <a href="" class="ms">国创<span>1440</span></a>
                                <a href="" class="ms">时尚<span>1057</span></a>
                                <a href="" class="ms">音乐<span>888</span></a>
                                <a href="" class="ms">广告<span>489</span></a>
                                <a href="" class="ms">舞蹈<span>158</span></a>
                                <a href="" class="ms">娱乐<span>1789</span></a>
                                <a href="" class="ms">游戏<span>567</span></a>
                                <a href="" class="ms">影视<span>687</span></a>
                                <a href="" class="ms">科技<span>487</span></a>
                                <a href="" class="ms">放映厅<span>541</span></a>
                                <a href="" class="ms">数码<span>2587</span></a>
                            </div>
                            <div class="muen-right">
                                <a href="" class="ms">专栏</a>
                                <a href="" class="ms">话题</a>
                                <a href="" class="ms">活动</a>
                                <a href="" class="ms">直播</a>
                            </div>
                        </div>
                        <!-- 目录结束 -->
                    </div>
                    <!-- logo结束 -->
                    <!-- 左侧导航开始 -->
                    <div class="nav-left">
                        <ul>
                            <li><a href="">番剧</a></li>
                            <li><a href="">直播</a>
                                <div class="nva-left-live">
                                    <div class="live-left">
                                        <h3>热门直播:</h3>
                                        <div class="live-list">
                                            <a href="">
                                                <img src="./img/live-img/t1.png" alt="">
                                                <div class="live-hover">LIVE</div>
                                                <p>酸奶EFI</p>
                                            </a>
                                            <a href="">
                                                <img src="./img/live-img/t2.png" alt=""><div class="live-hover">LIVE</div>
                                                <p>夜落莫言</p>
                                            </a>
                                            <a href="">
                                                <img src="./img/live-img/t3.png" alt=""><div class="live-hover">LIVE</div>
                                                <p>十二月的...</p>
                                            </a>
                                            <a href="">
                                                <img src="./img/live-img/t4.png" alt=""><div class="live-hover">LIVE</div>
                                                <p>睡神不醒、</p>
                                            </a>
                                            <a href="">
                                                <img src="./img/live-img/t5.png" alt=""><div class="live-hover">LIVE</div>
                                                <p>是辞妹o</p>
                                            </a>
                                            <a href="">
                                                <img src="./img/live-img/t6.png" alt=""><div class="live-hover">LIVE</div>
                                                <p>梦醒三生梦</p>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="live-right">
                                        <h3>热门活动:</h3>
                                        <div class="right-list">
                                            <img src="./img/live-img/zyt1.jpg" alt="">
                                        </div>
                                        <div class="right-list">
                                            <img src="./img/live-img/zyt2.jpg" alt="">
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li><a href="">漫画</a>
                                <div class="comic">
                                    <div class="comic-left">
                                        <dic class="comic-item">
                                        <img src="./img/comic-img/i1.jpg" alt="无职转生~到了异世界就拿出真本事">
                                        <p>无职转生</p>
                                    </dic>
                                        <dic class="comic-item">
                                        <img src="./img/comic-img/i2.jpg" alt="武林第一厨师">
                                        <p>武林第一厨师</p>
                                    </dic>
                                        <dic class="comic-item">
                                        <img src="./img/comic-img/i3.png" alt="你就饶了为师我">
                                        <p>你就饶了为师我</p>
                                    </dic>
                                        <dic class="comic-item">
                                        <img src="./img/comic-img/i4.jpg" alt="别来无恙">
                                        <p>别来无恙</p>
                                    </dic>
                                    </div>
                                    <div class="comic-right">
                                        <h3>人气漫画</h3>
                                        <ol>
                                            <li><a href="">其中一个是魔王</a><img src="./img/comic-img/c1.jpg" alt="其中一个是魔王"></li>
                                            <li><a href="">总之非常可爱</a><img src="./img/comic-img/c2.jpg" alt="总之非常可爱"></li>
                                            <li><a href="">租借女友</a><img src="./img/comic-img/c3.jpg" alt=""></li>
                                            <li><a href="">失业魔王</a><img src="./img/comic-img/c4.jpg" alt=""></li>
                                            <li><a href="">伪恋</a><img src="./img/comic-img/c5.jpg" alt=""></li>
                                            <li><a href="">咒术回战</a><img src="./img/comic-img/c6.png" alt=""></li>
                                        </ol>
                                    </div>
                                </div>
                            </li>
                            <li><a href="">活动</a></li>
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
                    <%if (Request.Cookies["Account"] == null || Request.Cookies["Account"].ToString() == string.Empty)
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
                            <a href="">
                                <img src="./img/akari.jpg" alt=""></a>
                            <div class="user-item">
                                <p class="user-name">用户名称</p>
                                <div class="item-num">
                                    <div class="num1">
                                        <span>关注</span>
                                        <p>166</p>
                                    </div>
                                    <div class="num2">
                                        <span>粉丝</span>
                                        <p>0</p>
                                    </div>
                                    <div class="num3">
                                        <span>动态</span>
                                        <p>0</p>
                                    </div>
                                </div>
                                <ul>
                                    <li><a href=""><i class="fa fa-user" aria-hidden="true"></i>个人中心</a></li>
                                    <li><a href="gligli_user_upvideo.aspx"><i class="fa fa-cog" aria-hidden="true"></i>投稿管理</a></li>
                                    <li><a href="#"><i class="fa fa-file-video-o" aria-hidden="true"></i>直播中心</a></li>
                                    <li>
                                        <asp:LinkButton ID="UserOutLogin_btn" OnClick="UserOutLogin_btn_Click" runat="server"><i class="fa fa-sign-out" aria-hidden="true"></i>退出</asp:LinkButton></li>
                                </ul>
                            </div>
                        </div>
                        <ul class="user-title grid">
                            <li><a href="#">消息</a>
                                <div class="Message">
                                    <ul>
                                        <li>
                                            <a href="#">回复我的<span>0</span></a>
                                        </li>
                                        <li>
                                            <a href="#">收到的赞<span>0</span></a>
                                        </li>
                                        <li>
                                            <a href="#">系统通知<span>0</span></a>
                                        </li>
                                        <li>
                                            <a href="#">我的消息<span>1</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="">动态</a>
                                <div class="title-moving">
                                    <div class="moving-tab grid">
                                        <div class="moving-tab-item active">视频动态</div>
                                        <div class="moving-tab-item">直播</div>
                                        <div class="moving-tab-item">专栏</div>
                                    </div>
                                    <div class="moving-list">
                                        <div class="list-item gird">
                                            <div class="list-item-left">
                                                <a href=""></a>
                                            </div>
                                            <div class="list-center">
                                                <div class="center-name-time">
                                                    <a href="">短的发布会<span>2077年前</span></a>
                                                </div>
                                                <div class="center-title">
                                                    <a href="">【短的发布会】花最少钱感受最全苹果全家桶？华为MatePad Pro携智慧产品亲民上阵</a>
                                                </div>
                                            </div>
                                            <div class="list-right">
                                                <img src="./img/ls.png" alt="">
                                            </div>
                                        </div>
                                        <div class="list-item gird">
                                            <div class="list-item-left">
                                                <a href=""></a>
                                            </div>
                                            <div class="list-center">
                                                <div class="center-name-time">
                                                    <a href="">短的发布会<span>2077年前</span></a>
                                                </div>
                                                <div class="center-title">
                                                    <a href="">【短的发布会】花最少钱感受最全苹果全家桶？华为MatePad Pro携智慧产品亲民上阵</a>
                                                </div>
                                            </div>
                                            <div class="list-right">
                                                <img src="./img/ls.png" alt="">
                                            </div>
                                        </div>
                                        <div class="list-item gird">
                                            <div class="list-item-left">
                                                <a href=""></a>
                                            </div>
                                            <div class="list-center">
                                                <div class="center-name-time">
                                                    <a href="">短的发布会<span>2077年前</span></a>
                                                </div>
                                                <div class="center-title">
                                                    <a href="">【短的发布会】花最少钱感受最全苹果全家桶？华为MatePad Pro携智慧产品亲民上阵</a>
                                                </div>
                                            </div>
                                            <div class="list-right">
                                                <img src="./img/ls.png" alt="">
                                            </div>
                                        </div>
                                        <div class="list-item gird">
                                            <div class="list-item-left">
                                                <a href=""></a>
                                            </div>
                                            <div class="list-center">
                                                <div class="center-name-time">
                                                    <a href="">短的发布会<span>2077年前</span></a>
                                                </div>
                                                <div class="center-title">
                                                    <a href="">【短的发布会】花最少钱感受最全苹果全家桶？华为MatePad Pro携智慧产品亲民上阵</a>
                                                </div>
                                            </div>
                                            <div class="list-right">
                                                <img src="./img/ls.png" alt="">
                                            </div>
                                        </div>
                                        <div class="list-item gird">
                                            <div class="list-item-left">
                                                <a href=""></a>
                                            </div>
                                            <div class="list-center">
                                                <div class="center-name-time">
                                                    <a href="">短的发布会<span>2077年前</span></a>
                                                </div>
                                                <div class="center-title">
                                                    <a href="">【短的发布会】花最少钱感受最全苹果全家桶？华为MatePad Pro携智慧产品亲民上阵</a>
                                                </div>
                                            </div>
                                            <div class="list-right">
                                                <img src="./img/ls.png" alt="">
                                            </div>
                                        </div>
                                        <div class="list-item gird">
                                            <div class="list-item-left">
                                                <a href=""></a>
                                            </div>
                                            <div class="list-center">
                                                <div class="center-name-time">
                                                    <a href="">短的发布会<span>2077年前</span></a>
                                                </div>
                                                <div class="center-title">
                                                    <a href="">【短的发布会】花最少钱感受最全苹果全家桶？华为MatePad Pro携智慧产品亲民上阵</a>
                                                </div>
                                            </div>
                                            <div class="list-right">
                                                <img src="./img/ls.png" alt="">
                                            </div>
                                        </div>
                                        <div class="list-item gird">
                                            <div class="list-item-left">
                                                <a href=""></a>
                                            </div>
                                            <div class="list-center">
                                                <div class="center-name-time">
                                                    <a href="">短的发布会<span>2077年前</span></a>
                                                </div>
                                                <div class="center-title">
                                                    <a href="">【短的发布会】花最少钱感受最全苹果全家桶？华为MatePad Pro携智慧产品亲民上阵</a>
                                                </div>
                                            </div>
                                            <div class="list-right">
                                                <img src="./img/ls.png" alt="">
                                            </div>
                                        </div>
                                        <div class="list-login-add">
                                            <input type="button" value="查看全部">
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li><a href="">收藏</a></li>
                            <li><a href="">创作中心</a></li>
                        </ul>
                    </div>
                    <%} %>
                    <!-- 投稿栏 -->
                    <div class="right-up">
                        <a href="gligli_user_upvideo.aspx">投稿</a>
                        <div class="up-box">
                            <ul>
                                <li><a href="gligli_user_upvideo.aspx">
                                    <img src="./img/tg1.png" alt="">专栏投稿</a></li>
                                <li><a href="gligli_user_upvideo.aspx">
                                    <img src="./img/tg2.png" alt="">音频投稿</a></li>
                                <li><a href="gligli_user_upvideo.aspx">
                                    <img src="./img/tg3.png" alt="">视频投稿</a></li>
                                <li><a href="#">
                                    <img src="./img/tg4.png" alt="">稿件管理</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- 右侧状态展示栏结束 -->
            </div>
            <img src="./img/gligli.png" alt="" class="gligli" />
        </header>
    </form>
    <!-- 主体内容区开始 -->
    <section id="content">
        <!-- 竖状导航 -->
        <div class="vertical-list">
            <div class="vertical-list-box">
                <div class="box-item">
                    动画
                </div>
                <div class="box-item">
                    番剧
                </div>
                <div class="box-item">
                    鬼畜
                </div>
                <div class="box-item">
                    音乐
                </div>
                <div class="box-item">
                    专栏
                </div>
                <div class="back-top">
                    <i class="fa fa-chevron-up" aria-hidden="true"></i>
                </div>
            </div>
            <script src="./js/back-top.js"></script>
        </div>
        <!-- 主体内容导航栏开始 -->
        <div class="content-meun grid">
            <div class="meun-left grid">
                <a href="gligli.aspx">首页</a>
                <a href="">动态</a>
                <a href="">排行</a>
            </div>
            <span class="content-meun-line"></span>
            <div class="meun-conter grid grid-cell-2">
                <span><a href=""><span>动画</span><em>999+</em></a>
                    <div class="meun-conter-item" style="width: 180px; top: -350%">
                        <a href="" class="item-name">MAD·AMV</a>
                        <a href="" class="item-name">MMD·3D</a>
                        <a href="" class="item-name">短片·手书·配音</a>
                        <a href="" class="item-name">手办·模玩</a>
                        <a href="" class="item-name">特摄</a>
                        <a href="" class="item-name">综合</a>
                    </div>
                </span>
                <span><a href=""><span>音乐</span><em>999+</em></a>
                </span>
                <span><a href=""><span>番剧</span><em>999+</em></a>
                    <div class="meun-conter-item" style="width: 180px; top: -350%">
                        <a href="" class="item-name">连载动画</a>
                        <a href="" class="item-name">完结动画</a>
                        <a href="" class="item-name">资讯</a>
                        <a href="" class="item-name">官方延伸</a>
                        <a href="" class="item-name">新番时间表</a>
                        <a href="" class="item-name">番剧索引</a>
                    </div>
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
            </div>
            <span class="content-meun-line"></span>
            <div class="meun-right">
                <a href="">专栏</a>
                <a href="">活动</a>
                <a href="">直播</a>
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
                <a href="#" class="move">更多<i class="fa fa-chevron-down" aria-hidden="true"></i></a>
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
                            <a href='videoplay.aspx?videoid=<%# Eval("VideoID") %>'>
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
        <!-- 分区内容展示部分开始 -->
        <div class="content-videoclass dh">
            <div class="video-list">
                <header class="video-list-header">
                    <div class="list-header-logo logo1">
                        <a href="#">动画</a>
                    </div>
                    <div class="list-header-btn">
                        <div class="btn-change"><i class="fa fa-refresh" aria-hidden="true"></i>换一换</div>
                        <a href="#">更多<i class="fa fa-chevron-right" aria-hidden="true"></i></a>
                    </div>
                </header>
                <div class="video-list-box">
                    <ul>
                        <asp:Repeater ID="VideoTypeAniment" runat="server">
                            <ItemTemplate>
                                <li>
                                    <a href='video-play.aspx?videoid=<%# Eval("VideoID ") %>'>
                                        <img src='<%# Eval("bacimg") %>' alt="<%# Eval("Title") %>">
                                        <p class="video-list-play"><i class="fa fa-play-circle" aria-hidden="true"></i><%# Eval("VideoPlay") %></p>
                                        <p class="video-list-title"><%# Eval("Title") %></p>
                                        <p class="video-list-up"><span>UP</span><%# Eval("UserName") %></p>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
            <div class="video-rank">
                <header class="rank-header">
                    <span>排行榜</span>
                    <a href="">更多<i class="fa fa-chevron-right" aria-hidden="true"></i></a>
                </header>
                <div class="rank-item">
                    <span class="item-number rank-on">1</span>
                    <div class="item-right">
                        <div class="item-img">
                            <a href="">
                                <img src="./img/hot-img/4.png" alt=""></a>
                        </div>
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                <span>综合得分937.1万</span>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number rank-on">2</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number rank-on">3</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>我不在乎输赢，因为袋鼠喜欢男桐，同时马老师的青花瓷外衣很好看，听说糖宝的鞋被偷走了，我很难过，所以我要加个菜，综上所述，马老师获得胜利</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">4</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">5</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">6</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">7</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">8</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">9</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 番剧动态开始 -->
        <div class="content-videoclass fj">
            <div class="video-list">
                <header class="video-list-header">
                    <div class="list-header-logo logo5">
                        <a href="">番剧</a>
                        <div class="video-tab">
                            <span class="tab-item ontab">最新</span>
                            <span class="tab-item">周一</span>
                            <span class="tab-item">周二</span>
                            <span class="tab-item">周三</span>
                            <span class="tab-item">周四</span>
                            <span class="tab-item">周五</span>
                            <span class="tab-item">周六</span>
                            <span class="tab-item">周日</span>
                        </div>
                    </div>
                    <script src="./js/tab-item.js"></script>
                    <div class="list-header-btn">
                        <div class="btn-change"><i class="fa fa-refresh" aria-hidden="true"></i>换一换</div>
                        <a href="">更多<i class="fa fa-chevron-right" aria-hidden="true"></i></a>
                    </div>
                </header>
                <div class="video-list-anime">
                    <div class="anime-item">
                        <a href="" class="anime-img">
                            <img src="./img/anim-img/1.png" alt="">
                        </a>
                        <div class="anime-txt">
                            <a href="" class="anime-name">记录的地平线 圆桌崩坏
                            </a>
                            <p class="anime-data">
                                <a href="">第5话</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="video-rank">
                <header class="rank-header">
                    <span>排行榜</span>
                    <a href="">更多<i class="fa fa-chevron-right" aria-hidden="true"></i></a>
                </header>
                <div class="rank-item">
                    <span class="item-number rank-on">1</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="" class="anime-updata">
                                <span class="anime-title">Re：从零开始的异世界生活 第二季 后半</span><span class="datanumber">更新至114话</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number rank-on">2</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="" class="anime-updata">
                                <span class="anime-title">Re：从零开始的异世界生活 第二季 后半</span><span class="datanumber">更新至114话</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number rank-on">3</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="" class="anime-updata">
                                <span class="anime-title">Re：从零开始的异世界生活 第二季 后半</span><span class="datanumber">更新至114话</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">4</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="" class="anime-updata">
                                <span class="anime-title">Re：从零开始的异世界生活 第二季 后半</span><span class="datanumber">更新至114话</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">5</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="" class="anime-updata">
                                <span class="anime-title">Re：从零开始的异世界生活 第二季 后半</span><span class="datanumber">更新至114话</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">6</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="" class="anime-updata">
                                <span class="anime-title">Re：从零开始的异世界生活 第二季 后半</span><span class="datanumber">更新至114话</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">7</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="" class="anime-updata">
                                <span class="anime-title">Re：从零开始的异世界生活 第二季 后半</span><span class="datanumber">更新至114话</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">8</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="" class="anime-updata">
                                <span class="anime-title">Re：从零开始的异世界生活 第二季 后半</span><span class="datanumber">更新至114话</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">9</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="" class="anime-updata">
                                <span class="anime-title">Re：从零开始的异世界生活 第二季 后半</span><span class="datanumber">更新至114话</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">10</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="" class="anime-updata">
                                <span class="anime-title">Re：从零开始的异世界生活 第二季 后半</span><span class="datanumber">更新至114话</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-videoclass">
            <div class="video-list">
                <header class="video-list-header">
                    <div class="list-header-logo anime-header">
                        <a href="">番剧动态</a>
                    </div>
                    <div class="list-header-btn">
                        <div class="btn-change"><i class="fa fa-refresh" aria-hidden="true"></i>换一换</div>
                        <a href="">更多<i class="fa fa-chevron-right" aria-hidden="true"></i></a>
                    </div>
                </header>
                <div class="video-list-box">
                    <ul>
                        <li>
                            <a href="">
                                <img src="./img/video-img/8.png" alt="">
                                <p class="video-list-play"><i class="fa fa-play-circle" aria-hidden="true"></i>3.0万</p>
                                <p class="video-list-title">【10月】JOJO的奇妙冒险 黄金之风 04</p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/video-img/8.png" alt="">
                                <p class="video-list-play"><i class="fa fa-play-circle" aria-hidden="true"></i>3.0万</p>
                                <p class="video-list-title">【10月】JOJO的奇妙冒险 黄金之风 04</p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/video-img/8.png" alt="">
                                <p class="video-list-play"><i class="fa fa-play-circle" aria-hidden="true"></i>3.0万</p>
                                <p class="video-list-title">【10月】JOJO的奇妙冒险 黄金之风 04</p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/video-img/8.png" alt="">
                                <p class="video-list-play"><i class="fa fa-play-circle" aria-hidden="true"></i>3.0万</p>
                                <p class="video-list-title">【10月】JOJO的奇妙冒险 黄金之风 04</p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/video-img/8.png" alt="">
                                <p class="video-list-play"><i class="fa fa-play-circle" aria-hidden="true"></i>3.0万</p>
                                <p class="video-list-title">【10月】JOJO的奇妙冒险 黄金之风 04</p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/video-img/8.png" alt="">
                                <p class="video-list-play"><i class="fa fa-play-circle" aria-hidden="true"></i>3.0万</p>
                                <p class="video-list-title">【10月】JOJO的奇妙冒险 黄金之风 04</p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/video-img/8.png" alt="">
                                <p class="video-list-play"><i class="fa fa-play-circle" aria-hidden="true"></i>3.0万</p>
                                <p class="video-list-title">【10月】JOJO的奇妙冒险 黄金之风 04</p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/video-img/8.png" alt="">
                                <p class="video-list-play"><i class="fa fa-play-circle" aria-hidden="true"></i>3.0万</p>
                                <p class="video-list-title">【10月】JOJO的奇妙冒险 黄金之风 04</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="video-rank">
                <header class="rank-header">
                    <span>特别推荐</span>
                </header>
                <div class="anime-img-slide">
                    <ul>
                        <li>
                            <a href="">
                                <img src="./img/anim-img/hot/1.jpg" alt="">
                                <p><span title="学校第一美少女教你变现充">学校第一美少女教你变现充</span></p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/anim-img/hot/2.jpg" alt="">
                                <p><span title="萌王又回来啦！">萌王又回来啦！</span></p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/anim-img/hot/3.jpg" alt="">
                                <p><span title="身体内的细胞日常">身体内的细胞日常</span></p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/anim-img/hot/4.jpg" alt="">
                                <p><span title="剑与魔法的冒险史诗~">剑与魔法的冒险史诗~</span></p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/anim-img/hot/5.jpg" alt="">
                                <p><span title="食杀事件即将揭晓">食杀事件即将揭晓</span></p>
                            </a>
                        </li>
                    </ul>
                    <div class="anime-trigger">
                        <span class="oncheck"></span>
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                    <script src="./js/anime-img-hot.js"></script>
                </div>
            </div>
        </div>
        <!-- 番剧动态结束 -->
        <div class="content-videoclass gc">
            <div class="video-list">
                <header class="video-list-header">
                    <div class="list-header-logo logo2">
                        <a href="">鬼畜</a>
                    </div>
                    <div class="list-header-btn">
                        <div class="btn-change"><i class="fa fa-refresh" aria-hidden="true"></i>换一换</div>
                        <a href="">更多<i class="fa fa-chevron-right" aria-hidden="true"></i></a>
                    </div>
                </header>
                <div class="video-list-box">
                    <ul>
                        <asp:Repeater ID="VideoTypeGhost" runat="server">
                            <ItemTemplate>
                                <li>
                                    <a href='video-play.aspx?videoid=<%# Eval("VideoID ") %>'>
                                        <img src='<%# Eval("bacimg") %>' alt="<%# Eval("Title") %>">
                                        <p class="video-list-play"><i class="fa fa-play-circle" aria-hidden="true"></i><%# Eval("VideoPlay") %></p>
                                        <p class="video-list-title"><%# Eval("Title") %></p>
                                        <p class="video-list-up"><span>UP</span><%# Eval("UserName") %></p>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
            <div class="video-rank">
                <header class="rank-header">
                    <span>排行榜</span>
                    <a href="">更多<i class="fa fa-chevron-right" aria-hidden="true"></i></a>
                </header>
                <div class="rank-item">
                    <span class="item-number rank-on">1</span>
                    <div class="item-right">
                        <div class="item-img">
                            <a href="">
                                <img src="./img/hot-img/4.png" alt=""></a>
                        </div>
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                <span>综合得分937.1万</span>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number rank-on">2</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number rank-on">3</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>我不在乎输赢，因为袋鼠喜欢男桐，同时马老师的青花瓷外衣很好看，听说糖宝的鞋被偷走了，我很难过，所以我要加个菜，综上所述，马老师获得胜利</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">4</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">5</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">6</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">7</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">8</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">9</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-videoclass yy">
            <div class="video-list">
                <header class="video-list-header">
                    <div class="list-header-logo logo3">
                        <a href="">音乐</a>
                    </div>
                    <div class="list-header-btn">
                        <div class="btn-change"><i class="fa fa-refresh" aria-hidden="true"></i>换一换</div>
                        <a href="">更多<i class="fa fa-chevron-right" aria-hidden="true"></i></a>
                    </div>
                </header>
                <div class="video-list-box">
                    <ul>
                        <asp:Repeater ID="VideoTypeMusic" runat="server">
                            <ItemTemplate>
                                <li>
                                    <a href='video-play.aspx?videoid=<%# Eval("VideoID ") %>'>
                                        <img src='<%# Eval("bacimg") %>' alt="<%# Eval("Title") %>">
                                        <p class="video-list-play"><i class="fa fa-play-circle" aria-hidden="true"></i><%# Eval("VideoPlay") %></p>
                                        <p class="video-list-title"><%# Eval("Title") %></p>
                                        <p class="video-list-up"><span>UP</span><%# Eval("UserName") %></p>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
            <div class="video-rank">
                <header class="rank-header">
                    <span>排行榜</span>
                    <a href="">更多<i class="fa fa-chevron-right" aria-hidden="true"></i></a>
                </header>
                <div class="rank-item">
                    <span class="item-number rank-on">1</span>
                    <div class="item-right">
                        <div class="item-img">
                            <a href="">
                                <img src="./img/hot-img/4.png" alt=""></a>
                        </div>
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                <span>综合得分937.1万</span>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number rank-on">2</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number rank-on">3</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>我不在乎输赢，因为袋鼠喜欢男桐，同时马老师的青花瓷外衣很好看，听说糖宝的鞋被偷走了，我很难过，所以我要加个菜，综上所述，马老师获得胜利</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">4</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">5</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">6</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">7</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">8</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">9</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                        <div class="video-show">
                            <div class="video-show-top item-right">
                                <div class="item-img">
                                    <a href="">
                                        <img src="./img/hot-img/4.png" alt=""></a>
                                </div>
                                <div class="item-text">
                                    <a href="">
                                        <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                        <span>卑鄙的南瓜骨头</span><span>2021-01-30</span>
                                    </a>
                                </div>
                            </div>
                            <div class="video-show-bottom">
                                <ul class="grid">
                                    <li><i class="fa fa-play-circle" aria-hidden="true"></i>489万</li>
                                    <li><i class="fa fa-commenting-o" aria-hidden="true"></i>8.3万</li>
                                    <li><i class="fa fa-star-o" aria-hidden="true"></i>32万</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-videoclass zl">
            <div class="video-list">
                <header class="video-list-header">
                    <div class="list-header-logo logo4">
                        <a href="">专栏</a>
                    </div>
                    <div class="list-header-btn">
                        <div class="btn-change"><i class="fa fa-refresh" aria-hidden="true"></i>换一换</div>
                        <a href="">更多<i class="fa fa-chevron-right" aria-hidden="true"></i></a>
                    </div>
                </header>
                <div class="video-list-box articel-list">
                    <ul>
                        <asp:Repeater ID="SpItem" runat="server">
                            <ItemTemplate>
                                <li>
                                    <a href="" class="arti-img">
                                        <img src='<%# Eval("PageImg") %>' alt=""></a>
                                    <div class="list-title-name">
                                        <a href="" class="arti-name" title='<%# Eval("Title") %>'><%# Eval("Title") %>
                                        </a>
                                        <a href="" class="arti-up"><span>UP</span><%# Eval("UserName") %></a>
                                        <p class="arti-play">
                                            <i class="fa fa-eye fa-fw" aria-hidden="true"></i><span><%# Eval("SpNumber") %></span>
                                            <i class="fa fa-comment-o fa-fw" style="margin-left: 10%;" aria-hidden="true"></i><span><%# Eval("Sum") %></span>
                                        </p>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
            <div class="video-rank">
                <header class="rank-header">
                    <span>排行榜</span>
                    <a href="">更多<i class="fa fa-chevron-right" aria-hidden="true"></i></a>
                </header>
                <div class="rank-item">
                    <span class="item-number rank-on">1</span>
                    <div class="item-right">
                        <div class="item-img">
                            <a href="">
                                <img src="./img/hot-img/4.png" alt=""></a>
                        </div>
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                                <span>综合得分937.1万</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number rank-on">2</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number rank-on">3</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>我不在乎输赢，因为袋鼠喜欢男桐，同时马老师的青花瓷外衣很好看，听说糖宝的鞋被偷走了，我很难过，所以我要加个菜，综上所述，马老师获得胜利</p>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">4</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">5</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">6</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">7</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">8</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="rank-item">
                    <span class="item-number">9</span>
                    <div class="item-right">
                        <div class="item-text">
                            <a href="">
                                <p>芜湖大司马 VS 盖亚卢本伟（真 · 决赛！！）</p>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 分区内容展示部分结束 -->
    </section>
    <!--底部版权-->
    <footer id="footer">
        <!-- 上半部分开始 -->
        <div class="footer-top grid">
            <div class="footer-top-left">
                <div class="left-item">
                    <h3>gligli</h3>
                    <ul>
                        <li><a href="">关于我们</a></li>
                        <li><a href="">加入我们</a></li>
                        <li><a href="">gligli认证</a></li>
                        <li><a href="">联系我们</a></li>
                        <li><a href="">友情链接</a></li>
                        <li><a href="">Inverstor Relations</a></li>
                    </ul>
                </div>
                <div class="left-item">
                    <h3>传送门</h3>
                    <ul>
                        <li><a href="">帮助中心</a></li>
                        <li><a href="">侵权申述</a></li>
                        <li><a href="">壁纸站</a></li>
                        <li><a href="">高级弹幕</a></li>
                        <li><a href="">活动中心</a></li>
                        <li><a href="">专车号服务中心</a></li>
                        <li><a href="">活动专题页</a></li>
                        <li><a href="">用户反馈论坛</a></li>
                        <li><a href="">名人堂</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-top-right">
                <ol>
                    <li><a href="">
                        <i class="fa fa-download" aria-hidden="true"></i>
                        <p>下载APP</p>
                    </a></li>
                    <li><a href="">
                        <i class="fa fa-weibo" aria-hidden="true"></i>
                        <p>新浪微博</p>
                    </a></li>
                    <li><a href="">
                        <i class="fa fa-weixin" aria-hidden="true"></i>
                        <p>官方微信</p>
                    </a></li>
                </ol>
            </div>
        </div>
        <!-- 上半部分结束 -->
        <!-- 下半部分开始 -->
        <div class="footer-bottom grid">
            <div class="footer-bottom-left grid-cell-2">
                <img src="./img/footer-img/bq1.png" alt="" />
                <img src="./img/footer-img/bq2.png" alt="" />
                <img src="./img/footer-img/bq3.png" alt="" />
                <span></span>
            </div>
            <div class="footer-bottom-right grid-cell-4">
                <p>
                    <span><a href="#">营业执照</a></span>
                    <span>信息网络传播视听节目许可证：6666666</span>
                    <span>网络文化经营许可证 沪网文【2077】4857-111号</span>
                    <span>广播电视节目制作经营许可证：（龍）字第00001号</span>
                    <span>增值电信业务经营许可证 龍A1-20770001</span>
                    <span>互联网ICP备案：<a href="#">龍ICP备10000111号-2</a></span>
                    <span>出版物经营许可证 龍批字第ZY2077 号</span>
                    <span>互联网药品信息服务资格证 龍-非经营性-2077-0101</span>
                    <span>营业性演出许可证 龍市文演（经）00-0102</span>
                </p>
                <p>违法不良信息举报邮箱：help@gligli.com |违法不良信息举报电话：4006262233转1</p>
                <p>
                    <i id="bg1"></i><a href="http://www.shjbzx.cn/">上海互联网举报中心 </a>|
                    <a href="http://jbts.mct.gov.cn/">12318全国文化市场举报网站</a>|
                    <i id="bg2"></i><a href="http://www.beian.gov.cn">龍公网安备2146897157985号</a>|
                    <a href="http://www.shdf.gov.cn/shdf/channels/740.html">打黄扫非举报</a>
                </p>
                <p>网上有害信息举报专区：<i id="bg3"></i><a href="https://www.12377.cn/">中国互联网违法和不良信息举报中心</a></p>
                <p>亲爱的市民朋友，上海警方反诈劝阻电话“96110”系专门针对避免您财产被骗受损而设，请您一旦收到来电，立即接听。</p>
                <p>公司名称：夜之城荒版科技有限公司|公司地址：夜之城市中心荒版塔|电话：010-010011001</p>
            </div>
        </div>
    </footer>
</body>
</html>
