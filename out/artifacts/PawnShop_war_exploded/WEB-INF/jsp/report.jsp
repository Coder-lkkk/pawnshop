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
    <title>挂失当票</title>
    <link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=basePath%>css/report.css">
    <link rel="stylesheet" href="<%=basePath%>css/report_base.css">
    <link rel="stylesheet" href="<%=basePath%>css/report_home.css">
</head>
<body>
<!--首页-->
<div class="gua_box_header">
    <div class="gua_box_header_content">
        <ul>
            <li><a href="#"><img src="<%=basePath%>images/report/logo.jpg" width="100px"></a></li>
            <li>挂失当票</li>
        </ul>
        <a class="back" href="<%=basePath%>login/toMainlogined">返回首页</a>
    </div>
</div>
<section class="aui-content">
    <div style="height:20px;"></div>
    <div class="aui-content-up">
        <form action="" name="form1" method="post">
            <div class="aui-content-up-form">
                <h2>挂失当票</h2>
            </div>
            <div class="aui-form-group clear">
                <label class="aui-label-control">
                    姓名 <em>*</em>
                </label>
                <div class="aui-form-input">
                    <input type="text" class="aui-form-control-two" name="name" onblur="checkna()" required id="name" placeholder="请输入身份证名字">
                    <span class="tips"  id="divname">请输入身份证姓名</span>
                </div>
            </div>
            <div class="aui-form-group clear">
                <label class="aui-label-control">
                    手机号码 <em>*</em>
                </label>
                <div class="aui-form-input">
                    <input type="text" class="aui-form-control-two" name="phone" onblur="checkpsd()" id="phone" placeholder="请输入11位的手机号码" required/>
                    <span class="tips" id="divphone">必须是11位的数字且必须是当票上填写的手机号码</span>
                </div>
            </div>
            <div class="aui-form-group clear">
                <label class="aui-label-control">
                    验证码
                </label>
                <div class="aui-form-input-code">
                    <input type="text" class="aui-form-control-one" name="code" id="code" placeholder="请输入验证码" required/>
                    <input id="btnSendCode1" type="button" class="btn btn-default" value="获取验证码" onClick="sendMessage()" />
                </div>
            </div>
            
            <div class="aui-form-group clear">
                <label class="aui-label-control">
                    当票编号
                </label>
                <div class="aui-form-input-code">
                    <input type="text" class="aui-form-control-one" name="id" id="tid"/>
                </div>
            </div>
            
            <div class="aui-form-group clear">
                <label class="aui-label-control">
                    其他说明
                </label>
                <div class="aui-form-input-code">
                    <input type="text" class="aui-form-control-one" name="remark" id="remark"/>
                </div>
            </div>

            <div class="aui-form-group clear">
                <label class="aui-label-control">
                    身份证照 <em>*</em>
                    <span>小于5M</span>
                </label>
                <div class="aui-form-input">
                    <div class="aui-content-img-box aui-content-full">
                        <div class="aui-photo aui-up-img clear">
                            <section class="aui-file-up fl">
                                <img src="<%=basePath%>images/report/up.png" class="add-img">
                                <input type="file" name="file" id="file" class="file" value="" accept="image/jpg,image/jpeg,image/png,image/bmp" multiple/>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
            <div class="aui-form-group-text">
                <h3>附</h3>
                <p>若身份证丢失，可使用公安部门证明来挂失，但需待典当期满时才可以办理赎当手续。</p>
            </div>
        </form>
    </div>
    <div class="aui-btn-default">
        <button class="aui-btn aui-btn-account save">保存并提交审核</button>
        <div class="aui-form-group-text">
            <h3>说明</h3>
            <p>提交审核后,服务人员将会与当票上填写的典当人进行联系确认请耐心等待</p>
        </div>
    </div>
</section>
<!-- mask begin -->
<div class="aui-mask aui-works-mask">
    <div class="aui-mask-content">
        <p class="aui-delete-text">确定要删除你上传的照片？</p>
        <p class="aui-check-text">
            <span class="aui-delete aui-accept-ok">确定</span>
            <span class="aui-accept-no">取消</span>
        </p>
    </div>
</div>
<!-- mask end -->
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<script type="text/javascript">
    var nameReg = /^[\u4E00-\u9FA5\uf900-\ufa2d·s]{2,20}$/; //名字正则
    var phoneReg = /(^1[3|4|5|7|8]\d{9}$)|(^09\d{8}$)/;   //手机号正则
    var count = 60; //间隔函数，1秒执行
    var InterValObj1; //timer变量，控制时间
    var curCount1;//当前剩余秒数
    //验证姓名
    function checkna(){
        var name= $.trim($('#name').val());
        if(!nameReg.test(name))
        {
            divname.innerHTML='<font class="tips_false">请输入符合要求的姓名</font>';

        }else{
            divname.innerHTML='<font class="tips_true name_tips">输入正确</font>';
        }
    }
    //验证手机号码
    function checkpsd(){
        var phone = $.trim($('#phone').val());
        if(!phoneReg.test(phone))
        {
            divphone.innerHTML='<span class="tips_false">必须是11位的数字</span>';
        }else{
            divphone.innerHTML='<span class="tips_true phone_tips">输入正确</span>';
        }

    }
    /*短信倒数*/
    function sendMessage() {
        curCount1 = count;
        //设置button效果，开始计时
        $("#btnSendCode1").attr("disabled", "true");
        $("#btnSendCode1").val( + curCount1 + "秒再获取");
        InterValObj1 = window.setInterval(SetRemainTime1, 1000); //启动计时器，1秒执行一次
        //向后台发送处理数据

    }
    function SetRemainTime1() {
        if (curCount1 == 0) {
            window.clearInterval(InterValObj1);//停止计时器
            $("#btnSendCode1").removeAttr("disabled");//启用按钮
            $("#btnSendCode1").val("重新发送");
        }
        else {
            curCount1--;
            $("#btnSendCode1").val( + curCount1 + "秒再获取");
        }
    }
    /*图片的处理*/
    $(function() {
        var delParent;
        var defaults = {
            fileType: ["jpg", "png", "bmp", "jpeg"],
            // 上传图片支持的格式
            fileSize: 1024 * 1024 * 10 // 上传的图片大小不得超过 10M
        };
        /*点击图片*/
        $(".file").change(function() {
            var idFile = $(this).attr("id");
            var file = document.getElementById(idFile);
            var imgContainer = $(this).parents(".aui-photo");
            //存放图片的父元素
            var fileList = file.files;
            //获取的图片文件
            console.log(fileList + "======filelist=====");
            var input = $(this).parent();
            //文本框的父亲元素
            var imgArr = [];
            //遍历得到的图片
            var numUp = imgContainer.find(".aui-up-section").length;
            var totalNum = numUp + fileList.length;
            //图片总的数量可自定义
            if (fileList.length > 3 || totalNum > 3) {
                alert("你好！上传图片不得超过3张，请重新选择");
                //一次选择上传超过3个  自己定义
            } else if (numUp < 3) {
                fileList = validateUp(fileList);
                for (var i = 0; i < fileList.length; i++) {
                    var imgUrl = window.URL.createObjectURL(fileList[i]);
                    imgArr.push(imgUrl);
                    var $section = $("<section class='aui-up-section fl loading'>");
                    imgContainer.prepend($section);
                    var $span = $("<span class='aui-up-span'>");
                    $span.appendTo($section);

                    var $img0 = $("<img class='aui-close-up-img'>").on("click", function(event) {
                        event.preventDefault();
                        event.stopPropagation();
                        $(".aui-works-mask").show();
                        delParent = $(this).parent();
                    });
                    $img0.attr("src", "<%=basePath%>report/close.png").appendTo($section);
                    var $img = $("<img class='aui-to-up-img aui-up-clarity'>");
                    $img.attr("src", imgArr[i]);
                    $img.appendTo($section);
                    var $p = $("<p class='img-aui-img-name-p'>");
                    $p.html(fileList[i].name).appendTo($section);
                    var $input = $("<input id='actionId' name='actionId' value='' type='hidden'>");
                    $input.appendTo($section);
                    var $input2 = $("<input id='tags' name='tags' value='' type='hidden'/>");
                    $input2.appendTo($section);

                }
            }
            setTimeout(function() {
                $(".aui-up-section").removeClass("loading");
                $(".aui-to-up-img").removeClass("aui-up-clarity");
            }, 4100);
            numUp = imgContainer.find(".aui-up-section").length;
            if (numUp >= 3) {
                $(this).parent().hide();
            }

            $(this).val("");
        });

        $(".aui-photo").delegate(".aui-close-up-img", "click", function() {
            $(".aui-works-mask").show();
            delParent = $(this).parent();
        });

        $(".aui-accept-ok").click(function() {
            $(".aui-works-mask").hide();
            var numUp = delParent.siblings().length;
            if (numUp < 3) {
                delParent.parent().find(".aui-file-up").show();
            }
            delParent.remove();

        });

        $(".aui-accept-no").click(function() {
            $(".aui-works-mask").hide();
        });

        function validateUp(files) {
            var arrFiles = [];
            //替换的文件数组
            for (var i = 0, file; file = files[i]; i++) {
                //获取图片上传的后缀名
                var newStr = file.name.split("").reverse().join("");
                if (newStr.split(".")[0] != null) {
                    var type = newStr.split(".")[0].split("").reverse().join("");
                    console.log(type + "===type===");
                    if (jQuery.inArray(type, defaults.fileType) > -1) {
                        // 符合图片格式，可以上传
                        if (file.size >= defaults.fileSize) {
                            alert(file.size);
                            alert('您这个"' + file.name + '"文件大小过大');
                        } else {
                            arrFiles.push(file);
                        }
                    } else {
                        alert('您这个"' + file.name + '"上传类型不符合');
                    }
                } else {
                    alert('您这个"' + file.name + '"没有类型, 无法识别');
                }
            }
            return arrFiles;
        }

    });
    /*点击确定事件*/
    $(".save").click(function () {
        /*验证姓名和手机号码填入正确*/
        var nameLength=$(".name_tips").length;
        var phoneLength=$(".phone_tips").length;
        if(nameLength !==0 && phoneLength !==0){
            var name=$('#name').val();
            console.log(name);
            var phone=$('#phone').val();
            console.log(phone);
            var code=$('#code').val();
            console.log(code);
            var tid=parseInt($('#tid').val());
            console.log(tid);
            /*获取上传的Img图片   因为img不止一个所以循环*/
            $('.aui-to-up-img').each(function () {
                var src=$(this).attr("src");
                console.log(src);
            });
             $.ajax({
                type:'post',
                url:"<%=basePath%>ticket/reportLoss",
                data:{
                	tid:tid
                },
                success: function (result) {
                    alert("您的挂失信息成功提交，耐心等待审核");
                },
                error:function(XMLHttpRequest, textStatus, errorThrown){
                    alert("提交失败");
                }
            });
        }
        else {
            alert("姓名或手机号码输入不正确");
            return false;
        }
    })






</script>
</body>
</html>