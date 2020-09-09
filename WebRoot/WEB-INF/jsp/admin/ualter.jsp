<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html class="x-admin-sm">
    
<head>
    <meta charset="UTF-8">
    <title >珠宝详情</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="<%=basePath%>css/font.css">
    <link rel="stylesheet" href="<%=basePath%>css/xadmin.css">
    <script src="<%=basePath%>layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=basePath%>js/xadmin.js"></script>
</head>
    <body>
    
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                <div>
                    用户信息
                </div>
      <form class="layui-form" id="u_detail" action="#">                  <!-- 用户详情表单 -->
      <input type="hidden" id="id" class="id" name="id"><!-- 使用隐藏域用于保存编辑项的ID值，便于提交修改 -->
        <div class="layui-form-item">
            <label class="layui-form-label">
                用户名
            </label>
            <div class="layui-input-block lafite_width_30">
                <input id="username" type="text" placeholder="" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">
                卡号
            </label>
            <div class="layui-input-block lafite_width_30">
                <input id="card" type="text" placeholder="" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">
                    电话号码
                </label>
                <div class="layui-input-block lafite_width_30">
                    <input id="tel" type="text" placeholder="" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">
                    邮箱
                </label>
                <div class="layui-input-inline">
                    <input id="email" type="text" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">
                    地址
                </label>
                <div class="layui-input-inline">
                    <input id="address"  type="text" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">
                头像
            </label>
            <div class="layui-upload">
                <blockquote class="layui-elem-quote layui-quote-nm" style="width: 60%;margin-top: 10px; margin-left: 5%">
                    预览图：
                    <img id="image" alt="" src="" >
                </blockquote>
            </div>
        </div>
        <div class="layui-form-item">
             <div class="layui-input-block">
                 <button class="lafite-layui-btn" onclick="xadmin.close()">取消</button>
                 <button id="update" class="lafite-layui-btn2 lafite_margin_left_20px">保存</button>
             </div>
        </div>
    </form>
                </div>
            </div>
        </div>
    </body>
<!-- jquery -->
<script>
function save(){
    	alert("保存成功");
    }
</script>
<script src="<%=basePath%>js/jquery-3.4.1.min.js"></script>
<script>layui.use(['laydate', 'form', 'upload'],
    function() {
     	var $ = layui.jquery
        ,upload = layui.upload;

        var laydate = layui.laydate;
        var form = layui.form;
      
 			$("#update").click(function(){
 			console.log("username:"+$("#username").val());
                var uid = $("#id").val();
                var username = $("#username").val();
                var card = $("#card").val();
                var tel = $("#tel").val();
                var email = $("#email").val();
                var address = $("#address").val();
                $.ajax({
					type:'post',
					url:"<%=basePath%>admin/updateUser",
					contentType:'application/json',
					data:JSON.stringify({uid:uid,username:username,ucard:card,tel:tel,uemail:email,uaddress:address}),
					success: function (result) {
						alert("修改成功");
						var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
						parent.layer.close(index); //再执行关闭
					},
					error:function(XMLHttpRequest, textStatus, errorThrown){
						console.log(XMLHttpRequest.status); 
               			console.log(XMLHttpRequest.readyState); 
               			console.log(textStatus); 
               			console.log(XMLHttpRequest.responseText); 
						alert("修改失败");
           		 }
				});
            });
});


</script>


</html>