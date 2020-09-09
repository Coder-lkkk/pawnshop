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
        <title>工作台-待审核</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <link rel="stylesheet" href="<%=basePath%>css/font.css">
        <link rel="stylesheet" href="<%=basePath%>css/xadmin.css">
        <script src="<%=basePath%>layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="<%=basePath%>js/xadmin.js"></script>
    </head>
    <body>
        <!-- <div class="x-nav">
            <span class="layui-breadcrumb">
                <a href="">工作台</a>
                <a>
                    <cite>待审核</cite></a>
            </span>
            <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
                <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i>
            </a>
        </div> -->
        
        <!-- 新写的待审核数据表格 -->
		<table id="data" lay-filter="test"></table>
		
		<!-- 你之前写的分页表格 -->
        <%-- <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body ">
                            <form class="layui-form layui-col-space5">
                                <div class="layui-input-inline layui-show-xs-block">
                                    <input type="text" name="findReview" placeholder="查询审核典当物" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-input-inline lafite_search layui-show-xs-block">
                                    <button class="layui-btn" lay-submit="" lay-filter="sreach">
                                        查询</button>
                                </div>
                            </form>
                        </div>
                
                        <div class="layui-card-body">
                            <table class="layui-table layui-form">
                                <thead>
                                    <tr style="background: #F8E5E5;">
                                        <th>编号</th>
                                        <th>典当物</th>
                                        <th>时间</th>
                                        <th>状态</th>
                                        <th>操作</th></tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>GZCS0001</td>
                                        <td>....</td>
                                        <td>2016-10-08  13:00</td>
                                        <td>审核中</td>
                                        <td class="td-manage">
                                            <a class="lafitewu_auditing lafitewu_margin_left_20" title="审核" onclick="xadmin.open('资料审核','<%=basePath%>pawn/toReviewPawn')" href="javascript:;">
                                                审核    
                                            </a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div id="lafite_pages"></div>
                    </div>
                </div>
            </div>
        </div> --%>
    </body>
    
<script type="text/html" id="barOption">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">审核</a>
</script>
<script>
layui.use('table', function(){
  var table = layui.table;
  
  //第一个实例
  table.render({
    elem: '#data'
    ,url: '<%=basePath%>pawn/getReviewList' //数据接口
    ,page: true //开启分页
    ,cols: [[ //表头
      {field: 'jid', title: '编号', width:200, sort: true, fixed: 'left'}
      ,{field: 'jname', title: '典当物', width:200}
      ,{field: 'jbuytime', title: '时间', width:200, sort: true}
      ,{field: 'jstate', title: '状态', width:200, sort: true}
      ,{fixed: 'right', title:'操作', toolbar: '#barOption', width:250}
    ]]
  });
  
});
</script>
    <script>layui.use(['laydate', 'form','laypage'],
        function() {
            var laydate = layui.laydate;
            var laypage = layui.laypage;

            // 分页样式
            laypage.render({
                elem: 'lafite_pages'
                ,count: 100
                ,theme: '#D91715',
                jump: function(obj){
                    //模拟渲染
                    console.log(obj);
                }
            });

            //执行一个laydate实例
            laydate.render({
                elem: '#start' //指定元素
            });

            //执行一个laydate实例
            laydate.render({
                elem: '#end' //指定元素
            });
        });
        /*用户-删除*/
        function member_del(obj, id) {
            layer.confirm('确认要删除吗？',
            function(index) {
                //发异步删除数据
                $(obj).parents("tr").remove();
                layer.msg('已删除!', {
                    icon: 1,
                    time: 1000
                });
            });
        }

    </script>

</html>