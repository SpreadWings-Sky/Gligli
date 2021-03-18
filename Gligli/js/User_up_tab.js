$(".new_link_nav").find("a").click(function(){
    var text = $(this).text();
    $(".new_link_nav").find("a").each(function(){
        $(this).removeClass("active");
    })
    $(this).addClass("active");
    console.log(text);
    if(text=="视频投稿"){
        $(".videoup_warp").css("display","block");
        $(".Sp-up-warp").css("display","none");
    }
    else{
        $(".videoup_warp").css("display","none");
        $(".Sp-up-warp").css("display","block");
    }
})