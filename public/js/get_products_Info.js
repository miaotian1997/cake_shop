//首页1~4F数据交互
(function(){
    $.ajax({
    url:"http://127.0.0.1:3000/user/getPro",
    type:"get",
    //data:"",
    dataType:"json" //自动JSON.parse() 自动转换成数组
    }) //return Promise
    // Open(result)
    // ↓
    .then(function(result){
    var result=result.data; 
        console.log(result)
        console.log(result.length)
    // 1F数据交互
    var html="";
    for(var i=0;i<result.length;i++){
      var p=result[i];
      html+=`
        
      <div class="list-1">
      <ul>
        <li>
          <a href="products_details.html">
            <img src="${p.img_url}" alt="">
          </a>
          <p class="size">${p.title}</p>
          <p class="price">
            <span>￥${p.price}/${p.spec}磅</span>
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
        </li>
        
      </ul>
    </div>

        `
    }
      var dd=document.querySelector("#one001");
      console.log(dd);
      dd.innerHTML=html;
  
    
  
    }) 
  })();
  
    