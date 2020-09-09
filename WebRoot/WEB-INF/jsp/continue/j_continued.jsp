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
    <title>在线续当-奢侈品珠宝</title>
    <link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=basePath%>css/j_continued.css">
</head>
<body>
<!--首页-->
<div class="xu_box_header">
    <div class="xu_box_header_content">
        <ul>
            <li><a href="#"><img src="<%=basePath%>images/logo.jpg" width="100px"></a></li>
            <li>在线续当-奢侈品珠宝</li>
        </ul>
        <a class="back" href="<%=basePath%>continue/toContinued">返回续当页面</a>
    </div>
</div>
<!--图文详情-->
<div class="main">
    <div class="dy-content">
        <div class="dy-videos">
            <ul class="dy-video-list">
                <li data- class="dy-video-item dy-video-meta-right">
                    <!--图片-->
                    <div class="dy-video-meta">
                        <!--放背景图片的-->
                        <div class="dy-video-meta-bg"></div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title">
                                <span class="dy-video-tip">编号:</span>
                                <span id="id-1" class="dy-video-meta-filter">xxxx</span>
                            </h4>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors">
									<span class="dy-video-tip">
										品牌:
									</span>
                                    <a id="brand-1">（品牌名称）</a>
                                </li>
                                <li class="dy-video-types">
                                    <span class="dy-video-tip">主体材质:</span>
                                    <span id="material-1" class="dy-video-meta-filter">xxxx</span>
                                </li>
                                <li class="dy-video-areas">
                                    <span class="dy-split">|</span>
                                    <span class="dy-video-tip">镶石材质:</span>
                                    <span id="inmaterial-1" class="dy-video-meta-filter">xxxxx</span>
                                </li>
                            </ul>
                            <br>
                            <span class="dy-video-tip">典当时间</span>
                            <span class="dy-video-meta-filter">2013-09-04</span><br>
                            <span class="dy-video-tip">距离典当期限还剩</span>
                            <span class="dy-video-meta-filter">32天</span>
                        </div>
                        <div class="dy-video-meta-bg"></div>
                    </div>
                    <!--点击出来的详情-->
                    <div class="dy-video-poster">
                        <a class="dy-video-link">
                            <img class="dy-video-img" src="<%=basePath%>images/zhubao.jpg" alt="编号">
                        </a>
                    </div>
                    <!--详情开头-->
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title">
                            <a href="#jModal" data-toggle="modal">在线续当</a>
                        </h4>
                    </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <!--图片-->
                    <div class="dy-video-meta">
                        <!--放背景图片的-->
                        <div class="dy-video-meta-bg"></div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title">
                                <a>编号</a>
                            </h4>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors">
									<span class="dy-video-tip">
										品牌:
									</span>
                                    <a>（品牌名称）</a>
                                </li>
                                <li class="dy-video-types">
                                    <span class="dy-video-tip">主体材质:</span>
                                    <span class="dy-video-meta-filter">xxxx</span>
                                </li>
                                <li class="dy-video-areas">
                                    <span class="dy-split">|</span>
                                    <span class="dy-video-tip">镶石材质:</span>
                                    <span class="dy-video-meta-filter">xxxxx</span>
                                </li>
                            </ul>
                            <p class="dy-video-intro">
                                距离典当时间已经过了:<br>
                                距离典当期限还剩    天
                            </p>
                        </div>
                        <div class="dy-video-meta-bg"></div>
                    </div>
                    <!--点击出来的详情-->
                    <div class="dy-video-poster">
                        <a class="dy-video-link">
                            <img class="dy-video-img" src="<%=basePath%>images/zhubao.jpg" alt="编号">
                        </a>
                    </div>
                    <!--详情开头-->
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title">
                            <a href="#">在线续当</a>
                        </h4>
                    </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <!--图片-->
                    <div class="dy-video-meta">
                        <!--放背景图片的-->
                        <div class="dy-video-meta-bg"></div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title">
                                <a>编号</a>
                            </h4>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors">
									<span class="dy-video-tip">
										品牌:
									</span>
                                    <a>（品牌名称）</a>
                                </li>
                                <li class="dy-video-types">
                                    <span class="dy-video-tip">主体材质:</span>
                                    <span class="dy-video-meta-filter">xxxx</span>
                                </li>
                                <li class="dy-video-areas">
                                    <span class="dy-split">|</span>
                                    <span class="dy-video-tip">镶石材质:</span>
                                    <span class="dy-video-meta-filter">xxxxx</span>
                                </li>
                            </ul>
                            <span class="dy-video-tip">典当时间</span>
                            <span class="dy-video-meta-filter">xxxxx</span>
                            <span class="dy-video-tip">距离典当期限还剩</span>
                            <span class="dy-video-meta-filter">xxxxx</span>
                        </div>
                        <div class="dy-video-meta-bg"></div>
                    </div>
                    <!--点击出来的详情-->
                    <div class="dy-video-poster">
                        <a class="dy-video-link">
                            <img class="dy-video-img" src="<%=basePath%>images/zhubao.jpg" alt="编号">
                        </a>
                    </div>
                    <!--详情开头-->
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title">
                            <a href="#">在线续当</a>
                        </h4>
                    </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <!--图片-->
                    <div class="dy-video-meta">
                        <!--放背景图片的-->
                        <div class="dy-video-meta-bg"></div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title">
                                <a>编号</a>
                            </h4>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors">
									<span class="dy-video-tip">
										品牌:
									</span>
                                    <a>（品牌名称）</a>
                                </li>
                                <li class="dy-video-types">
                                    <span class="dy-video-tip">主体材质:</span>
                                    <span class="dy-video-meta-filter">xxxx</span>
                                </li>
                                <li class="dy-video-areas">
                                    <span class="dy-split">|</span>
                                    <span class="dy-video-tip">镶石材质:</span>
                                    <span class="dy-video-meta-filter">xxxxx</span>
                                </li>
                            </ul>
                            <p class="dy-video-intro">
                                距离典当时间已经过了:<br>
                                距离典当期限还剩    天
                            </p>
                        </div>
                        <div class="dy-video-meta-bg"></div>
                    </div>
                    <!--点击出来的详情-->
                    <div class="dy-video-poster">
                        <a class="dy-video-link">
                            <img class="dy-video-img" src="<%=basePath%>images/zhubao.jpg" alt="编号">
                        </a>
                    </div>
                    <!--详情开头-->
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title">
                            <a href="#">在线续当</a>
                        </h4>
                    </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <!--图片-->
                    <div class="dy-video-meta">
                        <!--放背景图片的-->
                        <div class="dy-video-meta-bg"></div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title">
                                <a>编号</a>
                            </h4>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors">
									<span class="dy-video-tip">
										品牌:
									</span>
                                    <a>（品牌名称）</a>
                                </li>
                                <li class="dy-video-types">
                                    <span class="dy-video-tip">主体材质:</span>
                                    <span class="dy-video-meta-filter">xxxx</span>
                                </li>
                                <li class="dy-video-areas">
                                    <span class="dy-split">|</span>
                                    <span class="dy-video-tip">镶石材质:</span>
                                    <span class="dy-video-meta-filter">xxxxx</span>
                                </li>
                            </ul>
                            <p class="dy-video-intro">
                                距离典当时间已经过了:<br>
                                距离典当期限还剩    天
                            </p>
                        </div>
                        <div class="dy-video-meta-bg"></div>
                    </div>
                    <!--点击出来的详情-->
                    <div class="dy-video-poster">
                        <a class="dy-video-link">
                            <img class="dy-video-img" src="<%=basePath%>images/zhubao.jpg" alt="编号">
                        </a>
                    </div>
                    <!--详情开头-->
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title">
                            <a href="#">在线续当</a>
                        </h4>
                    </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <!--图片-->
                    <div class="dy-video-meta">
                        <!--放背景图片的-->
                        <div class="dy-video-meta-bg"></div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title">
                                <a>编号</a>
                            </h4>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors">
									<span class="dy-video-tip">
										品牌:
									</span>
                                    <a>（品牌名称）</a>
                                </li>
                                <li class="dy-video-types">
                                    <span class="dy-video-tip">主体材质:</span>
                                    <span class="dy-video-meta-filter">xxxx</span>
                                </li>
                                <li class="dy-video-areas">
                                    <span class="dy-split">|</span>
                                    <span class="dy-video-tip">镶石材质:</span>
                                    <span class="dy-video-meta-filter">xxxxx</span>
                                </li>
                            </ul>
                            <p class="dy-video-intro">
                                距离典当时间已经过了:<br>
                                距离典当期限还剩    天
                            </p>
                        </div>
                        <div class="dy-video-meta-bg"></div>
                    </div>
                    <!--点击出来的详情-->
                    <div class="dy-video-poster">
                        <a class="dy-video-link">
                            <img class="dy-video-img" src="<%=basePath%>images/zhubao.jpg" alt="编号">
                        </a>
                    </div>
                    <!--详情开头-->
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title">
                            <a href="#">在线续当</a>
                        </h4>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--弹出框-->
<!--珠宝模态框-->
<div class="modal fade" id="jModal" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">是否续当？</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                您要续当的是编号为:
                <span id="modal-id-1">（编号）</span><br>
         	品牌为
                <span id="modal-brand-1">（品牌）</span>
                	的珠宝当品 <br>
                	确定吗？
            </div>
            <div class="modal-footer">
                <button id="continued" class="btn btn-primary btn-danger">续当</button>
            </div>
        </div>
    </div>
</div>

<!-- jquery -->
<script src="<%=basePath%>js/jquery-3.4.1.min.js"></script>

<!-- bootstrap -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<script type="text/javascript">
    function getJewelleryList() {
        $.ajax({
            type:"get",
            url:"<%=basePath%>continue/getJewelleryList",
            data:{
            	"uid":13
            },
            success:function(data) {
            var jewelleryList = data;
            	console.log(data); 
            	for(i=1;i<jewelleryList.length+1;i++){
            		$("#id-"+i).text(jewelleryList[i-1].jid)
            		$("#modal-id-"+i).text(jewelleryList[i-1].jid)
                	$("#brand-"+i).text(jewelleryList[i-1].jbrand)
                	$("#modal-brand-"+i).text(jewelleryList[i-1].jbrand)
                	$("#material-"+i).text(jewelleryList[i-1].jmaterial)
                	$("#inmaterial-"+i).text(jewelleryList[i-1].jinmaterial)   	    	
                }	
            }
        });
    }
    //页面初始化时得到珠宝待续当列表
    window.onload=function(){
    getJewelleryList();
    }
</script>
<script>
    $("#continued").click(function () {
    	var jid = $("#id-1").text();
    	console.log("id为"+jid);
        $.ajax({
            type:"get",
            url:"<%=basePath%>continue/jewelleryContinue",
            data:{
            	"jid":jid
            },
            success:function(data) {
            	alert("提交续当信息成功，请等待审核结果");
            	window.location.href = "<%=basePath%>login/toMain";
            },
            error:function(XMLHttpRequest, textStatus, errorThrown){
                    console.log("发送失败");
                    console.log(XMLHttpRequest.status); 
               console.log(XMLHttpRequest.readyState); 
               console.log(textStatus); 
               console.log(XMLHttpRequest.responseText); 
                }
        });
    })
</script>
</body>
</html>