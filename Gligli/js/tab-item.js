$(".tab-item").click(function(){
    $(".video-tab").find(".tab-item").each(function(){
        $(this).removeClass("ontab");
    })
    $(this).addClass("ontab");
})