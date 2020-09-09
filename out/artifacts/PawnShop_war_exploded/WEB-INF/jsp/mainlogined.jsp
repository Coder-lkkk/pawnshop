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
    <title>典当行首页</title>
    <link rel="stylesheet" href="<%=basePath%>css/main.css">
    <link rel="stylesheet" href="<%=basePath%>css/main_lunbohaibao.css">
</head>
<body>
<div class="main_box">
    <!--导航头部-->
    <div class="main_box_header">
        <ul class="tab_left">
            <li style="left: 80px;"><a href="#"><img src="<%=basePath%>images/logo.jpg" width="100px"></a></li>
            <li style="left: 200px;"><span>点石成金典当行${requestScope.username}</span></li>
        </ul>
        <ul class="tab_right">
            <li style="right: 650px"><a href="#">首页</a></li>
            <li style="right: 550px"><a id="major" href="#">主营业务</a></li>
            <li style="right: 450px"><a id="business" href="#">办理业务</a></li>
            <li style="right: 350px"><a id="shoppingmall"href="#">珠宝商城</a></li>
            <li style="right: 250px"><a href="#">新闻中心</a></li>
            <li style="right: 150px"><a href="#">关于我们</a></li>
            <li style="right: 50px"><a href="<%=basePath%>user/toUserView">个人中心</a></li>
            <li style="right: 0px"><a href="<%=basePath%>login/toLogin">注销</a></li>
        </ul>
    </div>
    <!--轮播图海报-->
    <div class="flicker-example" data-block-text="false">
        <ul>
            <li data-background="<%=basePath%>images/lunbohaibao/field.jpg">
                <div class="flick-title">在线业务办理</div>
                <div class="flick-sub-text">Heaven forbid this package you downloaded is broken. That wouldn't be embarrassing at all.</div>
            </li>
            <li data-background="<%=basePath%>images/lunbohaibao/forest.jpg">
                <div class="flick-title">珠宝商城</div>
                <div class="flick-sub-text">Take a look at the extensive documentation to see how you can change the settings in multiple ways.</div>
            </li>
            <li data-background="<%=basePath%>images/lunbohaibao/frozen-water.jpg">
                <div class="flick-title">百人专家团</div>
                <div class="flick-sub-text">jQuery Finger is a great touch library that has been included as part of the Flickerplate package.</div>
            </li>
        </ul>
    </div>
    <!--轮播图-->
    <div class="main_box_two">
        <div class="w1200">
            <h2>不求锦上添花 只求雪中送炭</h2>
<!--             <h4>pawnShop</h4> -->
            <div class="video_row claerfix">
                <div class="videoBox prz f1" style="background: none">
                    <video src="#" width="593px" height="323px" controls="controls" style="display: block" id="video_1" autoplay="autoplay"></video>
                    <a href="javascript:;" class="playBtn pra" id="playBtn" style="display: none"></a>
                </div>
                <div class="huadong">
                    <div class="huabox">
                        <div class="hdimg"><img src="<%=basePath%>images/lingdang.png"></div>
                        <h5>【新闻中心】</h5>
                        <div class="notice_active">
                            <ul>
                                <li class="notice_active_ch">
                                    <span>恭喜客户lkkk典当珠宝成功</span>

                                    <em>2017-01-18</em>
                                </li>
                                <li class="notice_active_ch">
                                    <span>恭喜客户lkkk典当手表成功</span>

                                    <em>2017-01-18</em>
                                </li>
                                <li class="notice_active_ch">
                                    <span>恭喜客户lkkk典当房产成功</span>

                                    <em>2017-01-18</em>
                                </li>

                            </ul>

                        </div>
                        <div class="gg_more">
                            <a class="news_ck" href="javascript:void(0)">查看详情</a>
                            <a title="news_more" href="#">更多+</a>
                        </div>
                    </div>
                </div>
                <div class="huadong2">
                    <div class="huabox2">
                        <div class="hdimg2"><img src="<%=basePath%>images/lingdang.png"></div>
                        <h5>【主营业务】</h5>
                        <div class="notice_active2">
                            <ul>
                                <li class="notice_active_ch2">
                                    <span>民品典当</span>
                                </li>
                                <li class="notice_active_ch2">
                                    <span>汽车典当</span>
                                </li>
                                <li class="notice_active_ch2">
                                    <span>汽车典当</span>
                                </li>
                                <li class="notice_active_ch2">
                                    <span>手表典当</span>
                                </li>
                            </ul>

                        </div>
                        <div class="gg_more2">
                            <a class="news_ck2" href="javascript:void(0)">查看详情</a>
                            <a title="news_more2" href="#">更多+</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--手风琴-->
    <div class="main_box_three">
        <div class="cloud-product-box">
            <div class="cloud-product-wrapper">
                <div class="cloud-product">
                    <p id="t_business" class="cloud-product-title"><span>办理业务</span></p>
                    <p class="cloud-product-explain">估当、续当、绝当满足您的一切需求</p>
                    <ul class="cloud-product-ul clearfix4">
                        <li data-index="1" class="active">
                            <div class="normal-inner">
                                <div class="cloud-product-single-bottom clearfix4">
                                    <div class="empty-space">
                                        <div class="bg-product-pic server-header-01"></div>
                                    </div>
                                    <h2 class="product-introduce-title">在线估当<a id="evaluation"></a></h2>
                                    <p class="product-introduce-content">极速评估当品的价值</p>
                                    <div class="product-introduce-list">
                                        <p class="introduce-list-small">优质的百人专家</p>
                                        <p class="introduce-list-small">弹性的按需扩展</p>
                                        <p class="introduce-list-small">更低的时间消费</p>
                                    </div>
                                    <p class="product-introduce-price">
                                        <span class="price-blue">了解详情...</span>
                                    </p>
                                </div>
                            </div>
                            <div class="active-inner active-inner-01 clearfix4">
                                <div class="active-inner-item">
                                    <p class="introduce-link" target="_blank"></p>
                                    <div class="empty-space">
                                        <div class="bg-product-pic server-header-active-01"></div>
                                    </div>
                                    <h2 class="product-introduce-title active-product-introduce-title ">在线估当</h2>
                                    <p class="product-introduce-content">极速评估当品的价值</p>
                                    <div class="product-introduce-list">
                                        <p class="introduce-list-large">
                                            填写相关信息并提交，当铺客服立马为您服务。就让您足不出户也能评估物品的价值，对自己的资产有个全面的概念。
                                        </p>
                                    </div>
                                    <p class="product-introduce-price">
                                        <span class="price-white">了解详情...</span>
                                    </p>
                                    <a href="<%= basePath%>pawn/toEvaluation" class="btn buy-link-btn">立即估当</a>
                                </div>
                            </div>
                        </li>
                        <li data-index="2">
                            <div class="normal-inner">
                                <div class="cloud-product-single-bottom clearfix4">
                                    <div class="empty-space">
                                        <div class="bg-product-pic  server-header-02"></div>
                                    </div>
                                    <h2 class="product-introduce-title">在线典当</h2>
                                    <p class="product-introduce-content">提供在线典当服务</p>
                                    <div class="product-introduce-list">
                                        <p class="introduce-list-small">完善的一条龙服务</p>
                                        <p class="introduce-list-small">领先的网络在线</p>
                                        <p class="introduce-list-small">独有的在线专家团</p>
                                    </div>
                                    <p class="product-introduce-price">
                                        <span class="price-blue">了解详情</span>
                                    </p>
                                </div>
                            </div>
                            <div class="active-inner active-inner-02 clearfix4">
                                <div class="active-inner-item">
                                    <p class="introduce-link" target="_blank"></p>
                                    <div class="empty-space">
                                        <div class="bg-product-pic server-header-active-02"></div>
                                    </div>
                                    <h2 class="product-introduce-title active-product-introduce-title">在线典当</h2>
                                    <p class="product-introduce-content">提供在线典当服务</p>
                                    <div class="product-introduce-list">
                                        <p class="introduce-list-large">
                                            在线典当功能省去了繁琐的流程，贴近用户，高安全性的集中化鉴定价格和保管物品，点石成金典当行就是您急需钱时的小棉袄。
                                        </p>
                                    </div>
                                    <p class="product-introduce-price">
                                        <span class="price-white">了解详情...</span>
                                    </p>
                                    <a href="<%=basePath%>pawn/toPawn" class="btn buy-link-btn">立即典当</a>
                                </div>
                            </div>
                        </li>
                        <li data-index="3">
                            <div class="normal-inner">
                                <div class="cloud-product-single-bottom clearfix4">
                                    <div class="empty-space">
                                        <div class="bg-product-pic  server-header-03"></div>
                                    </div>
                                    <h2 class="product-introduce-title">在线续当</h2>
                                    <p class="product-introduce-content">基于网络的在线管理服务</p>
                                    <div class="product-introduce-list">
                                        <p class="introduce-list-small">贴心的提醒服务</p>
                                        <p class="introduce-list-small">强大的数据中心</p>
                                        <p class="introduce-list-small">强大的服务分布</p>
                                    </div>
                                    <p class="product-introduce-price">
                                        <span class="price-blue">了解详情...</span>
                                    </p>
                                </div>
                            </div>
                            <div class="active-inner active-inner-03 clearfix4">
                                <div class="active-inner-item">
                                    <p class="introduce-link" target="_blank"></p>
                                    <div class="empty-space">
                                        <div class="bg-product-pic server-header-active-03"></div>
                                    </div>
                                    <h2 class="product-introduce-title active-product-introduce-title ">在线续当</h2>
                                    <p class="product-introduce-content">基于网络的在线管理服务</p>
                                    <div class="product-introduce-list">
                                        <p class="introduce-list-large">
                                            架设在云服务器之上，具备
                                        </p>
                                    </div>
                                    <p class="product-introduce-price">
                                        <span class="price-white">了解详情</span>
                                    </p>
                                    <a href="<%= basePath%>continue/toContinued" class="btn buy-link-btn">立即续当</a>
                                </div>
                            </div>
                        </li>
                        <li data-index="4">
                            <div class="normal-inner">
                                <div class="cloud-product-single-bottom clearfix4">
                                    <div class="empty-space">
                                        <div class="bg-product-pic  server-header-04"></div>
                                    </div>
                                    <h2 class="product-introduce-title">在线赎当</h2>
                                    <p class="product-introduce-content">提供一站式的服务</p>
                                    <div class="product-introduce-list">
                                        <p class="introduce-list-small">顶级CA机构授权颁发</p>
                                        <p class="introduce-list-small">加密保护数据传输安全</p>
                                        <p class="introduce-list-small">支持所有浏览器和移动设备</p>
                                    </div>
                                    <p class="product-introduce-price">
                                        <span class="price-blue">了解详情...</span>
                                    </p>
                                </div>
                            </div>
                            <div class="active-inner  active-inner-04 clearfix4">
                                <div class="active-inner-item">
                                    <p class="introduce-link" target="_blank"></p>
                                    <div class="empty-space">
                                        <div class="bg-product-pic server-header-active-04"></div>
                                    </div>
                                    <h2 class="product-introduce-title active-product-introduce-title ">在线赎当</h2>
                                    <p class="product-introduce-content">提供一站式的服务</p>
                                    <div class="product-introduce-list">
                                        <p class="introduce-list-large">
                                            在线赎当
                                        </p>
                                    </div>
                                    <p class="product-introduce-price">
                                        <span class="price-white">了解详情...</span>
                                    </p>
                                    <a href="<%=basePath %>redemption/toRedemption" class="btn buy-link-btn">立即赎当</a>
                                </div>
                            </div>
                        </li>
                        <li data-index="5">
                            <div class="normal-inner">
                                <div class="cloud-product-single-bottom clearfix4">
                                    <div class="empty-space">
                                        <div class="bg-product-pic server-header-05"></div>
                                    </div>
                                    <h2 class="product-introduce-title">挂失当票</h2>
                                    <p class="product-introduce-content">提供挂失当票功能</p>
                                    <div class="product-introduce-list">
                                        <p class="introduce-list-small">智能的网上挂失当票</p>
                                        <p class="introduce-list-small">迅速的补填安全漏洞</p>
                                    </div>
                                    <p class="product-introduce-price">
                                        <span class="price-blue">了解详情...</span>
                                    </p>
                                </div>
                            </div>
                            <div class="active-inner active-inner-05 clearfix4">
                                <div class="active-inner-item">
                                    <p class="introduce-link" target="_blank"></p>
                                    <div class="empty-space">
                                        <div class="bg-product-pic server-header-active-05"></div>
                                    </div>
                                    <h2 class="product-introduce-title active-product-introduce-title ">挂失当票</h2>
                                    <p class="product-introduce-content">提供挂失当票功能</p>
                                    <div class="product-introduce-list">
                                        <p class="introduce-list-large">
                                            快速的挂失当票接口，避免挂失前典当物被冐赎，提供了安全保障，解决了用户的燃眉之急
                                        </p>
                                    </div>
                                    <p class="product-introduce-price">
                                        <span class="price-white">了解详情...</span>
                                    </p>
                                    <a href="<%=basePath %>ticket/toReport" class="btn buy-link-btn">立即挂失</a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--珠宝商城-->
    <h4 id="t_shoppingmall" style="text-align: center;font-size: 28px;padding: 32px;letter-spacing: 4px;">珠宝商城</h4>
    <div class="main_box_four">
        <ul>
            <li>
                <a>
                    <div>
                        <h4>钻石</h4>
                        <h5></h5>
                        <i></i>
                    </div>
                    <img src="<%=basePath%>images/stone.jpg" height="150px">
                </a>
            </li>
            <li>
                <a>
                    <div>
                        <h4>手表</h4>
                        <h5></h5>
                        <i></i>
                    </div>
                    <img src="<%=basePath%>images/watch.jpg" height="150px">
                </a>
            </li>
            <li>
                <a>
                    <div>
                        <h4>箱包</h4>
                        <h5></h5>
                        <i></i>
                    </div>
                    <img src="<%=basePath%>images/bags.jpg" height="150px">
                </a>
            </li>
            <li>
                <a>
                    <h4></h4>
                    <img src="<%=basePath%>images/stone.jpg" height="150px">
                </a>
            </li>
        </ul>
    </div>
    <div class="main_box_four">
        <ul>
            <li>
                <a>
                    <div>
                        <h4>钻石</h4>
                        <h5></h5>
                        <i></i>
                    </div>
                    <img src="<%=basePath%>images/stone.jpg" height="150px">
                </a>
            </li>
            <li>
                <a>
                    <h4></h4>
                    <img src="<%=basePath%>images/watch.jpg" height="150px">
                </a>
            </li>
            <li>
                <a>
                    <h4></h4>
                    <img src="<%=basePath%>images/stone.jpg" height="150px">
                </a>
            </li>
            <li>
                <a>
                    <h4></h4>
                    <img src="<%=basePath%>images/stone.jpg" height="150px">
                </a>
            </li>
        </ul>
    </div>
    <!-- 右侧导航 -->
    <ul class="right_nav">
        <li>
            <div class="iconBox">
                <img src='<%=basePath%>images/rnlogin.png'>
                <h4>登录注册</h4>
            </div>
            <div class="hideBox">
                <div class="hb">
                    <a href="login.html"><h5>登录注册</h5></a>
                </div>
            </div>
        </li>
        <li>
            <div class="iconBox oln_ser">
                <img src='<%=basePath%>images/rnqq.png'>
                <h4>在线客服</h4>
            </div>
            <div class="hideBox">
                <div class="hb">
                    <h5>在线咨询</h5>
                    <div class="qqtalk">
                        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=（你的QQ号码）&site=qq&menu=yes">
                     <span><img src="<%=basePath%>images/online.png" alt="点击发消息"
                                title="点击发消息" /></span>
                            <p>点击发消息</p>
                        </a>
                    </div>
                </div>
            </div>
        </li>
        <li>
            <div class="iconBox phe_num">
                <img src='<%=basePath%>images/rncall.png'>
                <h4>联系电话</h4>
            </div>
            <div class="hideBox">
                <div class="hb">
                    <h5>热线电话</h5>
                    <p>18866886688</p>
                </div>
            </div>
        </li>
        <li>
            <div class="iconBox to_msg">
                <img src='<%=basePath%>images/rnmsg.png'>
                <h4>在线留言</h4>
            </div>
        </li>
        <li>
            <div class="iconBox top">
                <img src='<%=basePath%>images/rntop.png'>
                <h4>回到顶部</h4>
            </div>
        </li>
    </ul>
</div>

<script src="<%=basePath%>js/jquery.js"></script>
<script src="<%=basePath%>js/tools.js"></script>
<script src="<%=basePath%>js/jquery.min.js"></script>
<!--轮播图需要的-->
<script src="<%=basePath%>js/flickerplate.min.js"></script>
<script src="<%=basePath%>js/modernizr-custom-v2.7.1.min.js"></script>

<script>
$("#business").click(function () {
$('body,html').animate({scrollTop: $('#t_business').offset().top}, 1000);
return false;
});
$("#shoppingmall").click(function () {
$('body,html').animate({scrollTop: $('#t_shoppingmall').offset().top}, 500);
return false;
});
</script>
<script>
    /*轮播图海报效果*/
    $(document).ready(function(){
        $('.flicker-example').flicker();
    });
    /*新闻联播效果*/
    function timer(opj){
        $(opj).find('ul').animate({
            marginTop : "-3.5rem"
        },500,function(){
            $(this).css({marginTop : "0.7rem"}).find("li:first").appendTo(this);
        })
    }
    /*轮播1*/
    $(function(){
        var num = $('.notice_active').find('li').length;
        if(num > 1){
            var time=setInterval('timer(".notice_active")',3500);
            $('.gg_more a').mousemove(function(){
                clearInterval(time);
            }).mouseout(function(){
                time = setInterval('timer(".notice_active")',3500);
            });
        }

        $(".news_ck").click(function(){
            location.href = $(".notice_active .notice_active_ch").children(":input").val();
        })
    });
    /*轮播2*/
    $(function(){
        var num2 = $('.notice_active2').find('li').length;
        if(num2 > 1){
            var time2=setInterval('timer(".notice_active2")',3500);
            $('.gg_more2 a').mousemove(function(){
                clearInterval(time2);
            }).mouseout(function(){
                time2 = setInterval('timer(".notice_active2")',3500);
            });
        }

        $(".news_ck2").click(function(){
            location.href = $(".notice_active2 .notice_active_ch2").children(":input").val();
        })
    });

    /*手风琴*/
    $(function(){
        var c=1;
        $(".cloud-product-ul>li").mouseenter(function(){
            var e=$(this);
            c=e.data("index");
            var e=$(this);
            setTimeout(function(){
                if(c==e.data("index")){
                    $(".cloud-product-ul>li").removeClass("active");
                    e.addClass("active");
                }
            },120)
        });

    });


    /*动态设置侧边栏滚动*/
    $(function () {
        var offset_top = $('.right_nav').offset().top; //获取右侧导航距离顶部的高度
        var begin = 0,
                end = 0,
                timer = null;
        $('.right_nav li:last').hide(); //先将回到顶部隐藏

        $(window).scroll(function (evt) {
            clearInterval(timer);
            var scroll_top = $(window).scrollTop();
            end = offset_top + scroll_top;
            scroll_top > 100 ? $('.right_nav li:last').fadeIn() : $('.right_nav li:last').fadeOut(); //滚动距离判断是否显示回到顶部

            timer = setInterval(function () { //滚动定时器
                begin = begin + (end - begin) * 0.2;
                if (Math.round(begin) === end) {
                    clearInterval(timer);
                }
            }, 10);
        });
    });

    //右侧导航伸缩效果
    var right_nav = $(".right_nav");
    var tempS;
    $(".right_nav").hover(function () {
                var thisObj = $(this);
                tempS = setTimeout(function () {
                    thisObj.find("li").each(function (i) {
                        var tA = $(this);
                        setTimeout(function () {
                            tA.animate({
                                right: "0"
                            }, 200);
                        }, 50 * i);
                    });
                }, 200);
            },
            function () {
                if (tempS) {
                    clearTimeout(tempS);
                }
                $(this).find("li").each(function (i) {
                    var tA = $(this);
                    setTimeout(function () {
                        tA.animate({
                            right: "-70"
                        }, 200, function () {});
                    }, 50 * i);
                });
            });

    //右侧导航点击事件
    $(".right_nav li").each(function (i) {
        if (i == 0 || i == 1 || i == 2) {
            $(this).mouseover(function () {
                $(this).children(".hideBox").stop().fadeIn();
                right_nav.css('overflow', 'visible')
            });
            $(this).mouseout(function () {
                $(this).children(".hideBox").hide();
                right_nav.css('overflow', 'hidden')
            });
        } else if (i == 3) {
            $(this).click(function () {
                location.href = 'https://www.baidu.com/';
            })
        } else if (i == 4) {
            $(this).click(function () {
                $('body,html').animate({
                    scrollTop: 0
                }, 400);
            })
        }
    })

</script>
</body>
</html>