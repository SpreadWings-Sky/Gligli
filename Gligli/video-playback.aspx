<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="video-playback.aspx.cs" Inherits="Gligli.video_playback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>咖喱咖喱 (゜-゜)つロ 干杯~-gligli</title>
    <link rel="stylesheet" href="./css/index-header-top.css" />
    <link rel="stylesheet" href="./css/font-awesome.min.css" />
    <link rel="stylesheet" href="./css/video-playback.css" />
    <script src="./js/node_modules/dplayer/dist/DPlayer.min.js"></script>
    <script src="./js/node_modules/dplayer/dist/DPlayer.min.js.map"></script>
    <script src="./js/jquery-3.3.1.min.js"></script>
    <script src="./js/jquery.simplePagination.js"></script>
</head>
<body>
    <div id="return-box"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
    <script>
        $(function () {
            $(window).scroll(function () { //声明滚动对象 
                var top = $(window).scrollTop(); //获取滚动条距离顶部的距离
                if (top > 300) { //若大于300px
                    $('#return-box').fadeIn(); //则淡入小火箭按钮
                } else { //否则
                    $('#return-box').fadeOut(); //淡出按钮
                }
            })
            $('#return-box').click(function () { //当点击小火箭
                $('html,body').animate({
                    'scrollTop': '0px' //滚动条相当于文档的距离以动画的方式为0
                }, 500); //滚动时间为500毫秒
            })
        })
    </script>
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
                                        <a href="OutLogin.aspx"><i class="fa fa-sign-out" aria-hidden="true"></i>退出</a></li>
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
        </header>
    <section id="content">
        <div class="content-box grid">
            <div class="content-left">
                <div class="video-title">
                    <span></span>
                    <h3><%=Session["title"]%></h3>
                </div>
                <div class="video-tb"><span><%=Session["videoplay"] %></span>播放·<span>3724</span>弹幕&nbsp;&nbsp;<span><%=Session["uptime"] %></span></div>
                <div id="video">
                    <div id="dplayer"></div>
                    <script>
                        var videopic = "<%=Session["videopic"]%>";//.http://i0.hdslb.com/bfs/archive/fb913f1613fbbf181f79ea9145efb885d2197865.jpg
                        var videourl = "<%=Session["videoUrl"]%>";//./video/298824683-1-208.mp4
                        var danmukuid = "<%=Session["barrageUrl"] %>";//298824683
                        const dp = new DPlayer({
                            container: document.getElementById('dplayer'),
                            autoplay: false,
                            theme: '#FADFA3',
                            loop: false,
                            lang: 'zh-cn',
                            screenshot: false,
                            hotkey: true,
                            preload: 'auto',
                            // logo: './img/gligli.png',
                            volume: 0.7,
                            mutex: true,
                            video: {
                                url: videourl,
                                pic: videopic,
                                thumbnails: './img/gligli.png',
                                type: 'auto',
                            },
                            danmaku: {
                                id: danmukuid,
                                api: 'https://dplayer.moerats.com/v3/bilibili',
                            },
                            contextmenu: [
                                {
                                    text: 'custom1',
                                    link: 'https://github.com/DIYgod/DPlayer',
                                },
                                {
                                    text: 'custom2',
                                    click: (player) => {
                                        console.log(player);
                                    },
                                },
                            ],
                        });
                    </script>
                </div>
                <div class="video-buttom grid">
                    <div class="grid-cell-2">&nbsp;&nbsp;&nbsp;<span class="man-num"><%=Application["count"] %></span>&nbsp;人正在观看&nbsp;,&nbsp;<span class="bullet_num">3000</span>&nbsp;条弹幕</div>
                    <div class="grid-cell-2">
                        <div id="bullet_switch">
                            <div id="bullet_switch--btn"></div>
                        </div>
                    </div>
                    <div class="grid-cell-2">
                        <div class="bullet">
                            <div id="color-box">
                                <div class="font-color">
                                    <span>颜色:</span><input type="text" id="color-text" value="#FFFFFF" /><div class="z"></div>
                                    <hr />
                                    <input type="button" style="background-color: #00b5e5; color: #00b5e5;" value="#00b5e5" />
                                    <input type="button" style="background-color: #FF88C2; color: #FF88C2;" value="#FF88C2" />
                                    <input type="button" style="background-color: #FF3333; color: #FF3333;" value="#FF3333" />
                                    <input type="button" style="background-color: #FFFF00; color: #FFFF00;" value="#FFFF00" />
                                    <input type="button" style="background-color: #0044BB; color: #0044BB;" value="#0044BB" />
                                    <input type="button" style="background-color: #880000; color: #880000;" value="#880000" />
                                    <script>
                                        $("input[type=button]").click(function () {
                                            $("#color-text").val($(this).val())
                                            $(".z").css("background", $(this).val())
                                        })
                                        $("#color-text").blur(function () {
                                            $(".z").css("background", $(this).val())
                                        })
                                    </script>
                                </div>
                                <h3><i class="fa fa-font" aria-hidden="true"></i></h3>
                            </div>
                            <input type="button" onclick="send()" id="bullet_btn" value="发送" />
                            <input type="text" id="bullet_bar" placeholder="发个友善的弹幕见证当下" />
                        </div>
                    </div>
                </div>
                <form id="form1" runat="server">
                    <div class="content-likebox">
                        <span onclick="VideoLike()" class="VideoLikeBox">
                            <i class="fa fa-thumbs-o-up" aria-hidden="true"></i><span class="VideoLikeNum"><%=Session["LikeNum"] %></span>
                        </span>
                        <span onclick="VideoKeep()" class="VideoKeepBox">
                            <i class="fa fa-star-o" aria-hidden="true"></i><span class="VideoKeepNum"><%=Session["KeepNum"] %></span>
                        </span>
                        <span class="spot">
                            <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
                        </span>
                    </div>
                    <script> 
                        function VideoLike() {
                            var a = <%=int.Parse(Session["LoginUserID"].ToString())%>
                                if (a == 0) {
                                if (confirm("未登录！是否前往登录？")) {
                                    location.href = "Login.aspx"
                                }
                                else {
                                    return false;
                                }
                            }
                            else {
                                if (!$(".VideoLikeBox").hasClass("content-likeboxcolor")) {
                                    $.ajax({
                                        type: "POST",
                                        async: true,
                                        url: "video-playback.aspx/AddVideoLikeInfo",    //必须是后台的静态方法
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        data: "{'userID':'<%=Session["LoginUserID"]%>','videoID':'<%=Session["videoID"]%>'}",
                                            beforeSend: function () {
                                                $(".VideoLikeBox").addClass("content-likeboxcolor")
                                                num = parseInt($(".VideoLikeNum").text()) + 1
                                                $(".VideoLikeNum").text(num)
                                            }
                                        });
                                    }
                                    else {
                                        $.ajax({
                                            type: "POST",
                                            async: true,
                                            url: "video-playback.aspx/DelVideoLikeInfo",    //必须是后台的静态方法
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            data: "{'userID':'<%=Session["LoginUserID"]%>','videoID':'<%=Session["videoID"]%>'}",
                                        beforeSend: function () {
                                            $(".VideoLikeBox").removeClass("content-likeboxcolor")
                                            num = parseInt($(".VideoLikeNum").text()) - 1
                                            $(".VideoLikeNum").text(num)
                                        }
                                    });
                                }
                            }

                        }
                        function VideoKeep() {
                            var a = <%=int.Parse(Session["LoginUserID"].ToString())%>
                                if (a == 0) {
                                if (confirm("未登录！是否前往登录？")) {
                                    location.href = "Login.aspx"
                                    return false;
                                }
                                else {
                                    return false;
                                }
                            }
                            else {
                                if (!$(".VideoKeepBox").hasClass("content-likeboxcolor")) {
                                    $.ajax({
                                        type: "POST",
                                        async: true,
                                        url: "video-playback.aspx/AddVideoKeepInfo",    //必须是后台的静态方法
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        data: "{'userID':'<%=Session["LoginUserID"]%>','videoID':'<%=Session["videoID"]%>'}",
                                            beforeSend: function () {
                                                $(".VideoKeepBox").addClass("content-likeboxcolor")
                                                num = parseInt($(".VideoKeepNum").text()) + 1
                                                $(".VideoKeepNum").text(num)
                                            }
                                        });
                                    }
                                    else {
                                        $.ajax({
                                            type: "POST",
                                            async: true,
                                            url: "video-playback.aspx/DelVideoKeepInfo",    //必须是后台的静态方法
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            data: "{'userID':'<%=Session["LoginUserID"]%>','videoID':'<%=Session["videoID"]%>'}",
                                            beforeSend: function () {
                                                $(".VideoKeepBox").removeClass("content-likeboxcolor")
                                                num = parseInt($(".VideoKeepNum").text()) - 1
                                                $(".VideoKeepNum").text(num)
                                            }
                                        });
                                }
                            }

                        }
                        if (<%=(int)isLikeVideo%> != 1) {
                            $(".VideoLikeBox").addClass("content-likeboxcolor")
                        }
                        else {
                            $(".VideoLikeBox").removeClass("content-likeboxcolor")
                        }
                        if (<%=(int)isKeepVideo%> != 1) {
                            $(".VideoKeepBox").addClass("content-likeboxcolor")
                        }
                        else {
                            $(".VideoKeepBox").removeClass("content-likeboxcolor")
                        }
                    </script>
                    <p class="video-stop"><span><i class="fa fa-ban" style="color: red;" aria-hidden="true"></i>未经作者允许，禁止转载</span></p>
                    <div class="video-introduce">
                        <%=Session["duction"] %>
                    </div>
                    <div class="introduce-btn">
                        <span>展开更多</span>
                    </div>
                    <div class="video-tag">
                        <ul>
                            <%foreach (var item in Videotype)
                                {%>
                            <li><span><%=item%></span></li>
                            <% } %>
                        </ul>
                    </div>
                    <div class="content-commentbox">
                        <h3><span><%=Session["ComCount"] %></span>   评论</h3>
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <div class="commentbox-header">
                            <ul>
                                <asp:LinkButton ID="LinkButton1" data-type="likeNum" runat="server" OnClick="LinkButton1_Click"><li  class="commentbox-active" >按热度排序</li></asp:LinkButton>
                                <asp:LinkButton ID="LinkButton2" data-type="comTime" runat="server" OnClick="LinkButton2_Click"><li>按时间排序</li></asp:LinkButton>
                            </ul>
                        </div>
                        <div class="commentbox-send">
                            <div class="user-head">
                                <img src="./img/akari.jpg" width="48" height="48" alt="" />
                            </div>
                            <div class="commentbox-container">
                                <asp:TextBox ID="RcomID" Style="display: none" runat="server"></asp:TextBox>
                                <%if (int.Parse(Session["LoginUserID"].ToString()) == 0)
                                    { %>
                                <div style="text-align: center; height: 55px; width: 108%; line-height: 55px; background: #ccc; margin: 0 auto; border-radius: 10px;">
                                    <a href="Login.aspx">请登录 </a>
                                </div>
                                <%}
                                    else
                                    { %>
                                <asp:TextBox ID="sendbox" runat="server" name="1" class="commentbox-text" cols="80" placeholder="发条友善的评论" Rows="5" TextMode="MultiLine"></asp:TextBox>
                                <asp:Button ID="sendbtn" OnClientClick="SendCom() " CssClass="commentbox-btn" runat="server" Text="发表" />
                                <%} %>
                            </div>
                        </div>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>

                                <div class="commentbox-list">
                                    <div id="likebox">
                                        <%if (list.Count < 1)
                                            { %>
                                        <div style="height: 150px; line-height: 150px; text-align: center">
                                            <h1>暂时还没有评论，快抢沙发吧！</h1>
                                        </div>
                                        <% }%>
                                        <%else
                                            { %>
                                        <%foreach (var item in list)
                                            {%>
                                        <div class='commentbox-listitem' data-id="<%=item.userID %>">
                                            <div class='listitem-head'>
                                                <a href='?userid=<%=item.userID%>'>
                                                    <img src='<%=item.imageUrl %>' width='48' height='48' />
                                                </a>
                                            </div>
                                            <div class='commentbox-con'>
                                                <div class='user'><a href='#'><%=item.userName %></a></div>
                                                <p><%=item.Comment %></p>
                                                <div class='info'>
                                                    <span class='time'><%=item.comtime %></span>
                                                    <span onclick="LikeCl(this)" data-comid="<%=item.comID %>" class='like'><i class='fa fa-thumbs-o-up' aria-hidden='true'></i>
                                                        <span class="likenum"><%=item.likeNum %></span>
                                                    </span>
                                                    <span onclick="unLikeCl(this)" data-comid="<%=item.comID %>" class='unlike'><i class='fa fa-thumbs-o-down' aria-hidden='true'></i></span>
                                                    <span class='reply' onclick="reply(this)" data-ruserid="<%=item.comID %>" data-reply='<%=item.userName %>'>回复</span>
                                                    <span class='spot'><i class='fa fa-ellipsis-v' aria-hidden='true'></i></span>
                                                </div>
                                                <div class='reply-box'>
                                                    <%foreach (var value in dic[item.comID])
                                                        {%>
                                                    <div class='reply-item'>
                                                        <a href='#' class='reply-head'>
                                                            <img src='<%=value.imageUrl%>' width='24' height='24' /></a>
                                                        <div class='reply-item__user'>
                                                            <a href='<%=value.userID%>' class='name'><%=value.userName%></a>
                                                            <span class='reply-text'><%=value.Comment %></span>
                                                        </div>
                                                        <div class='reply-item__info'>
                                                            <div class='info'>
                                                                <span class='time'><%=value.comtime%></span>
                                                                <span onclick="LikeCl(this)" data-comid="<%=value.comID %>" class='like'>
                                                                    <i class='fa fa-thumbs-o-up' aria-hidden='true'></i>
                                                                    <span class="likenum"><%=value.likeNum%></span>
                                                                </span>
                                                                <span onclick="unLikeCl(this)" data-comid="<%=value.comID %>" class='unlike'><i class='fa fa-thumbs-o-down' aria-hidden='true'></i></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <%}%>
                                                </div>
                                            </div>
                                        </div>
                                        <%}%>
                                        <%}%>
                                    </div>
                                    <asp:Button ID="Button2" Style="display: none" runat="server" Text="Button" />
                                </div>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="LinkButton1" EventName="Click" />
                                <asp:AsyncPostBackTrigger ControlID="LinkButton2" EventName="Click" />
                                <asp:AsyncPostBackTrigger ControlID="sendbtn" EventName="Click" />
                                <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click" />
                                <asp:AsyncPostBackTrigger ControlID="num" EventName="TextChanged" />
                                <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click" />
                            </Triggers>
                        </asp:UpdatePanel>
                        <div id="commentbox-bottom">
                            <div class="commentbox-bottom">
                                <ul id="dark-pagination" class="pagination">
                                </ul>
                                <div class="jump">共<label class="bottom-num"><%=Session["Count"]%></label>页,当前第<asp:TextBox ID="num" runat="server" ReadOnly="True"></asp:TextBox>页</div>
                            </div>
                            <div class="commentbox-send">
                                <div class="user-head">
                                    <img src="./img/akari.jpg" width="48" height="48" alt="" />
                                </div>
                                <div class="commentbox-container">
                                    <%if (int.Parse(Session["LoginUserID"].ToString()) == 0)
                                        { %>
                                    <div style="text-align: center; height: 55px; width: 108%; line-height: 55px; background: #ccc; margin: 0 auto; border-radius: 10px;">
                                        <a href="Login.aspx">请登录 </a>
                                    </div>
                                    <%}
                                        else
                                        { %>
                                    <asp:TextBox ID="TextBox4" runat="server" name="1" class="commentbox-text" cols="80" placeholder="发条友善的评论" Rows="5" TextMode="MultiLine"></asp:TextBox>
                                    <asp:Button ID="Button3" OnClientClick="SendCom() " CssClass="commentbox-btn" runat="server" Text="发表" />
                                    <%} %>
                                </div>
                            </div>
                        </div>

                        <script>
                            function SendCom() {
                                var sendcontent = $("#sendbox").val()
                                if ((sendcontent == null || sendcontent == "" || sendcontent == 'undefined')) {
                                    return false;
                                }
                                $("#sendbox").val("");
                                var rcomid = $("#RcomID").val() == "" ? null : $("#RcomID").val()
                                $("#RcomID").val("");
                                $(".commentbox-text").attr("placeholder", "发条友善的评论");
                                $.ajax({
                                    type: "POST",
                                    async: true,
                                    url: "video-playback.aspx/SendCom",    //必须是后台的静态方法
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    data: "{'content':'" + sendcontent + "','loginID':'<%=Session["LoginUserID"]%>','VideoID':'<%=Session["videoID"]%>','rcomid':'" + rcomid + "'}",
                                    beforeSend: function () {
                                        $("#Button2").click();
                                    }
                                });
                            }
                            function reply(obj) {
                                var a = <%=int.Parse(Session["LoginUserID"].ToString())%>
                                   if (a == 0) {
                                    if (confirm("未登录！是否前往登录？")) {
                                        location.href = "Login.aspx"
                                        return false;
                                    }
                                    else {
                                        return false;
                                    }
                                }
                                else {
                                    $(".commentbox-text").attr("placeholder", $(obj).data("reply") + ":");
                                    $("#RcomID").val($(obj).data("ruserid"))
                                }
                            }
                            $('#dark-pagination').pagination({
                                pages: <%=Session["Count"]%>,
                                cssStyle: 'dark-theme',
                                displayedPages: 5,
                                edges: 1
                            });
                            var index = 1;
                            function index_nav(obj) {
                                var a = $(obj).data("index")
                                if (a == "下一页") {
                                    index++;
                                }
                                else if (a == "上一页") {
                                    index--;
                                }
                                else {
                                    index = a;
                                }
                                $("#num").val(index);
                                indexR(index)
                                $("#Button2").click();

                            }
                            function indexR(obj) {
                                $.ajax({
                                    type: "POST",
                                    async: true,
                                    url: "video-playback.aspx/ComIndex",    //必须是后台的静态方法
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    data: "{'indexs':'" + obj + "','VideoID':'<%=Session["videoID"]%>'}",
                                    beforeSend: function () {
                                    }
                                });
                            }

                            function LikeCl(obj) {
                                if (!($(obj).find("i").hasClass("content-likeboxcolor"))) {
                                    $(obj).find("i").addClass("content-likeboxcolor")
                                    var num = parseInt($(obj).find("span").text()) + 1;
                                    if (($(obj).next().find("i").hasClass("content-likeboxcolor"))) {
                                        $(obj).next().find("i").removeClass("content-likeboxcolor")
                                        num = num + 1;
                                    }
                                    var comid = $(obj).data("comid")
                                    Like(num, comid)
                                    $(obj).find("span").text(num)
                                }
                                else {
                                    $(obj).find("i").removeClass("content-likeboxcolor")
                                    var num = parseInt($(obj).find("span").text()) - 1;
                                    var comid = $(obj).data("comid")
                                    Like(num, comid)
                                    $(obj).find("span").text(num)
                                }
                            }
                            function unLikeCl(obj) {
                                if (!($(obj).find("i").hasClass("content-likeboxcolor"))) {
                                    $(obj).find("i").addClass("content-likeboxcolor")
                                    var num = parseInt($(obj).prev("span").find("span").text()) - 1
                                    if (($(obj).prev().find("i").hasClass("content-likeboxcolor"))) {
                                        $(obj).prev().find("i").removeClass("content-likeboxcolor")
                                        num = num - 1;
                                    }
                                    var comid = $(obj).data("comid")
                                    Like(num, comid)
                                    $(obj).prev("span").find("span").text(num)
                                }
                                else {
                                    $(obj).find("i").removeClass("content-likeboxcolor")
                                    var num = parseInt($(obj).prev("span").find("span").text()) + 1
                                    var comid = $(obj).data("comid")
                                    Like(num, comid)
                                    $(obj).prev("span").find("span").text(num)
                                }
                            }
                            function Like(num, comid) {
                                $.ajax({
                                    type: "POST",
                                    async: true,
                                    url: "video-playback.aspx/Like",    //必须是后台的静态方法
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    data: "{'num':'" + num + "','videoID':'<%=Session["videoID"]%>','comID':'" + comid + "'}",
                                    beforeSend: function () {

                                    }
                                });
                            }
                            $(".introduce-btn").click(function () {
                                if ($(this).find("span").text() == "展开更多") {
                                    $(".video-introduce").css("height", "auto")
                                    $(this).find("span").text("收起")
                                }
                                else {
                                    $(".video-introduce").css("height", "63px")
                                    $(this).find("span").text("展开更多")
                                }
                            })
                            $(".commentbox-header").find("a").click(function () {
                                $(this).find("li").addClass("commentbox-active").parent().siblings("a").find("li").removeClass("commentbox-active")
                                $('#dark-pagination').pagination({
                                    pages: <%=Session["Count"]%>,
                                    cssStyle: 'dark-theme',
                                    displayedPages: 5,
                                    edges: 1
                                });
                                indexR(1)
                                $("#num").val(1);
                            })
                            $(".commentbox-text").focus(function () {
                                $(this).css("background-color", "white")
                            })
                            $(".commentbox-text").blur(function () {
                                $(this).css("background-color", "#f4f5f7")
                            })
                            $("#bullet_switch").attr("title", "弹幕关")
                            dp.danmaku.opacity(1);
                            var a = 1;
                            $("#bullet_switch").click(function () {
                                if (a == 1) {
                                    $(this).css({ "background": "#f4f5f7", "border-color": "#f4f5f7" });
                                    $(this).find("div").css({ "background": "#6d7579", "color": "#fff", "margin-left": "0px" })
                                    $("#bullet_switch").attr("title", "弹幕开")
                                    a = 0;
                                    dp.danmaku.opacity(0);
                                }
                                else {
                                    $(this).css({ "background": "#00a1d6", "border-color": "#00a1d6" });
                                    $(this).find("div").css({ "background": "white", "color": "#00a1d6", "margin-left": "50%" })
                                    $("#bullet_switch").attr("title", "弹幕关")
                                    a = 1;
                                    dp.danmaku.opacity(1);
                                }
                            })
                            function send() {
                                var text = $("#bullet_bar").val();
                                var color = $("#color-text").val();
                                if (text == "") {
                                    return;
                                }
                                const danmaku = {
                                    text: "<a style='text-decoration: underline;color:" + color + "' href='#'>" + text + "</a>",
                                    color: color,
                                    type: 'right',
                                };
                                dp.danmaku.draw(danmaku);
                                $("#bullet_bar").val("");
                            }
                        </script>
                    </div>
                </form>
            </div>
            <!-- 右边部分 -->
            <div class="content-right grid-cell-2">
                <div id="upinfo">
                    <img width="48" height="48" src="./img/akari.jpg" alt="" /><span><%=Session["username"]%></span>&nbsp;&nbsp;<span class="send"><i class="fa fa-envelope" aria-hidden="true"></i> 发消息</span>
                    <br />
                    <span class="introduction" title="<%=Session["introduction"] %>"><%=Session["introduction"] %></span>
                    <br />
                    <a href="#" onclick="UserWarch()" class="WarchBox"><span>+  关注 </span><span><%=Session["WarchNum"] %></span></a>
                    <script>
                        var War =<%=isWarchUser%>;
                        function UserWarch() {
                            var a = <%=int.Parse(Session["LoginUserID"].ToString())%>
                                if (a == 0) {
                                if (confirm("未登录！是否前往登录？")) {
                                    location.href = "Login.aspx"
                                }
                                else {
                                    return false;
                                }
                            }
                            else {
                                if (War != 1) {
                                    $.ajax({
                                        type: "POST",
                                        async: true,
                                        url: "video-playback.aspx/AddWarchInfo",    //必须是后台的静态方法
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        data: "{'LoginUserID':'<%=Session["LoginUserID"]%>','UpUserID':'<%=Session["UserID"]%>'}",
                                            beforeSend: function () {
                                                War = 1;
                                                $(".WarchBox").text("已关注")
                                                $(".WarchBox").css("background", "#ccc")
                                            }
                                        });
                                    }
                                    else {
                                        $.ajax({
                                            type: "POST",
                                            async: true,
                                            url: "video-playback.aspx/DelWarchInfo",    //必须是后台的静态方法
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            data: "{'LoginUserID':'<%=Session["LoginUserID"]%>','UpUserID':'<%=Session["UserID"]%>'}",
                                            beforeSend: function () {
                                                War = 0;
                                                $(".WarchBox").text("+  关注 <%=Session["WarchNum"]%>")
                                                $(".WarchBox").css("background", "#00a1d6")
                                            }
                                        });
                                }
                            }
                        }
                        if (<%=(int)isWarchUser%> != 1) {
                            $(".WarchBox").text("已关注")
                            $(".WarchBox").css("background", "#ccc")
                        }
                        else {
                            $(".WarchBox").text("+  关注 <%=Session["WarchNum"]%>")
                            $(".WarchBox").css("background", "#00a1d6")
                        }
                    </script>
                </div>
                <div id="content-right__recommend">
                    <h4>更多视频推荐</h4>
                    <asp:Repeater ID="videoList" runat="server">
                        <ItemTemplate>
                            <div class="page-card">
                                <a href="video-playback.aspx?videoid=<%#Eval("videoID") %>">
                                    <img src="<%#Eval("bacImg") %>" alt="" />
                                </a>
                                <div class="info">
                                    <a href="video-playback.aspx?videoid=<%#Eval("videoID") %>">
                                        <span class="title" title="<%# Eval("title") %>"><%#Eval("title") %></span>
                                    </a>
                                    <br />
                                    <div class="up"><a href="#"><%#Eval("username") %></a></div>
                                    <div class="count"><%#Eval("videoplay") %>播放·3724弹幕</div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                </div>
                <div class="open">展开</div>
                <script>
                    $(".open").click(function () {
                        $("#content-right__recommend").toggleClass("content-right__recommendactive")
                        if ($(this).text() == "展开") {
                            $(this).text("收回")
                        }
                        else {
                            $(this).text("展开")
                        }
                    })
                </script>
            </div>
        </div>
    </section>
</body>
</html>

