//首页1~4F数据交互
(function(){
  $.ajax({
  url:"user/cake_list",
  type:"get",
  //data:"",
  dataType:"json" //自动JSON.parse() 自动转换成数组
  }) //return Promise
  // Open(result)
  // ↓
  .then(function(result){
  // console.log(result.data);
  var result=result.data; 

  // 1F数据交互
  var html="";
  for(var i=0;i<4;i++){
    var p=result[i];
    html+=` 
    <li>
      <a href="products_details.html" >
        <img src="${p.img_url}" alt="">
      </a>
      <h5><a href="products_details.html">${p.title}</a></h5>
      <p class="intro">
        <span>${p.details}</span>
      </p>
      <p class="circle">
        <a href="#">情侣></a>
        <a href="#">人气></a>
      </p>
      <p class="price">
        <span>${p.price}/${p.spec}</span>
        <a href="#">加入购物车</a>
      </p>        
    </li>`;
  }
    // console.log(html);
    var dd=document.querySelector(".cake_moule_list>ul");
    // console.log(dd);
    dd.innerHTML=html;

    // 2F数据交互
    var html2=""; 
    for(var i=4;i<8;i++){
      var p=result[i];
      // console.log(p)
      html2+=` 
        <li>
        <a href="products_details.html" >
          <img src="${p.img_url}" alt="">
        </a>
        <h5><a href="products_details.html">${p.title}</a></h5>
        <p class="intro">
          <span>${p.details}</span>
        </p>
        <p class="circle">
          <a href="#">情侣></a>
          <a href="#">人气></a>
        </p>
        <p class="price">
          <span>${p.price}/${p.spec}</span>
          <a href="#">加入购物车</a>
        </p>        
      </li>`;
    }
    var aa=document.querySelector("#Two2>ul");
    aa.innerHTML=html2;

    //3F数据交互
    var html3=""; 
    for(var i=8;i<12;i++){
      var p=result[i];
      //console.log(p)
      html3+=` 
        <li>
        <a href="products_details.html" >
          <img src="${p.img_url}" alt="">
        </a>
        <h5><a href="products_details.html">${p.title}</a></h5>
        <p class="intro">
          <span>${p.details}</span>
        </p>
        <p class="circle">
          <a href="#">情侣></a>
          <a href="#">人气></a>
        </p>
        <p class="price">
          <span>${p.price}/${p.spec}</span>
          <a href="#">加入购物车</a>
        </p>        
      </li>`;
    }
    var bb=document.querySelector("#Two3>ul");
    bb.innerHTML=html3;
    //console.log(bb.innerHTML)

    //4F数据交互
    var html4=""; 
    for(var i=12;i<16;i++){
      var p=result[i];
      //console.log(p)
      html4+=` 
        <li>
        <a href="#" >
          <img src="${p.img_url}" alt="">
        </a>
        <h5><a href="#">${p.title}</a></h5>
        <p class="intro">
          <span>${p.details}</span>
        </p>
        <p class="circle">
          <a href="#">情侣></a>
          <a href="#">人气></a>
        </p>
        <p class="price">
          <span>${p.price}/${p.spec}</span>
          <a href="#">加入购物车</a>
        </p>        
      </li>`;
    }
    var cc=document.querySelector("#Two4>ul");
    cc.innerHTML=html4;
    //console.log(bb.innerHTML)
  }) 
})();

  