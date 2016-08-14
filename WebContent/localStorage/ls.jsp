<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<script src="/BootStrap/js/jquery1.10.js" type="text/javascript"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>本地存储 - window.localStorage</title>

<script type="text/javascript">
		$(document).ready(function(){
			var ls = window.localStorage;
			
			if(ls["rememberAccount"] == "YES"){
				$("#username").val(ls["username"]);
				$("#pwd").val(ls["pwd"]);
			}
			
			$("body").on("click","#login",function(){
				//一系列验证...
				
				var username = $("#username").val();
				var pwd = $("#pwd").val();
				if($("#rememberAccount").is(":checked")){
					ls["rememberAccount"] = "YES";
					ls["username"] = username;
					ls["pwd"] = pwd;
				}else{
					ls["rememberAccount"] = "YES";
					ls["username"] = username;
					ls.removeItem("pwd");//清除单个ls
					//ls.clear();//清楚所有localStorage
				}
				
				//提交表单或ajax提交...
				alert("已提交！");
				
				
			});
		});
	</script>
</head>
<body>
<h3>localstorage的安全性 - http://safe.it168.com/a2012/0312/1323/000001323495.shtml</h3>
<h3>常用方法 - http://my.oschina.net/jgy/blog/99631</h3>
	<form action="" style="text-align:center;">
		<label for="username">用户名</label>
		<input type="text" id="username" name="username" /><br>
		<label for="pwd">密码</label>
		<input type="password" id="pwd" name="pwd" /><br>
		
		<input type="checkbox" id="rememberAccount" /><label for="rememberAccount">记住用户名和密码</label><br>
		<input type="checkbox" id="autoLogin" /><label for="autoLogin">下次自动登录</label><br>
		
		<input type="button" id="login" value="登陆" />
		<input type="reset" value="重置" />
	</form>
	
	
</body>
</html>