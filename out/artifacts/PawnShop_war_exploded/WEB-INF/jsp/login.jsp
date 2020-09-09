<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<title>典当行登录注册页面</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<link href="<%=basePath%>css/login.css" rel="stylesheet" type="text/css" media="all" />
<script src="<%=basePath%>js/jquery-3.4.1.min.js"></script>
<script src="<%=basePath%>js/jquery-3.4.1.js"></script>
<script src="<%=basePath%>js/easyResponsiveTabs.js" type="text/javascript"></script>
<script>
$(document).ready(function () {
	$('#horizontalTab').easyResponsiveTabs({
		type: 'default',
		width: 'auto',
		fit: true   
	});

	$(".login").click(function(){
		const username=$(".username").val();
		const password=$(".password").val();
		if(!username){
			$("#tishi1").text("用户名不能为空！");
			return false;
		}
		if(!password){
			$("#tishi1").text("密码不能为空！");
			return false;
		}
		$.ajax({
			type:'post',
			url:"<%=basePath%>login/loginIn",
			contentType:'application/json',
			dataType:'json',
			data:JSON.stringify({username:username,password:password}),
			success: function (result) {
				alert("登录成功");
				$("#tishi1").text(" ");
				if(result==0){
					window.location.href = "<%=basePath%>login/toAdminMain";
				}else if(result==1){
					window.location.href = "<%=basePath%>login/toMainlogined";
				}
			},
			error:function(XMLHttpRequest, textStatus, errorThrown){
				$("#tishi1").text(" ");
				console.log("登录失败");
				alert("登录失败"+textStatus);
            }
		});
	});
	$(".register").click(function () {
		const re_username=$(".register_username").val();
		const re_password=$(".register_password").val();
		const repassword=$(".repassword").val();
		console.log(re_password);
		const name_pattern=/^[a-zA-Z0-9_]{4,16}$/;
		var pwd_Pattern = /^(?=.*?[A-Za-z]+)(?=.*?[0-9]+)(?=.*?[A-Z]).*$/;
		if(!re_username){
			$("#tishi2").text("用户名不能为空！");
			return false;
		}
		if(!name_pattern.test(re_username)){
			$("#tishi2").text("用户名需4到16位（字母，数字，下划线）");
			return false;
		}
		if(!re_password){
			$("#tishi2").text("密码不能为空！");
			return false;
		}
		if(!pwd_Pattern.test(re_password)){
			$("#tishi2").text("密码必须字母数字组合（至少有一个大写字母）");
			return false;
		}
		if(re_password != repassword){
			$("#tishi2").text("两次输入密码不一致！");
			return false;
		}
		$.ajax({
			type:'post',
			url:"<%=basePath%>login/regist",
			contentType:'application/json',
			dataType:'json',
			data:JSON.stringify({username:re_username,password:re_password}),
			success: function (data) {
				const state=data;
				if(state==1){
					$("#tishi2").text("注册成功");
				}else{
					$("#tishi2").text("用户名已经被人使用啦");
				}
			},
			error:function(XMLHttpRequest, textStatus, errorThrown){
				$("#tishi2").text("error");
				alert(XMLHttpRequest);
				alert(textStatus);
				alert(errorThrown);
            }
		});

	});


});

</script>

</head>
<body>
<div class="login_box_header">
	<div class="login_box_header_content">
		<ul>
			<li><a href="#"><img src="<%=basePath%>images/logo.jpg" width="200px"></a></li>
			<li>登录注册</li>
		</ul>
		<a class="back" href="<%=basePath%>login/toMainunlogin">返回首页</a>
	</div>
</div>

<div class="main-info">

	<div class="sap_tabs">
		
		<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
				
			<ul class="resp-tabs-list">
				<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><h2><span>登录</span></h2></li>
				<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>注册</span></li>
				<div class="clear"> </div>
			</ul>
			
			<div class="resp-tabs-container">
			
				<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
					<div class="login-top">
						<div>
							<span id="tishi1"></span>
						</div>
						<form>
							<input type="text" class="username" placeholder="用户名" required="" />
							<input type="password" class="password" placeholder="密码" required="" />
							<input type="checkbox" id="brand" value="">
							<label for="brand"><span></span> 记住密码 </label>
						
						</form>
					
						<div class="login-bottom">
							<ul>
								<li>
									<a href="#">忘记密码了吗？</a>
								</li>
								<li>
									<button class="login">登录</button>
								</li>
							</ul>
							<div class="clear"></div>
						</div>
					</div>
				</div>

				<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
					<div class="login-top sign-top">
						<div>
							<span id="tishi2"></span>
						</div>
						<form>
							<input type="text" class="register_username active" placeholder="用户名" required=""/>
							<input type="password" class="register_password" placeholder="密码" required=""/>
							<input type="password" class="repassword" placeholder="请再一次确认密码" required=""/>
							<input type="checkbox" id="brand1" value="">
						</form>
						<div class="login-bottom">
							<ul>
								<li>
									<a>
										<input type="radio" name="xieyi" value="xieyi">
										同意《典当行用户协议》
									</a>
								</li>
								<li>
									<button class="register">注册</button>
								</li>
							</ul>
							<div class="clear"></div>
						</div>	
					</div>
				</div>
				
			</div>				  	 
			
		</div>
		
	</div>

</div>	


</body>
</html>
