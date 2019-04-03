// 引入头部底部HTML片段
$(function () {
    //首页右下角ul列表显示及固定
    var ul_height = $("#xinpin").offset().top;
    $(window).scroll(function () {
        var this_scrollTop = $(this).scrollTop();
        if (this_scrollTop > ul_height) {
            $("#toTop").show();
        } else if (this_scrollTop < ul_height) {
            $("#toTop").hide();
        }
    });
    $(".sidebar ul li span").click(function(){
        var $span =$(this);
        $span.css("display"["inline-block"]);
    })

})