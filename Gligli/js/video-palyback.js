    //返回顶部
    $(function() {
        $(window).scroll(function() { //声明滚动对象 
            var top = $(window).scrollTop(); //获取滚动条距离顶部的距离
            if (top > 300) { //若大于300px
                $('#return-box').fadeIn(); //则淡入小火箭按钮
            } else { //否则
                $('#return-box').fadeOut(); //淡出按钮
            }
        })
        $('#return-box').click(function() { //当点击小火箭
            $('html,body').animate({
                'scrollTop': '0px' //滚动条相当于文档的距离以动画的方式为0
            },500); //滚动时间为500毫秒
        })
        //视频
                        
    //弹幕颜色按钮
    
    $("input[type=button]").click(function () {
        $("#color-text").val($(this).val())
        $(".z").css("background", $(this).val())
    })
    $("#color-text").blur(function () {
        $(".z").css("background", $(this).val())
    })

    //聊天列表
    for (var i = 0; i < 10; i++) {
        comment_load(i)
    }
    for (var i = 0; i < 3; i++) {
        repy_load();
    }
    function comment_load(obj) {
        var text = "<div class='commentbox-listitem' data-id='" + obj + "'>" +
            "<div class='listitem-head'><a href='#'><img src='./img/1W60}R28XZ47II`EF`]XGVL.jpg' width='48' height='48'></a></div>" +
            "<div class='commentbox-con'>" +
            "<div class='user'><a href='#'>用户名</a></div>" +
            "<p>评论的内容123456</p>" +
            "<div class='info'>" +
            "<span class='time'>2021-06-05  16:30</span>" +
            "<span class='like'><i class='fa fa-thumbs-o-up' aria-hidden='true'></i>" +
            "<span>500</span>" +
            "</span>" +
            "<span class='unlike'><i class='fa fa-thumbs-o-down' aria-hidden='true'></i>" +
            "</span><span class='reply'>回复</span>" +
            "<span class='spot'><i class='fa fa-ellipsis-v' aria-hidden='true'></i></span>" +
            "</div>" +
            "<div class='reply-box'></div>" +
            "</div>"
        $(text).appendTo(".commentbox-list")
    }
    function repy_load(obj = 2) {
        var text_repy = "<div class='reply-item'>" +
            "<a href='#' class='reply-head'><img src='./img/1W60}R28XZ47II`EF`]XGVL.jpg' width='24' height='24'></a>" +
            "<div class='reply-item__user'>" +
            "<a href='#' class='name'>回复用户名</a>" +
            "<span class='reply-text'>回复内容132123</span>" +
            "</div>" +
            "<div class='reply-item__info'>" +
            "<div class='info'>" +
            "<span class='reply-item__time'>2021-06-05  18:30</span>" +
            "<span class='reply-item__like'>" +
            "<i class='fa fa-thumbs-o-up' aria-hidden='true'></i>" +
            "<span>500</span>" +
            "</span>" +
            "<span class='reply-item__unlike'><i class='fa fa-thumbs-o-down' aria-hidden='true'></i></span>" +
            "<span class='reply-item__reply'>回复</span>" +
            "</div>" +
            "</div>" +
            "</div>"
        $(".commentbox-listitem").each(function () {
            var id = $(this).data("id")
            if (id == 0) {
                $(text_repy).appendTo($(this).find("div").eq(1).find(".reply-box"))
            }
            if (id == obj) {
                $(text_repy).appendTo($(this).find("div").eq(1).find(".reply-box"))
            }

        })
    }
    
    //分页导航
    $('#dark-pagination').pagination({
        pages: 10,
        cssStyle: 'dark-theme',
        displayedPages: 5,
        edges: 1
    });
    var index = 0;
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
    }
    $(".content-likebox>span").click(function () {
        $(this).toggleClass("content-likeboxcolor")
    })
    $(".commentbox-listitem span").click(function () {
        $(this).find("i").toggleClass("content-likeboxcolor").parent().siblings("span").find("i").removeClass("content-likeboxcolor")
    })
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
    $(".commentbox-header").find("li").click(function () {
        $(this).addClass("commentbox-active").siblings("li").removeClass("commentbox-active")
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


    //右边部分
    for (var i = 0; i < 12; i++) {
        load_page();
    }
    function load_page() {
        var html = "<div class='page-card'>" +
            "<img src='./img/圆焰.jpg' alt=''>" +
            "<div class='info'>" +
            "<span class='title'>这是一个标题我也不知道是啥用的</span>" +
            "<br>" +
            "<div class='up'><a href='#2''>作者名称</a></div>" +
            "<div class='count'>76.5万播放·3724弹幕</div>" +
            "</div>" +
            "</div>"
        $(html).appendTo("#content-right__recommend")
    }
    $(".open").click(function () {
        $("#content-right__recommend").toggleClass("content-right__recommendactive")
        if ($(this).text() == "展开") {
            $(this).text("收回")
        }
        else {
            $(this).text("展开")
        }
    })
    })
    