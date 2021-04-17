<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Gligli.Search" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>gligli搜索</title>
    <link rel="stylesheet" href="./css/search.css">
    <script src="./js/jquery-3.3.1.min.js"></script>
    <script src="./js/jquery.simplePagination.js"></script>
</head>
<body>
    <form onclick=""  runat="server">
     <!-- 搜索框 -->
     <div class="middle grid">
        <div class="photo grid-cell-3">
             <img src="./img/Search-img/search.jpg" alt="">
        </div>
        <div class="search-box grid-cell-3">
             <input type="text" name="" id="search-con" placeholder="" onkeyup="document.getElementById('search-cons').value=this.value" onblur="document.getElementById('search-cons').value=this.value">
            <a  onclick="Search()" href="#"  id="search-btn">搜索</a>
         </div>
     </div>
        <script>
            function Search() {
                var text = $("#search-con").val();
                $.ajax({
                    type: "POST",
                    async: true,
                    url: "Search.aspx/Searchs",    //必须是后台的静态方法
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: "{'text':'" + text + "'}",
                    success: function () {
                        $("#Button1").click();
                    }
                });
            }
        </script>
     <div class="middles grid">
         <div class="photos grid-cell-3">
              <img src="./img/Search-img/search.jpg" alt="">
         </div>
         <div class="search-boxs grid-cell-3">
              <input type="text" name="" id="search-cons" placeholder="">
              <input type="submit" value="搜索" id="search-btns">
          </div>
      </div>
    <div class="breadth">
        <!-- 导航栏 -->
        <div class="nav">
            <a href="#" class="nav-one">视频
                <span class="num">99+</span>
            </a>
            <a href="#" class="nav-two">专栏
                <span class="num">99+</span>
            </a>
            <a href="#" class="nav-three">用户
                <span class="num">99+</span>
            </a>
        </div>
        <!-- 整体内容区 -->
        <div class="conformity">
            <!-- 视频 -->
            <div class="tv">
                <!-- 分区 -->
                <div class="partition">
                    <!-- 第一行 -->
                    <ul class="p-one">
                        <li><a data-type="(select count(*) from VideoKeepInfo where videoID = v.videoID) desc"  onclick="type2(this)" href="#" class="back">综合排序</a></li>
                        <li><a data-type="videoPlay desc" onclick="type2(this)" href="#">最多点击</a></li>
                        <li><a data-type="uptime" onclick="type2(this)" href="#">最新发布</a></li>
                        <li><a data-type="(select count(*) from VideoKeepInfo where videoID = v.videoID) desc" onclick="type2(this)" href="#">最多收藏</a></li>
                        <li><a href="#" data-class="screen" class="screen">更多筛选<span class="s-out">v</span></a></li>
                    </ul>
                    <!-- 第二行 -->
                    <ul class="p-three">
                        <li><a data-type="%%" onclick="type1(this)"  href="#" class="back">全部分区</a></li>
                        <asp:Repeater ID="Type" runat="server">
                                <ItemTemplate>
                                        <li><a data-type="<%#Eval("TypeName") %>" onclick="type1(this)" href="#"><%#Eval("TypeName") %></a></li>
                                </ItemTemplate>
                        </asp:Repeater>
                        <li><a   href="#" data-class="put" class="put">收起<span class="p-on">^^</span></a></li>
                    </ul>
                </div>
                <script>
                    function type2(obj) {
                        var type = $(obj).data("type")
                        $.ajax({
                            type: "POST",
                            async: true,
                            url: "Search.aspx/Type2",    //必须是后台的静态方法
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            data: "{'type':'" + type + "'}",
                            success: function () {
                                $("#Button1").click();
                            }
                        });
                    }
                    function type1(obj) {
                        var type = $(obj).data("type")
                        $.ajax({
                            type: "POST",
                            async: true,
                            url: "Search.aspx/Type1",    //必须是后台的静态方法
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            data: "{'type':'" + type + "'}",
                            success: function () {
                                $("#Button1").click();
                            }
                        });
                    }
                </script>
                <div class="tv-li">
                    <ul>
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <!-- 内容 -->
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" OnLoad="UpdatePanel1_Load">
                            <ContentTemplate>
                            <%foreach (var item in list) {%>
                            <li class="video">
                                    <img src="<%=item.videoBaImg %>" alt="">
                                    <a href="video-playback.aspx?videoid=<%=item.VideoID %>" title="<%=item.title %>" class="box-title"><%=item.title %></a>
                                    <div class="video-font grid">
                                        <span class="video-one">
                                            <img src="./img/Search-img/tv.jpg" alt="">
                                            <span class="video-money"><%=item.playNum %></span>
                                        </span><span class="video-one"><img src="./img/Search-img/time.jpg" alt="">
                                            <span class="video-time"><%=item.createtime  %></span>
                                        </span></div>
                                    <span class="video-two">
                                        <img src="./img/Search-img/person.jpg" alt="">
                                        <a href="TA.aspx?UserID=<%=item.UserID %>"><span class="video-user"><%=item.UserName  %></span></a> 
                                    </span></li>
                               <% } %>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
                            </Triggers>
                        </asp:UpdatePanel>
                        <asp:Button ID="Button1" style="display:none" runat="server" Text="Button" />
                    </ul>
                </div>
                <div class="page-one">
                    <div class="one-con">
                        <ul id="ones"  class="pagination">
                        </ul>
                    </div>
                </div>
            </div>
            <!-- 专栏 -->
            <div class="special">
                <!-- 分区 -->
                <div class="partitions">
                    <!-- 第一行 -->
                    <ul class="p-one">
                        <li><a data-type="(select count(*) from SpKeepInfo where spID = v.spID) desc" onclick="type4(this)" href="#" class="back">默认排序</a></li>
                        <li><a data-type="uptime desc" onclick="type4(this)" href="#">最新发布</a></li>
                        <li><a data-type="spNumber desc" onclick="type4(this)"  href="#">最多阅读</a></li>
                        <li><a data-type="(select count(*) from SPCommentInfo where spID=v.spID) desc"  onclick="type4(this)"  href="#">最多评论</a></li>
                        <li><a href="#" data-calss="screen" class="screen">更多筛选<span class="s-out">v</span></a></li>
                    </ul>
                    <!-- 第二行 -->
                    <ul class="p-three">
                        <li><a data-type="%%" href="#"  onclick="type3(this)" class="back">全部分区</a></li>
                        <asp:Repeater ID="SpType" runat="server">
                            <ItemTemplate>
                                <li><a data-type="<%#Eval("typename") %>" onclick="type3(this)" href="#"><%#Eval("typename") %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                        <li><a href="#" data-class="put" class="put">收起<span class="p-on">^</span></a></li>
                    </ul>
                </div>
                
                <script>
                    function type4(obj) {
                        var type = $(obj).data("type")
                        $.ajax({
                            type: "POST",
                            async: true,
                            url: "Search.aspx/Type4",    //必须是后台的静态方法
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            data: "{'type':'" + type + "'}",
                            success: function () {
                                $("#Button1").click();
                            }
                        });
                    }
                    function type3(obj) {
                        var type = $(obj).data("type")
                        $.ajax({
                            type: "POST",
                            async: true,
                            url: "Search.aspx/Type3",    //必须是后台的静态方法
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            data: "{'type':'" + type + "'}",
                            success: function () {
                                $("#Button1").click();
                            }
                        });
                    }
                </script>
                <div class="gaine">
                    <!-- 内容 -->
                 <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                    <%foreach (var item in splist){%>
                    <div class="column">
                        <a href="Details.aspx?id=<%=item.spID %>"><%=item.title %></a>
                        <div>
                            <a href="#">
                                <img src="<%=item.videoBaImg %>" alt="" class="column-photo">
                            </a><p class="column-con">
                            <%=item.spUrl %>
                        </p>
                        <div class="column-user">
                            <a href="TA.aspx?UserID=<%=item.UserID %>" class="column-name">
                                <img src="<%=item.imageUrl %>"" alt=""><%=item.UserName %></a>
                            <p class="column-one">
                                <img src="./img/Search-img/eye.jpg" alt="">
                                <span class="column-num"><%=item.playNum %></span>
                            </p>
                            <p class="column-two">
                                <img src="./img/Search-img/good.jpg" alt="">
                                <span class="column-sum"><%=item.LikeNum %></span>
                            </p>
                            <p class="column-three">
                                <img src="./img/Search-img/say.jpg" alt="">
                                <span class="column-say"><%=item.CommentNum %></span>
                            </p>
                        </div>
                    </div>
                </div>
                    <%}%>
               </ContentTemplate>
               <Triggers>
             <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
             </Triggers>
              </asp:UpdatePanel>
                <div class="page-two">
                    <div class="two-con">
                        <ul id="fives"  class="pagination">
                        </ul>
                    </div>
                </div>
            </div>
        </div>
            <!-- 用户 -->
            <div class="user">
                <div class="news">
                        <!-- 内容 -->
                        <%foreach (var item in userlist){%>
                                <div class="u-con">
                                    <div class="u-box">
                                        <img src="<%=item.imageUrl %>" alt="">
                                        <span class="u-font">
                                            <a href="TA.aspx?UserID=<%=item.UserID %>"><span class="weight"><%=item.UserName %></span></a>
                                        </span>
                                        <p>
                                            <span>稿件:<%=item.playNum %>  </span><span>粉丝数:<%=item.LikeNum %></span></p>
                                        <p>
                                            <span><%=item.brief %></span>
                                        </p>
                                                <%foreach (var v in dic[item.UserID]){%>
                                                              <div class="small">
                                                              <img src="<%=v.videoBaImg %>" alt="">
                                                              <a href="video-playback.aspx?videoID=<%=v.VideoID %>"><%=v.title %></a>
                                                              <span class="u-time"><%=v.createtime %></span>
                                                              </div>
                                                <%} %>
                                    </div>
                                </div>
                             <%} %>
                        </div>
                </div>
        </div>
    <script>
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
            $("#Button1").click();

        }
        function indexR(obj) {
            $.ajax({
                type: "POST",
                async: true,
                url: "Search.aspx/ComIndex",    //必须是后台的静态方法
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: "{'indexs':'" + obj + "'}",
                success: function () {
                    $("#Button1").click();
                }
            });
        }


        $('#ones').pagination({
            pages:<%=Session["videoNum"]%>,
            cssStyle: 'dark-theme',
            displayedPages: 5,
            edges: 1
        });
        $('#fives').pagination({
            pages:<%=Session["SpNum"]%>,
            cssStyle: 'dark-theme',
            displayedPages: 5,
            edges: 1
        });

        $(".nav a").eq(0).addClass("nav-color");
        $(".tv").css("display", "block");

        $(".p-three").find("li").find("a").click(function () {
            $(this).parent().siblings("li").find("div").find("div").css("display", "none");
            $(this).next().find("div").css("display", "block");
        })
        // 标题【切换】
        $(".nav a").click(function () {
            $(this).addClass("nav-color").siblings("a").removeClass("nav-color");
        });
        $(".nav-one").click(function () {
            $(".tv").css("display", "block");
            $(".special").css("display", "none");
            $(".user").css("display", "none");
        });
        $(".nav-two").click(function () {
            $(".tv").css("display", "none");
            $(".special").css("display", "block");
            $(".user").css("display", "none");
        });
        $(".nav-three").click(function () {
            $(".tv").css("display", "none");
            $(".special").css("display", "none");
            $(".user").css("display", "block");
        });
        $(".p-one a").click(function () {
            if ($(this).data("class") == "screen") {
                return false;
            }
            $(this).addClass("back").parent().siblings("li").find("a").removeClass("back");
        });
        $(".p-three a").click(function () {
            if ($(this).data("class") == "put") {
                return false;
            }
            $(this).addClass("back").parent().siblings("li").find("a").removeClass("back");
        });
        $(".p-three li").click(function () {
            var index = $(this).index();
            if (index > 0) {

            }
        });

        // 【收起】按钮
        $(".put").click(function () {
            $(".p-two").slideToggle(1000, function () {
                $(this).css("display", "none");
            });
            $(".p-three").slideToggle(1000, function () {
                $(this).css("display", "none");
            });
            $(".put").slideToggle(1000, function () {
                $(this).css("display", "none");
            });
            $(".screen").slideToggle(1000, function () {
                $(this).css("display", "block");
            });
        });

        // 【展开】按钮
        $(".screen").click(function () {
            $(".p-two").slideToggle(1000, function () {
                $(this).css("display", "block");
            });
            $(".p-three").slideToggle(1000, function () {
                $(this).css("display", "block");
            });
            $(".put").slideToggle(1000, function () {
                $(this).css("display", "block");
            });
            $(".screen").slideToggle(1000, function () {
                $(this).css("display", "none");
            });
        });

        // 【用户】切换
        $(".u-drop ul li").hover(function () {
            // 向下滑动
            $(this).find("ul").show();
        }, function () {
            // 向上滑动
            $(this).find("ul").hide();
        });
        // 页数点击
        var index = 1;
        var len = $(".page-item").length;
        $(".page-item").click(function () {
            $(this).addClass("lone").siblings("li").removeClass("lone");
            index = $(this).index();
            if (index >= 2) {
                $(".page-up").css("display", "inline-block");
            }
            else {
                $(".page-up").css("display", "none");
            }
            if (index != len) {
                $(".page-out").css("display", "inline-block");
            }
            else {
                $(".page-out").css("display", "none");
                index = len;
            }
        });
        // 【上一页】
        $(".page-up").click(function () {
            index--;
            $(".page-item").eq(index - 1).addClass("lone").siblings("li").removeClass("lone");
            loads();
        });
        // 【下一页】
        $(".page-out").click(function () {
            index++;
            $(".page-item").eq(index - 1).addClass("lone").siblings("li").removeClass("lone");
            loads();
        });
        function loads() {
            if (index >= 2) {
                $(".page-up").css("display", "inline-block");
            }
            else {
                $(".page-up").css("display", "none");
            }
            if (index != len) {
                $(".page-out").css("display", "inline-block");
            }
            else {
                $(".page-out").css("display", "none");
            }
        }

        // 【搜索框】判断窗体的滚动条是否下拉
        $(window).scroll(function () {
            var height = $(window).scrollTop();
            if (height > 100) {
                $(".middles").show(300, function () {
                    $(this).css({
                        "display": "block",
                        "position": "fixed",
                        "top": "0",
                        "left": "0",
                        "right": "0",
                    });
                });
            }
            if (height < 100) {
                $(".middles").hide(300);
            }
        });
    </script>

    </form>
</body>
</html>
