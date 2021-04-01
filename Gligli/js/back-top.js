var lsbx = $(".vertical-list-box");
$(function() {
    $('.dh').scrollex({
        top:'90%',
        bottom: '70%',
        enter: function(progress) {
        lsbx.find(".box-item").each(function(){
            $(this).removeClass("Onclick-list");
        })
        lsbx.find(".box-item").eq(0).addClass("Onclick-list");
      }
    });
    $('.gc').scrollex({
        top:'90%',
        bottom: '70%',
        enter: function(progress) {
        lsbx.find(".box-item").each(function(){
            $(this).removeClass("Onclick-list");
        })
        lsbx.find(".box-item").eq(1).addClass("Onclick-list");
      }
    });
    $('.yy').scrollex({
        top:'90%',
        bottom: '70%',
        enter: function(progress) {
        lsbx.find(".box-item").each(function(){
            $(this).removeClass("Onclick-list");
        })
        lsbx.find(".box-item").eq(2).addClass("Onclick-list");
      }
    });
    $('.zl').scrollex({
        top:'90%',
        bottom: '70%',
        enter: function(progress) {
        lsbx.find(".box-item").each(function(){
            $(this).removeClass("Onclick-list");
        })
        lsbx.find(".box-item").eq(3).addClass("Onclick-list");
      }
    });
  });

// $(window).scroll(function () {
//     var scr = parseInt($(this).scrollTop());
    // var Maxscr = document.body.offsetHeight;
    // var Top = (scr/Maxscr).toFixed(2)*100;
    // console.log(scr);
    // if(Top<16){
    //     lsbx.find(".box-item").each(function(){
    //         $(this).removeClass("Onclick-list");
    //     })
    // }
    // if(Top>16&&Top<34){
    //     lsbx.find(".box-item").each(function(){
    //         $(this).removeClass("Onclick-list");
    //     })
    //     lsbx.find(".box-item").eq(0).addClass("Onclick-list");
    // }
    // if(Top>34&&Top<51){
    //     lsbx.find(".box-item").each(function(){
    //         $(this).removeClass("Onclick-list");
    //     })
    //     lsbx.find(".box-item").eq(1).addClass("Onclick-list");
    // }
    // if(Top>51&&Top<67){
    //     lsbx.find(".box-item").each(function(){
    //         $(this).removeClass("Onclick-list");
    //     })
    //     lsbx.find(".box-item").eq(2).addClass("Onclick-list");
    // }
    // if(Top>67){
    //     lsbx.find(".box-item").each(function(){
    //         $(this).removeClass("Onclick-list");
    //     })
    //     lsbx.find(".box-item").eq(3).addClass("Onclick-list");
    // }
//})
//回到顶部 平滑效果
$(".back-top").click(function(){
    var gotoTop= function(){
        var currentPosition = document.documentElement.scrollTop || document.body.scrollTop;
        currentPosition -= 10;
        if (currentPosition > 0) {
          window.scrollTo(0, currentPosition);
        }
        else {
          window.scrollTo(0, 0);
          clearInterval(timer);
          timer = null;
        }
      }
      var timer=setInterval(gotoTop,1);
})
lsbx.find(".box-item").eq(0).click(function(){
    $(window).scrollTop(532);
})
lsbx.find(".box-item").eq(1).click(function(){
    $(window).scrollTop(976);
})
lsbx.find(".box-item").eq(2).click(function(){
    $(window).scrollTop(1427);
})
lsbx.find(".box-item").eq(3).click(function(){
    $(window).scrollTop(1927);
})

