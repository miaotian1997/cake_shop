$(".my-small").on("click",function(){
  var $img=$(this);
  var src=$img.attr("data-target");
  $(".my-big").attr({src});
})