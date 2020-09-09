<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>续当界面</title>
    <link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=basePath%>fonts/flaticon/flaticon.css">
    <link rel="stylesheet" href="<%=basePath%>css/page-style.css">
    <link rel="stylesheet" href="<%=basePath%>css/continued.css">
</head>
<body>
<!--首页-->
<div class="xu_box_header">
    <div class="xu_box_header_content">
        <ul>
            <li><a href="#"><img src="<%=basePath%>images/logo.jpg" width="100px"></a></li>
            <li>在线续当</li>
        </ul>
        <a class="back" href="<%=basePath%>user/backToMain">返回首页</a>
    </div>
</div>
<!--轮播图-->
<!--点击图片事件-->
<section class="hover_8 miktu_hover">
    <div class="container">
        <div class="col-lg-12">
            <div class="miktu_title text-center">
                <h3>请选择你要续当的典当物种类</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="hover_area_8 hover_area">
                    <div class="hover_img_8">
                        <img src="<%=basePath%>images/j.jpg" class="img-fluid" alt="">
                        <div class="hover_overlay_8"></div>
                        <div class="hover_content_8">
                            <h4>奢侈品珠宝续当</h4>
                            <ul>
                                <li><a href="<%= basePath%>continue/toJ_continued"><i class="flaticon-attachment"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="hover_area_8 hover_area">
                    <div class="hover_img_8">
                        <img src="<%=basePath%>images/w.jpg" class="img-fluid" alt="">
                        <div class="hover_overlay_8"></div>
                        <div class="hover_content_8">
                            <h4>手表续当</h4>
                            <ul>
                                <li><a href="<%= basePath%>continue/toW_continued"><i class="flaticon-attachment"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="hover_area_8 hover_area">
                    <div class="hover_img_8">
                        <img src="<%=basePath%>images/b.jpg" class="img-fluid" alt="">
                        <div class="hover_overlay_8"></div>
                        <div class="hover_content_8">
                            <h4>奢侈品箱包</h4>
                            <ul>
                                <li><a href="<%= basePath%>continue/toB_continued"><i class="flaticon-attachment"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="hover_area_8 hover_area">
                    <div class="hover_img_8">
                        <img src="<%=basePath%>images/d.jpg" class="img-fluid" alt="">
                        <div class="hover_overlay_8"></div>
                        <div class="hover_content_8">
                            <h4>钻石续当</h4>
                            <ul>
                                <li><a href="<%= basePath%>continue/toD_continued"><i class="flaticon-attachment"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="hover_area_8 hover_area">
                    <div class="hover_img_8">
                        <img src="<%=basePath%>images/m.jpg" class="img-fluid" alt="">
                        <div class="hover_overlay_8"></div>
                        <div class="hover_content_8">
                            <h4>贵金属</h4>
                            <ul>
                                <li><a href="<%= basePath%>continue/toM_continued"><i class="flaticon-attachment"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="hover_area_8 hover_area">
                    <div class="hover_img_8">
                        <img src="<%=basePath%>images/s.jpg" class="img-fluid" alt="">
                        <div class="hover_overlay_8"></div>
                        <div class="hover_content_8">
                            <h4>翡翠玉石典当</h4>
                            <ul>
                                <li><a href="<%= basePath%>continue/toS_continued"><i class="flaticon-attachment"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>



<!-- jquery -->
<script src="<%=basePath%>js/jquery.min.js"></script>

<!-- bootstrap -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>

<!-- bootstrap -->
<script src="<%=basePath%>js/popper.min.js"></script>

<script>
    $("document").ready(function () {
        $("#btn_delete").click(function () {
            alert("支付成功");
            window.location.reload();
        })
    })
</script>
</body>
</html>