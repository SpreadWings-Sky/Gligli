<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Special.aspx.cs" Inherits="Gligli.Special" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>咖喱咖喱 (゜-゜)つロ 干杯~-gligli</title>
     <link rel="stylesheet" href="./css/index-header-top.css"/>
    <link rel="stylesheet" href="./css/font-awesome.min.css"/>
    <link rel="stylesheet" href="./css/section.css"/>
    <script src="Script/jquery-3.3.1.min.js"></script>
</head>
<body style="height:2000px">
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
                            <a href="#" class="ms">动画<span>1996</span></a>
                            <a href="#" class="ms">生活<span>1596</span></a>
                            <a href="#" class="ms">番剧<span>1589</span></a>
                            <a href="#" class="ms">鬼畜<span>1546</span></a>
                            <a href="#" class="ms">国创<span>1440</span></a>
                            <a href="#" class="ms">时尚<span>1057</span></a>
                            <a href="#" class="ms">音乐<span>888</span></a>
                            <a href="#" class="ms">广告<span>489</span></a>
                            <a href="#" class="ms">舞蹈<span>158</span></a>
                            <a href="#" class="ms">娱乐<span>1789</span></a>
                            <a href="#" class="ms">游戏<span>567</span></a>
                            <a href="#" class="ms">影视<span>687</span></a>
                            <a href="#" class="ms">科技<span>487</span></a>
                            <a href="#" class="ms">放映厅<span>541</span></a>
                            <a href="#" class="ms">数码<span>2587</span></a>
                        </div>
                        <div class="muen-right">
                            <a href="Special.aspx" class="ms">专栏</a>
                            <a href="#" class="ms">话题</a>
                            <a href="#" class="ms">活动</a>
                            <a href="#" class="ms">直播</a>
                        </div>
                    </div>
                    <!-- 目录结束 -->
                </div>
                <!-- logo结束 -->
                <!-- 左侧导航开始 -->
                <div class="nav-left">
                    <ul>
                        <li><a href="#">番剧</a></li>
                        <li><a href="#">直播</a>
                            <div class="nva-left-live">
                                <div class="live-left">
                                    <h3>热门直播:</h3>
                                    <div class="live-list">
                                        <a href="#">
                                            <img src="./img/live-img/t1.png" alt="">
                                            <div class="live-hover">LIVE</div>
                                            <p>酸奶EFI</p></a>
                                        <a href="#">
                                            <img src="./img/live-img/t2.png" alt=""><div class="live-hover">LIVE</div>
                                            <p>夜落莫言</p></a>
                                        <a href="#">
                                            <img src="./img/live-img/t3.png" alt=""><div class="live-hover">LIVE</div>
                                            <p>十二月的...</p></a>
                                        <a href="#">
                                            <img src="./img/live-img/t4.png" alt=""><div class="live-hover">LIVE</div>
                                            <p>睡神不醒、</p></a>
                                        <a href="#">
                                            <img src="./img/live-img/t5.png" alt=""><div class="live-hover">LIVE</div>
                                            <p>是辞妹o</p></a>
                                        <a href="#">
                                            <img src="./img/live-img/t6.png" alt=""><div class="live-hover">LIVE</div>
                                            <p>梦醒三生梦</p></a>
                                    </div>
                                </div>
                                <div class="live-right">
                                    <h3>热门活动:</h3>
                                    <div class="right-list"><img src="./img/live-img/zyt1.jpg" alt=""></div>
                                    <div class="right-list"><img src="./img/live-img/zyt2.jpg" alt=""></div>
                                </div>
                            </div>
                        </li>
                        <li><a href="#">漫画</a>
                            <div class="comic">
                                <div class="comic-left">
                                    <div class="comic-item">
                                        <img src="./img/comic-img/i1.jpg" alt="无职转生~到了异世界就拿出真本事">
                                        <p>无职转生</p>
                                    </div>
                                    <div class="comic-item">
                                        <img src="./img/comic-img/i2.jpg" alt="武林第一厨师">
                                        <p>武林第一厨师</p>
                                    </div>
                                    <div class="comic-item">
                                        <img src="./img/comic-img/i3.png" alt="你就饶了为师我">
                                        <p>你就饶了为师我</p>
                                    </div>
                                    <div class="comic-item">
                                        <img src="./img/comic-img/i4.jpg" alt="别来无恙">
                                        <p>别来无恙</p>
                                    </div>
                                </div>
                                <div class="comic-right">
                                    <h3>人气漫画</h3>
                                    <ol>
                                        <li><a href="#">其中一个是魔王</a><img src="./img/comic-img/c1.jpg" alt="其中一个是魔王"></li>
                                        <li><a href="#">总之非常可爱</a><img src="./img/comic-img/c2.jpg" alt="总之非常可爱"></li>
                                        <li><a href="#">租借女友</a><img src="./img/comic-img/c3.jpg" alt=""></li>
                                        <li><a href="#">失业魔王</a><img src="./img/comic-img/c4.jpg" alt=""></li>
                                        <li><a href="#">伪恋</a><img src="./img/comic-img/c5.jpg" alt=""></li>
                                        <li><a href="#">咒术回战</a><img src="./img/comic-img/c6.png" alt=""></li>
                                    </ol>
                                </div>
                            </div>
                        </li>
                        <li><a href="#">活动</a></li>
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
                    <a href="#">
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
                                <img src='<%=UserDataBin().imgurl %>' alt=""></a>
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
                                        <p>0</p>
                                    </div>
                                </div>
                                <ul>
                                    <li><a href=""><i class="fa fa-user" aria-hidden="true"></i>个人中心</a></li>
                                    <li><a href="gligli_user_upvideo.aspx"><i class="fa fa-cog" aria-hidden="true"></i>投稿管理</a></li>
                                    <li><a href="javascript:void(0)"><i class="fa fa-file-video-o" aria-hidden="true"></i>直播中心</a></li>
                                    <li>
                                        <asp:LinkButton ID="UserOutLogin_btn" OnClick= "UserOutLogin_btn_Click" runat="server"><i class="fa fa-sign-out" aria-hidden="true"></i>退出</asp:LinkButton></li>
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
    </header>
    <section style="margin-top: 30px;">
       <div id="section" class="grid">
            <div class="section-nav">
                <div id="section-nav">
                <span>GliGli专栏</span>
                    <ul>
                        <li><a href="#" style="color: #00a1d6;">推荐</a></li>
                        <li><a href="Animation.aspx">动画</a></li>
                        <li><a href="Game.aspx">游戏</a></li>
                        <li><a href="Music.aspx">音乐</a></li>
                        <li><a href="LightFiction.aspx">轻小说</a></li>
                    </ul>
                 </div>
            </div>
            <script>
                $(window).scroll(function () {
                    var top = $(window).scrollTop();
                    if (top > 60) {
                        $("#section-nav").css("top", "20px");
                    }
                    else {
                        $("#section-nav").css("top", "80px");
                    }
                });
            </script>
            <div class="section-tu">
                <div id="picBox">
                    <asp:Repeater ID="clList" runat="server" >
                    <ItemTemplate>
                        <img src='<%# Eval("ImgUrl")%>' alt=""/>
                    </ItemTemplate>
                    </asp:Repeater>
                    <ul class="choice">
                        <li class="lun"></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                </div>
                 <div class="news-item">
            <h4>推荐文章</h4>
            <asp:Repeater ID="spList" runat="server" >
            <ItemTemplate>
            <a href="#">
                <dl class="news-item-s">
                    <dt>
                        
                        <img src='<%# Eval("pageimg")%>' alt=""/>
                    </dt>
                    <dd>
                        <span><%# Eval("title")%></span>
                        <br>
                        <p><%# Eval("spUrl").ToString().Substring(0,100) %></p>
                        <p style="margin-top: 10px;"><a href="#"><img src='<%# Eval("imageUrl")%>' alt="" style="width:20px;height:20px;float:left; border-radius:50%"/><%# Eval("userName")%></a> <a href="#"><%#Eval("partition") %></a></p>
                    </dd>
                </dl>
            </a>
                <div class="lines"></div>
            </ItemTemplate>
            </asp:Repeater>
        </div>
            </div>
            <script>
                var cur = 0;
                $(".choice li").click(function () {
                    var index = $(this).index();
                    cur = index;
                    show(index);
                });
                var timer = null;
                function showImg() {
                    timer = setInterval(function () {
                        cur++;
                        if (cur > $("#picBox img").length - 1) {
                            cur = 0;
                        }
                        show(cur);
                    }, 3000);
                }
                showImg();
                $("#picBox").mouseover(function () {
                    clearInterval(timer);
                });
                $("#picBox").mouseout(function () {
                    showImg();
                });
                $(".left").click(function () {
                    cur--;
                    if (cur < 0) {
                        cur = $(".choice li").length - 1;
                    }
                    show(cur);
                });
                $(".right").click(function () {
                    cur++;
                    if (cur > $(".choice li").length - 1) {
                        cur = 0;
                    }
                    show(cur);
                });
                function show(cur) {
                    $(".choice li").eq(cur).addClass("lun").siblings("li").removeClass("lun");
                    $("#picBox img").eq(cur).fadeIn(1000).siblings("img").fadeOut(1000);
                }
            </script>
            
            <div class="section-pai">
                <div id="section-pai">
                <input type="text" id="txt"/>
                <input type="button" value="搜索" id="btn" />
                <ul>排行榜&nbsp;&nbsp;&nbsp;&nbsp; 
                    <li>昨天</li>
                    <li>前天</li>
                    <li>周榜</li>
                    <li>月榜</li>
                </ul>
                <div class="line"></div>
                <div class="lie">
                    <div>
                          <asp:Repeater ID="Ranlist" runat="server" >
                            <ItemTemplate>
                                <p title="<%# Eval("Yest").ToString().Substring(0,15)%>">
                                    <span><%# Eval("id")%></span><%# Eval("Yest").ToString().Substring(0,15)%></p>
                            </ItemTemplate>
                          </asp:Repeater>
                    </div>
                    <div>
                        <asp:Repeater ID="Ranlist1" runat="server" >
                            <ItemTemplate>
                                <p title="<%# Eval("Theday").ToString().Substring(0,15)%>">
                                    <span><%# Eval("id")%></span><%# Eval("Theday").ToString().Substring(0,15)%></p>
                            </ItemTemplate>
                          </asp:Repeater>
                    </div>
                    <div>
                        <asp:Repeater ID="Ranlist2" runat="server" >
                            <ItemTemplate>
                                <p title="<%# Eval("Welist").ToString().Substring(0,15)%>">
                                    <span><%# Eval("id")%></span><%# Eval("Welist").ToString().Substring(0,15)%></p>
                            </ItemTemplate>
                          </asp:Repeater>
                    </div>
                    <div>
                        <asp:Repeater ID="Ranlist3" runat="server" >
                            <ItemTemplate>
                                <p title="<%# Eval("Molist").ToString().Substring(0,15)%>">
                                    <span><%# Eval("id")%></span><%# Eval("Molist").ToString().Substring(0,15)%></p>
                            </ItemTemplate>
                          </asp:Repeater>
                    </div>
                    </div>
                     <div class="lie-item">查看完整榜单></div>
                <div class="lie-up">
                    <div id="lie-up">
                    <div class="lie-box">最新投稿GP主&nbsp;&nbsp;&nbsp;
                        <span><a href="#">&nbsp;&nbsp;更新&nbsp;&nbsp;</a></span>
                    </div>
                    <div class="line"></div>
                    <asp:Repeater ID="UserInfo" runat="server" >
                    <ItemTemplate>
                    <a href="#">
                        <dl class="lie-up-s">
                            <dt>
                                <img src='<%# Eval("imgurl") %>' alt=""/>
                            </dt>
                            <dd>
                                    <a href="#" style="font-size: 14px;"><%# Eval("userName") %></a>
                                    <span><a href="#">&nbsp;&nbsp;关注&nbsp;&nbsp;</a></span>
                                    <br>
                                    <p style="margin-top: 10px;">
                                        刚刚投稿了&nbsp;关于原神1.3海灯节活动攻略</p>
                            </dd>
                        </dl>
                    </a>
                   </ItemTemplate>
                   </asp:Repeater>
                </div>
                    <h3>更多</h3>
                    <div class="line"></div>
                    <div class="lie-geng">
                    <a href="#">
                        <dl class="lie-up-s">
                            <dt>
                                <img src="./img/pictures/6.jpg" alt=""/>
                            </dt>
                            <dd>
                                <a href="#" style="font-size: 14px;">专栏投稿</a>
                                 <p style="margin-top: 10px;">
                                        前去写文章</p>
                            </dd>
                        </dl>
                    </a>
                    <a href="#">
                        <dl class="lie-up-s">
                            <dt>
                                <img src="./img/pictures/7.jpg" alt=""/>
                            </dt>
                             <dd>
                                 <a href="#" style="font-size: 14px;">专栏帮助</a>
                                 <p style="margin-top: 10px;">
                                        查看专栏说明</p>
                            </dd>
                        </dl>
                    </a>
                </div>
                </div>
                </div>
               
                </div>
            </div>
            <script>
                $(function () {
                    $(".section-pai li").each(function (index) {
                        $(this).mouseover(function () {
                            $(".section-pai li").each(function (i) {
                                $(this).removeClass("bian")
                                $(".lie div").eq(i).hide();
                            })
                            $(this).addClass("bian");
                            $(".lie div").eq(index).show();
                        });
                    });
                });

                $(window).scroll(function () {
                    var top = $(window).scrollTop();
                    if (top > 500) {
                        $("#section-pai").css("position", "fixed");
                        $(".section-tu").css("margin-right", "20%");
                        $("#lie-up").css("display", "none");
                    }
                    else {
                        $("#section-pai").css("position", "initial");
                        $(".section-tu").css("margin-right", "0");
                        $("#lie-up").css("display", "block");
                    }
                });
            </script>
    </section>
    </form>
</body>
</html>
