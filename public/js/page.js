//商品详情分页效果
function loadPage(n=0){
  var pno=n;
  $.ajax({
    url:"http://127.0.0.1:3000/products",
    type:"get",
    data:{pno},
    dataType:"json", //自动JSON.parse()
    success:function(data){
      var html="";
      for(var p of products){
        html+=`
        <li>
        <a href="">
          <img src="${p.img_url}" alt="">
        </a>
        <p class="size">${p.title}</p>
        <p class="price">
          <span>${p.price}/${p.spec}</span>
        </p>
        <p class="circle">
          <a href="#">情侣></a>
          <a href="#">人气></a>
          <a href="#">白色情人节></a>
        </p>
        <p class="shopping-cart">
          <i></i>  
          <span>加入购物车</span>
        </p>
      </li>`
      }
      // ${""}
    }
  })
}