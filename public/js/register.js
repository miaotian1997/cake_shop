//正确时，使用图片:"<img src='img/ok.png'>"
//姓名错误时: "<img src='img/err.png'>用户名必须介于2~6位之间!"
//密码错误时: "<img src='img/err.png'>密码必须介于6~8位之间!"
//阻止默认行为: e.preventDefault();
//表单提交: $(form).submit();
//查找姓名文本框和密码框：
var $txtName=$("input:text");
var $txtPwd=$("input:password");
//为其绑定失去焦点事件：
$txtName.blur(function(){
	vali($(this),2,6,"用户名必须介于2~6之间!");
});
function vali($txt,minlen,maxlen,msg){
  //验证当前文本框的内容长度
	var len=$txt.val().length;
	//如果长度>=最小长度且长度<=最大长度,就找到当前文本框的下一个兄弟span，设置其内容为
	if(len>=minlen&&len<=maxlen){
	  $txt.next().html(`<img src='./img/login/ok.png'>`)
		  return true;
	}else{
	  //否则,找到当前文本框的下一个兄弟span，设置其内容为
		$txt.next().html(`<img src='./img/login/err.png'>${msg}`);
			return false;
		}
	}
	$txtPwd.blur(function(){
		vali($(this),6,8,"密码必须介于6~8位之间!");
	});
	//查找表单，为绑定submit事件
	$("form").submit(function(){
		//获得两个文本框的验证结果
		var rName=vali($txtName,2,6,"用户名必须介于2~6之间!");
		var rPwd=vali($(this),6,8,"密码必须介于6~8位之间!");
		//如果两个不都是true
		if(!(rName&&rPwd)){
			e.preventDefault();//阻止提交！
		}
});