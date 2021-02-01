var index=0;
var imgbox = $(".content-img-hot-left").find("ul");
// 自动轮播
setInterval(function(){
    // 按索引位置移动图片
    imgbox.css("left",index*-100+"%");
    //修改选择按钮样式
    $(".left-trigger").find("span").each(function(){
        $(this).removeClass("oncheck");
    });
    $(".left-trigger").find("span").eq(index).addClass("oncheck");
    index++;
    index%=5;
},3000);
// 按钮点击事件
$(".left-trigger").find("span").click(function(){
    //清楚全部按钮样式
    $(".left-trigger").find("span").each(function(){
        $(this).removeClass("oncheck");
    });
    //更改点击按钮样式，移动图片位置
    $(this).addClass("oncheck");
    index=$(this).index();
    imgbox.css("left",index*-100+"%");
})