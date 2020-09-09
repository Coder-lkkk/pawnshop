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
    <title >珠宝典当物管理</title>
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
                    <div class="layui-card-header">
                        <a class="layui-btn lafite_main_color" onclick="parent.xadmin.add_tab('添加珠宝典当物','add_jewellery.html')">
                            <i id="title" class="layui-icon">添加珠宝典当物</i>
                        </a>
                    </div>
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
                        <table class="layui-table" id="jData" lay-filter="jewellery"></table>
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
            elem:'#jData',
            url:'<%=basePath%>admin/getJList',
            page:true,
            size: 'lg',
            cols:[[
                {field:'jid', sort: true, fixed: true,title:'编号'},
                {field:'jbrand',title:'品牌'},
                {field:'jstate',title:'状态'},
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
        table.on('tool(jewellery)', function(obj){
            var data = obj.data;
            if(obj.event === 'detail'){
               layer.open({
                   type:2,
                   title:'珠宝详情',
                   content:'<%=basePath%>admin/toJDetail',
                   area:['800px','500px'],
                   success: function (layero, index) {
                   		var body = layer.getChildFrame('body', index);  //巧妙的地方在这里哦
                   		body.find("#name").text(11111111111111);
                   		var j_find = $(layero).find("iframe").contents().find("#j_find");//获取子页面元素
      					//使用#id就可以获取到弹出层里面的子元素。前面的写法都是固定的。
        				j_find.find("#name").text("testtesttest");

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
                parent.xadmin.add_tab('编辑珠宝典当物','<%=basePath%>admin/toAltJewellery');
//                layer.open({
//                    type:1,
//                    content:$("#j_edit"),
//                    area:['800px','500px']
//                })
//                layer.alert('编辑行：<br>'+ JSON.stringify(data))
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