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
    <title >用户管理</title>
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
                <div class="layui-card">
                    <div class="layui-card-body ">
                        <form class="layui-form layui-col-space5">
                            <div class="layui-input-inline">
                                <input type="text" name="j_find" lay-verify="required|phone" autocomplete="off" class="layui-input">
                            </div>
                            <div class="layui-input-inline lafite_search layui-show-xs-block">
                                <button class="layui-btn" lay-submit="" lay-filter="sreach">
                                    查询
                                </button>
                            </div>
                        </form>
                    </div>
                    
                    <div class="layui-card-body">
                        <table class="layui-table" id="utable" lay-filter="utable"></table>      //用户数据表格
                    </div>
                    <!--<div id="lafite_pages"></div>-->
                </div>
            </div>
        </div>
    </div>
</body>
<script type="text/html" id="barDemo">
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
            elem:'#utable',
            url:'<%=basePath%>admin/getUList',
            page:true,
            size: 'lg',
            cols:[[
                {field:'uid', sort: true, fixed: true,title:'编号'},
                {field:'username',title:'用户名'},
                {field:'tel',title:'电话'},
                {fixed: 'right', width:300, align:'center', toolbar: '#barDemo',title:'操作'}
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
        table.on('tool(utable)', function(obj){
            var data = obj.data;
            if(obj.event === 'detail'){
               layer.open({
                   type:2,
                   title:'用户信息',
                   content:'<%=basePath%>admin/toUDetail',
                   area:['800px','500px'],
                   success: function (layero, index) {
                   		$.ajax({
                  		 type:"get",
                   		url:"<%=basePath%>admin/getUInfo",
                   		data:{
            	       		"uid":data.uid
                   		},
                   		success:function(data) {
            	       		var u = data
            	       		console.log(u);
            	       		var body = layer.getChildFrame('body', index);  //获取子页面的操作对象
                       		body.contents().find("#username").val(u.username);
                      		body.contents().find("#card").val(u.ucard);
                      		body.contents().find("#tel").val(u.tel);
                      		body.contents().find("#email").val(u.uemail);
                      		body.contents().find("#address").val(u.uaddress);
                      		body.contents().find("#image").attr('src',"/images/"+u.uimage);
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
                   title:'编辑用户信息',
                   content:'<%=basePath%>admin/toUAlter',                
                   area:['1000px','700px'],
                   success: function (layero, index) {
                      	$.ajax({ 							//发一个请求获取用户的信息，并放入修改页面
                  		 type:"get",
                   		url:"<%=basePath%>admin/getUInfo",
                   		data:{
            	       		"uid":data.uid
                   		},
                   		success:function(data) {             
            	       		var u = data
            	       		var body = layer.getChildFrame('body', index);  //获取子页面的操作对象
            	       		body.contents().find("#id").val(u.uid);
            	       		body.contents().find("#username").val(u.username);
                      		body.contents().find("#card").val(u.ucard);
                      		body.contents().find("#tel").val(u.tel);
                      		body.contents().find("#email").val(u.uemail);
                      		body.contents().find("#address").val(u.uaddress);
                      		body.contents().find("#image").attr('src',"/images/"+u.uimage);
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

</html>