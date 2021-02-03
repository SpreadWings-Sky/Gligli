var anime = $(".anime-img-slide").find("ul");
var animeIndex =0;
setInterval(function(){
    // 按索引位置移动图片
    anime.css("left",animeIndex*-100+"%");
    //修改选择按钮样式
    $(".anime-trigger").find("span").each(function(){
        $(this).removeClass("oncheck");
    });
    $(".anime-trigger").find("span").eq(animeIndex).addClass("oncheck");
    animeIndex++;
    animeIndex%=5;
},3000);
// 按钮点击事件
$(".anime-trigger").find("span").click(function(){
    //清楚全部按钮样式
    $(".anime-trigger").find("span").each(function(){
        $(this).removeClass("oncheck");
    });
    //更改点击按钮样式，移动图片位置
    $(this).addClass("oncheck");
    animeIndex=$(this).index();
    anime.css("left",animeIndex*-100+"%");
})