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
        <title>典当物管理</title>
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
                                <div class="layui-input-inline layui-show-xs-block">
                                    <select name="contrller">
                                        <option>组织单位</option>
                                        <option>支付宝</option>
                                        <option>微信</option>
                                        <option>货到付款</option></select>
                                </div>

                                <div class="layui-input-inline layui-show-xs-block">
                                    <select name="contrller">
                                        <option>竞拍状态</option>
                                        <option>支付宝</option>
                                        <option>微信</option>
                                        <option>货到付款</option></select>
                                </div>

                                <div class="layui-input-inline layui-show-xs-block">
                                    <select name="contrller">
                                        <option>竞拍方式</option>
                                        <option>支付宝</option>
                                        <option>微信</option>
                                        <option>货到付款</option></select>
                                </div>

                                <div class="layui-input-inline layui-show-xs-block">
                                    <select name="contrller">
                                        <option>区域</option>
                                        <option>支付宝</option>
                                        <option>微信</option>
                                        <option>货到付款</option></select>
                                </div>
    
                                <div class="layui-input-inline lafite_search layui-show-xs-block">
                                    <button class="layui-btn" lay-submit="" lay-filter="sreach">
                                        查询</button>
                                </div>
                            </form>
                        </div>
                        
                        <div class="layui-card-header">
                            <a class="layui-btn lafite_main_color" onclick="parent.xadmin.add_tab('添加珠宝典当物','./project_release.html')">
                                <i class="layui-icon">添加珠宝典当物</i>
                            </a>
                        </div>

                        <div class="layui-card-body">
                            <table class="layui-table layui-form">
                                <thead>
                                    <tr style="background: #F8E5E5;">
                                        <th>编号</th>
                                        <th>品牌</th>
                                        <th>状态</th>
                                        <th>操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>GZCS0001</td>
                                        <td>550000.00元</td>
                                        <td>暂存中</td>
                                        <td class="td-manage">
                                            <button class="lafitewu_look lafitewu_margin_left_10" title="查看" onclick="xadmin.open('查看','project_edit.html')" href="javascript:;">
                                                查看详情
                                            </button>
                                            <button class="lafitewu_look lafitewu_margin_left_10" title="编辑" onclick="xadmin.open('编辑','project_edit.html')" href="javascript:;">
                                                编辑
                                            </button>
                                            <button class="lafitewu_del lafitewu_margin_left_10" title="删除" onclick="member_del(this,'要删除的id')" href="javascript:;">
                                                删除
                                            </button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div id="lafite_pages"></div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script>layui.use(['laydate', 'form','laypage'],
        function() {
            var laydate = layui.laydate;
            var laypage=layui.laypage;


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
            layer.confirm('是否确认删除当前项目？',
            {title:"项目删除"},
            function(index) {
                //发异步删除数据
                $(obj).parents("tr").remove();
                layer.msg('已删除!', {
                    icon: 1,
                    time: 1000
                });
            });
        }

        /*用户-撤销*/
        function member_revoke(obj, id) {
            layer.confirm('项目撤销后将不在农交网大厅显示！',
            {title:"项目撤销"},
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