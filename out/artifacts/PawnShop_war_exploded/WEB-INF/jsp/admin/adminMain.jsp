<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8">
        <title>点石成金后台</title>
        <meta name="renderer" content="webkit|ie-comp|ie-stand">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <meta http-equiv="Cache-Control" content="no-siteapp" />
        <link rel="stylesheet" href="<%=basePath%>css/font.css">
        <link rel="stylesheet" href="<%=basePath%>fontAlibaba/iconfont.css">
        <link rel="stylesheet" href="<%=basePath%>css/xadmin.css">
        <!-- <link rel="stylesheet" href="./css/theme5.css"> -->
        <script src="<%=basePath%>layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="<%=basePath%>js/xadmin.js"></script>
        <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
        <!--[if lt IE 9]>
          <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
          <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script>
            // 是否开启刷新记忆tab功能
            // var is_remember = false;
        </script>
    </head>
    <body class="index">
        <!-- 顶部开始 -->
        <div class="container">
            <div class="logo">
                <a href="<%=basePath%>"><img src="<%=basePath%>images/adminLogo.jpg" alt="logo"></a></div>
            <div class="left_open">
                <a><i title="展开左侧栏" class="iconfont">&#xe699;</i></a>
            </div>
            <ul class="layui-nav right" lay-filter="">
                <li class="layui-nav-item">
                            <img src="/images/${sessionScope.user.uimage}" style="width:50px; height:50px; border-radius:50%;"/>
                </li>
                <li class="layui-nav-item lafitewu_exit to-index">
                    欢迎您，${sessionScope.user.username}
                </li>
                <li class="layui-nav-item lafitewu_exit to-index">
                    <a href="<%=basePath%>user/toLogin"><i class="iconfont">&#xe704;</i>退出</a>
                </li>
            </ul>
        </div>
        <!-- 顶部结束 -->
        <!-- 中部开始 -->
        <!-- 左侧菜单开始 -->
        <div class="left-nav">
            <div id="side-nav">
                <ul id="nav">
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="工作台">&#xe6fc;</i>
                            <cite>工作台</cite>
                            <i class="iconfont nav_right">&#xe697;</i>
                        </a>

                         <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('待审核','<%=basePath%>admin/toReview')">
                                    <cite>待审核典当物</cite></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="典当管理">&#xe701;</i>
                            <cite>典当物管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('奢侈品珠宝管理','<%=basePath%>admin/toJManagement')">
                                    <cite>奢侈品珠宝管理</cite>
                                </a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('钻石管理','<%=basePath%>admin/toDManagement')">
                                    <cite>钻石管理</cite>
                                </a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('手表管理','<%=basePath%>admin/toWManagement')">
                                    <cite>手表管理</cite>
                                </a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('奢侈品箱包管理','<%=basePath%>admin/toBManagement')">
                                    <cite>奢侈品箱包管理</cite>
                                </a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('翡翠玉石管理','<%=basePath%>admin/toSManagement')">
                                    <cite>翡翠玉石管理</cite>
                                </a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('贵金属管理','<%=basePath%>admin/toMManagement')">
                                    <cite>贵金属管理</cite>
                                </a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('订单管理','data_audit.html')">
                                    <cite>订单管理</cite>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;" onclick="xadmin.add_tab('交易中心','trading_center.html')">
                            <i class="iconfont left-nav-li" lay-tips="交易中心管理">&#xe709;</i>
                            <cite>交易中心管理</cite>
                            <!-- <i class="iconfont nav_right">&#xe697;</i> -->
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="用户管理">&#xe702;</i>
                            <cite>用户管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('用户列表','<%=basePath%>admin/toUManagement')">
                                    <cite>用户列表</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('角色列表','rolelist.html')">
                                    <cite>角色列表</cite></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;" onclick="xadmin.add_tab('信息管理','information_management.html')">
                            <i class="iconfont left-nav-li" lay-tips="信息管理">&#xe708;</i>
                            <cite>信息管理</cite>
                            <!-- <i class="iconfont nav_right">&#xe697;</i> -->
                        </a>
                        <ul class="sub-menu">
                           
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;" onclick="xadmin.add_tab('新闻中心','news_information.html')">
                            <i class="iconfont left-nav-li" lay-tips="新闻中心">&#xe706;</i>
                            <cite>新闻资讯</cite>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- <div class="x-slide_left"></div> -->
        <!-- 左侧菜单结束 -->
        <!-- 右侧主体开始 -->
        <div class="page-content">
            <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
                <ul class="layui-tab-title">
                    <li class="home">
                        <!-- <i class="layui-icon">&#xe68e;</i>我的桌面 -->
                        待审核
                    </li>
                </ul>
                <div class="layui-unselect layui-form-select layui-form-selected" id="tab_right">
                    <dl>
                        <dd data-type="this">关闭当前</dd>
                        <dd data-type="other">关闭其它</dd>
                        <dd data-type="all">关闭全部</dd></dl>
                </div>
                <div class="layui-tab-content">
                    <div class="layui-tab-item layui-show">
                        <!-- welcome -->
                    </div>
                </div>
                <div id="tab_show"></div>
            </div>
        </div>
        <div class="page-content-bg"></div>
        <style id="theme_style"></style>
        <!-- 右侧主体结束 -->
        <!-- 中部结束 -->
    </body>
</html>
<script>
    layui.use(['laydate', 'form', 'upload'],
        function() {
            var $ = layui.jquery;
            
            $(".layui-tab-title li").click(function() {
                console.log($(this));
            });
        });

    </script>