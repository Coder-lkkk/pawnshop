<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>用户中心</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/iconfont.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/userView.css" />
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="<%=basePath%>layui/css/layui.css">
	<script src="<%=basePath%>js/jquery-3.4.1.min.js"></script>
	<script src="<%=basePath%>js/jquery-3.4.1.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>

<body>
	<div class="header">
		<div class="bar">
			<div class="w1200">
				<span class="l" style="font-size: 25px;letter-spacing: 4px;">点石成金典当行<font>用户中心</font></span>
				<span class="r"><a href="<%=basePath%>user/backToMain">返回首页</a></span>
			</div>
		</div>
		<div class="user-info">
			<div class="w1200">
				<div class="user-headface">
					<img src="/images/${sessionScope.user.uimage}"/>
				</div>
				<div class="user-account">
					<p class="tip">下午好，${sessionScope.user.username}</p>
					<!-- <p class="account">
						<span>帐户名：Tom</span>
						<span>用户：tomandjerry</span>
					</p> -->
					<%-- <a href="<%=basePath%>user/toAddImage"  target="_blank" >添加图片</a>
					<a href="<%=basePath%>user/toImage"  target="_blank" >查看图片</a> --%>
				</div>
				<div class="user-modify">
					<a class="alter" href="#alterModal" data-toggle="modal">修改资料></a>
				</div>
			</div>
		</div>
	</div>
	<div class="main w1200">
		<div class="left">
			<ul class="tab_menu">
				<li class="user_active">
						<i class="icon iconfont icon-lingdang"></i>
						消息
				</li>
				<li>
						<i class="icon iconfont i con-fangzidichan"></i>
						个人典当物管理
				</li>
				<li>
						<i class="icon iconfont icon-icon--"></i>
						订单
				</li>
				<li>
						<i class="icon iconfont icon-geren"></i>
						实名认证
				</li>
				<li>
						<i class="icon iconfont icon-jilu"></i>
						历史中心
				</li>
				<li>
						<i class="icon iconfont icon-dianyuan"></i>
						<a href="<%=basePath%>user/toLogin" style="color: #666666;text-decoration: none;">注销</a>
				</li>
			</ul>
		</div>
		<div class="right">
			<div id="li1" class="content">
				<div class="tap">
					<span>系统消息</span>
				</div>
				<div class="container" style="overflow: hidden;">
					<div class="no-doc">
						<img src="<%=basePath%>images/user/no_doc.jpg"/>
						<p>您还没有消息哦~</p>
					</div>
				</div>
			</div>
			<div id="li2"  class="content none">
				<div class="tap">
					<span>个人典当物管理</span>
				</div>				
				
				<table id="jData" lay-filter="jewellery"></table>                      <!-- 用户的典当物数据表格 -->
				
<!-- 				<table id="DataTable" class="text-center table table-hover">
					<tbody>
					<tr>
						<td>典当物序号</td>
						<td>典当物</td>
						<td>典当物状态</td>
						<td>操作</td>
					</tr>
					<tr>
						<td>1#</td>
						<td>。。。</td>
						<td>续当中</td>
						<td>
							<button type="button" class="btn btn-info" data-toggle="modal" data-target="#watchModal">详情</button>
							<button type="button" class="btn btn-link">续当</button>
							<button type="button" class="btn btn-link">赎当</button>
						</td>
					</tr>
					<tr>
						<td>2#</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					</tbody>
				</table> -->
				<!--justify-content-center 分页居中-->
<!-- 				<ul class="pagination pagination-sm justify-content-center">
					<li class="page-item"><a class="page-link" href="#">上一页</a></li>
					<li class="page-item active"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">下一页</a></li>
				</ul> -->
			</div>
			<div id="li3"  class="content none">
				<div class="tap">
					<span>订单</span>
				</div>
				<div class="container" style="overflow: hidden;">
				</div>
			</div>
			<div id="li4"  class="content none">
				<div class="tap">
					<span>实名认证</span>
				</div>
				<div class="container" style="overflow: hidden;">
					<div class="no-doc">
						<p>您还没有实名认证哦~</p>
					</div>
				</div>
			</div>
			<div id="li5"  class="content none">
				<div class="tap">
					<span>历史中心</span>
				</div>
				<div class="container" style="overflow: hidden;">
					<div class="no-doc">
						<p>您还没有消息哦~</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--修改资料弹出框-->
	<!--bootstrap模态框-->
	<div class="modal fade bs-example-modal-lg" id="alterModal" tabindex="-1" role="dialog" aria-labelledby="alterLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="alterLabel">
						修改个人资料
					</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;
					</button>
				</div>
				<div class="modal-body">
					<form role="form" action="#" class="form-horizontal">
						<img id="userimage" class="rounded-circle image-responsive" src="">
						<div class="form-group">
							<label for="username">用户名</label>
							<input type="text" class="form-control" id="username" value=${sessionScope.user.username}>
							<label for="password">密码</label>
							<input type="text" class="form-control" id="password" value=${sessionScope.user.password}>
							<label for="telephone">手机号码</label>
							<input type="text" class="form-control" id="tel" value=${sessionScope.user.tel}>
							<label for="user_email">邮箱</label>
							<input type="email" class="form-control" id="uemail" value=${sessionScope.user.uemail}>
							<label for="user_address">地址</label>
							<input class="form-control" id="uaddress" value=${sessionScope.user.uaddress}></textarea>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button id="update" type="button" class="btn btn-primary">
						提交更改
					</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal -->
	</div>
	<!--查看详情模态框-->
	<div class="modal fade bs-example-modal-lg" id="watchModal" tabindex="-1" role="dialog" aria-labelledby="watchLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="watchLabel">
						查看详情
					</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;
					</button>
				</div>
				<div class="modal-body">
					<form role="form" action="#" class="form-horizontal">
						<div class="form-group">
							<label for="num1">111</label>
							<input type="text" class="form-control" id="num1">
							<label for="num2">222</label>
							<input type="text" class="form-control" id="num2">
							<label for="num3">333</label>
							<input type="text" class="form-control" id="num3">
							<label for="num4">444</label>
							<input type="email" class="form-control" id="num4">
							<label for="num5">555</label>
							<textarea class="form-control" id="num5"></textarea>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary">
						提交更改
					</button>
				</div>
			</div>
		</div>
	</div>
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<script src="<%=basePath%>layui/layui.js" charset="utf-8"></script>
<script type="text/html" id="barOption">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
  <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script>
    layui.use(['layer', 'form','table','laydate','upload'],
    function() {
        var  $ = layui.jquery, laydate=layui.laydate, layer=layui.layer,
                table=layui.table, upload=layui.upload;
        table.render({
            elem:'#jData',
            url:'<%=basePath%>admin/getJList',
            page:true,
            size: 'lg',
            cols:[[
                {field:'jid', sort: true, fixed: true,title:'编号'},
                {field:'jbrand',title:'品牌'},
                {field:'jstate',title:'状态'},
                {fixed: 'right', width:300, align:'center', toolbar: '#barOption',title:'操作'}
            ]],
        });
        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });
        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });
        //监听工具条
        table.on('tool(jewellery)', function(obj){
            var data = obj.data;
            if(obj.event === 'detail'){
               layer.open({
                   type:2,
                   title:'珠宝详情',
                   content:'<%=basePath%>admin/toJDetail',  		//用的是admin目录下的页面          
                   area:['800px','500px'],
                   success: function (layero, index) {
                   		$.ajax({
                  		type:"get",
                   		url:"<%=basePath%>admin/getJInfo",
                   		data:{
            	       		"jid":data.jid
                   		},
                   		success:function(data) {
            	
            	       		var j = data
            	       		console.log(j);
            	       		var body = layer.getChildFrame('body', index);  //获取子页面的操作对象
                       		body.contents().find("#name").val(j.jname);
                      		body.contents().find("#brand").val(j.jbrand);
                      		body.contents().find("#usage").val(j.jusage);
                      		body.contents().find("#buytime").val(j.jbuytime);
                      		body.contents().find("#pawntime").val(j.jpawntime);
                      		body.contents().find("#premoney").val(j.jpremoney);
                      		body.contents().find("#pawnmoney").val(j.jpawnmoney);
                      		body.contents().find("#salemoney").val(j.jsalemoney);
                      		body.contents().find("#material").val(j.jmaterial);
                      		body.contents().find("#inmaterial").val(j.jinmaterial);
                      		body.contents().find("#weight").val(j.jweight);
                      		body.contents().find("#diam").val(j.jdiam);
                      		body.contents().find("#length").val(j.jlength);
                      		body.contents().find("#type").val(j.jtype);
                      		body.contents().find("#style_").val(j.jstyle);
                      		body.contents().find("#count").val(j.jcounts);
                      		body.contents().find("#other").val(j.jother);
                      		body.contents().find("#image").attr('src',"/images/"+j.jphoto);
                 		  }
               			});
            		}
               })
        
            } else if(obj.event === 'del'){
                layer.confirm('真的删除行么', function(index){
                    obj.del();
                    layer.close(index);
                });
            } else if(obj.event === 'edit'){
                layer.open({ 
                   type:2,
                   title:'编辑珠宝信息',
                   content:'<%=basePath%>admin/toAltJewellery',                //用的是admin目录下的页面
                   area:['1000px','700px'],
                   success: function (layero, index) {
                      	$.ajax({ 							//发一个请求获取珠宝的信息，并放入修改页面
                  		 type:"get",
                   		url:"<%=basePath%>admin/getJInfo",
                   		data:{
            	       		"jid":data.jid
                   		},
                   		success:function(data) {             
            	       		var j = data
            	       		var body = layer.getChildFrame('body', index);  //获取子页面的操作对象
            	       		body.contents().find("#jid").val(j.jid);
                       		body.contents().find("#name").val(j.jname);
                       		body.contents().find("#state").val(j.jstate);
                      		body.contents().find("#brand").val(j.jbrand);
                      		body.contents().find("#usage").val(j.jusage);
                      		body.contents().find("#buytime").val(j.jbuytime);
                      		body.contents().find("#pawntime").val(j.jpawntime);
                      		body.contents().find("#premoney").val(j.jpremoney);
                      		body.contents().find("#pawnmoney").val(j.jpawnmoney);
                      		body.contents().find("#salemoney").val(j.jsalemoney);
                      		body.contents().find("#material").val(j.jmaterial);
                      		body.contents().find("#inmaterial").val(j.jinmaterial);
                      		body.contents().find("#weight").val(j.jweight);
                      		body.contents().find("#diam").val(j.jdiam);
                      		body.contents().find("#length").val(j.jlength);
                      		body.contents().find("#type").val(j.jtype);
                      		body.contents().find("#style_").val(j.jstyle);
                      		body.contents().find("#count").val(j.jcounts);
                      		body.contents().find("#other").val(j.jother);
                      		body.contents().find("#image").attr('src',"/images/"+j.jphoto);
                      		body.contents().find("#uid").val(j.uid);
                 		  }
               			});
            		}
               })
            }
        });
    });

    /*用户-撤销*/
    function member_revoke(obj, id) {
        layer.confirm('取消',
        {title:"取消"},
        function(index) {
            //发异步删除数据
            // $(obj).parents("tr").remove();
            // layer.msg('已删除!', {
            //     icon: 1,
            //     time: 1000
            // });
        });
    }

</script>
<script>
//修改用户信息
$("#update").click(function(){
		const uid=17;
		const username=$("#username").val();
		const password=$("#password").val();
		const tel=$("#tel").val();
		const uemail=$("#uemail").val();
		const uaddress=$("#uaddress").val();
		console.log("修改用户名为："+username+"的信息");
		if(!username&&!password&&!tel&&!uemail&&!uaddress){
			alert("请填写修改信息")
			return false;
		}
		$.ajax({
			type:'post',
			url:"<%=basePath%>user/updateInfo",
			contentType:'application/json',
			dataType:'json',
			data:JSON.stringify({uid:uid,username:username,password:password,tel:tel,uemail:uemail,uaddress:uaddress}),
			success: function (result) {
				alert("修改成功");
				window.location.href = "<%=basePath%>user/toUserView"
			},
			error:function(XMLHttpRequest, textStatus, errorThrown){
				alert("修改失败");
            }
		});
	});
</script>
<script>
	$('.tab_menu').children().mouseover(function(){
		$(this).addClass('user_active').siblings().removeClass('user_active');	//改变颜色
		var id = $(this).index();	//当前操作的元素索引值
		$('.right').children().eq(id).show().siblings().hide();	//当前显示，其他的隐藏。
	});




</script>


</body>
</html>