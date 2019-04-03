//引入上一级目录下的MySQL连接池对象
const pool = require('../pool.js');
const express = require('express');
//创建空路由
var router = express.Router();
//添加路由
//检验用户是否存在
router.get("/checkUname", (req, res) => {
	var $uname = req.query.uname;
	if (!$uname) {
		res.send("用户不存在");
		return;
	}
	var sql = "select* form cake_user where uname=?"
	pool.query(sql, [$uname], (err, result) => {
		if (err) throw err;
		if (result.length>0) {
			res.send("1");
		} else {
			res.send("0");
		}
	});
});
//1.用户注册
router.post('/register', (req, res) => {
	//获取post请求的数据
	var obj = req.body;
	//判断用户名是否为空
	var $uname = obj.uname;
	//判断密码是否为空
	var $upwd = obj.upwd;
	//判断手机是否为空
	var $phone = obj.phone;
	//判断生日是否为空
	var $birthday = obj.birthday;
	if (!$uname) {
		res.send({ code: 401, msg: '用户名不能为空' });
		//阻止程序往后执行
		return;
	}
	if (!$upwd) {
		res.send({ code: 402, msg: '密码不能为空' });
		return;
	}
	if (!$phone) {
		res.send({ code: 404, msg: '电话不能为空' });
		return;
	}
	if (!$birthday) {
		res.send({ code: 404, msg: '生日不能为空' });
		return;
	}
	//console.log($uname,$upwd,$phone,$birthday)
	//执行SQL语句，将注册的数据插入到cake_user数据表中，成功响应{code:200,msg:'register success'}
	pool.query('INSERT INTO cake_user SET ?', [obj], (err, result) => {
		console.log(result);
		if (err) throw err;
		if (result.affectedRows > 0) {
			res.send("1");//注册成功
		} else {
			res.send("0");//注册失败
		}
	});
});

//2.登录路由
router.post('/login', (req, res) => {
	var obj = req.body;
	console.log(obj);
	//验证数据是否为空
	var $uname = obj.uname;
	if (!$uname) {
		res.send({ code: 401, msg: '用户名不能为空' });
		return;
	}
	//验证密码是否为空
	var $upwd = obj.upwd;
	if (!$upwd) {
		res.send({ code: 402, msg: '密码不能为空' });
		return;
	};
	//执行那个SQL语句，查看是否登录成功（使用用户名和密码两个条件能查询到数据）
	pool.query('SELECT * FROM cake_user WHERE uname=? AND upwd=?', [$uname, $upwd], (err, result) => {
		if (err) throw err;
		//判断查询的结果（数组）长度是否大于0，大于0，说明查询到数据，有这个用户，登录成功
		if (result.length > 0) {
			res.send("1");//1 登陆成功
		} else {
			res.send("0");//0 登录失败
		}
	});
});

//3.商品路由
router.get("/cake_list", (req, res) => {
	var sql = "select family_id,title,price,spec,details,img_url from cake_list";
	pool.query(sql, (err, result) => {
		if (err) throw err;
		//console.log(result);
		if(result.length>0){
			res.send({code:1,data:result})
		}
	});
});

//4.商品列表路由
router.get("/products", (req, res) => {
	var sql = "select family_id,title,price,spec,details,img_url from cake_list";
	pool.query(sql, (err, result) => {
		if (err) throw err;
		//console.log(result);
		if(result.length>0){
			res.send({code:1,data:result})
		}
	});
});

//5.购物车功能
router.get("/shopcart",(req,res)=>{
	var uid=1;
	var sql="select id,uid,pid,price,pname,img,count from sp_cart where uid=?";
	pool.query(sql,[uid],(err,result)=>{
		if(err) throw err;
		res.send({code:1,data:result})
		//console.log(result);
	})
});//购物车结束

//6.添加购物车开始
router.get("/addcart",(req,res)=>{
	//获取参数
	var uid=1;
	var pid=req.query.lid;
	var pname=req.query.pname;
	var price=req.query.price;
	var img=req.query.img;
	var val=req.query.val;
	//console.log(img);
	//查询购物车是否有这些参数
	var sql="select id from cake_cart where uid=? AND pid=?";
	pool.query(sql,[uid,pid],(err,result)=>{
		if(err) throw err;
		if(result==0){
			//如果没有就添加商品
			var sql=`insert into cake_cart values(null,${uid},${pid},${price},'${pname}','${img}',${val})`;
		}else{
			//否则就给数量count 加1
			var sql=`update cake_cart set count=count+${val} where uid=${uid} AND pid=${pid}`;
		}
		pool.query(sql,(err,result)=>{
			if(err) throw err;
			res.send("1")
		});
	});
});//添加购物车结束

//7.购物车商品删除
router.get("/delet",(req,res)=>{
	var id=req.query.id;
	id=parseInt(id);
	var sql="delete from cake_cart where id=?";
	pool.query(sql,[id],(err,result)=>{
		if(err) throw err;
		//判断sql语句音响的行数
		if(result.affectedRows>0){
			res.send({code:1,mag:"删除成功"})
		}else{
			res.send({code:-1,msg:"删除失败"})
		}
	});
});

// 商品列表展示页面
router.get("/getPro",(req,res)=>{
	var sql="SELECT * FROM product_list"
	pool.query(sql,(err,result)=>{
		console.log(result)
		if(err) throw err;
		if(result.length>0){
			res.send({code:1,data:result})
		}else{
			res.send({code:-1,msg:"获取数据失败"})
		}
	})	
})














//导出路由器
module.exports = router;