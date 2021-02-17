   // 初始化默认状态
   $(document).ready(function () {
    $("h3").next(".item").slideUp(0);
    $("h3").eq(0).addClass("color");
})
//点击分类
$("h3").click(function () {
    //判断当前分类选项的展开状态（是否含有样式）
    if ($(this).find("span").hasClass("transf") != $("span").is("transf")) {
        //更换指示器样式
        $(this).find("span").toggleClass("transf");
        //收起选项
        $(this).next("ul").slideUp(400);
        return;
    }
    // 获取所以分类标签
    $("h3").each(function () {
        // 清除样式
        $("h3").removeClass("color");
        $(".item").find("li").removeClass("color");
    })
    //添加样式给当前分类
    $(this).addClass("color");
    $(this).next("ul").find("li").eq(0).addClass("color");
    //修改伸缩状态
    $(this).next(".item").slideToggle(400);
    // 更改指示器样式
    $(this).find("span").toggleClass("transf");
})
//点击选项
$(".item").find("li").click(function () {
    // 清除样式
    $("h3").each(function () {
        $("h3").removeClass("color");
        $(".item").find("li").removeClass("color");
    })
    //添加样式到当前选项
    $(this).parent("ul").parent("li").find("h3").addClass("color");
    $(this).addClass("color");
})