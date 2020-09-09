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
        <title>编辑（珠宝）</title>
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
                <form class="layui-form" action="#" role="form">
                <input type="hidden" id="jid" class="id" name="jid"><!-- 使用隐藏域用于保存编辑项的ID值，便于提交修改 -->
                <input type="hidden" id="uid" class="id" name="uid"><!-- 使用隐藏域用于保存uid，便于提交修改 -->
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                             珠宝名称
                        </label>
                        <div class="layui-input-block lafite_width_30">
                        <input id="name" type="text" name="name" required  lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">
                             珠宝品牌
                        </label>
                        <div class="layui-input-block lafite_width_30">
                        <input id="brand" type="text" name="jBrand" required  lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                             状态
                        </label>
                        <div class="layui-input-block lafite_width_30">
                        <input id="state" type="text" name="jState" required  lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                 使用情况
                            </label>
                            <div class="layui-input-block lafite_width_30">
                                <input id="usage" type="text" name="jUsage" required  lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                购买时间
                            </label>
                            <div class="layui-input-inline">
                                <input id="buytime" type="text" name="jBuyTime" required  lay-verify="required" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                典当时间
                            </label>
                            <div class="layui-input-inline">
                                <input id="pawntime" type="text" name="jPawnTime" required  lay-verify="required" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                原价格(&yen;)
                            </label>
                            <div class="layui-input-inline">
                               <input id="premoney" type="text" name="jPreMoney" lay-verify="required" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                典当价格(&yen;)
                            </label>
                           <div class="layui-input-inline">
                               <input id="pawnmoney" type="text" name="jPawnMoney" lay-verify="required" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                出售价格(&yen;)
                            </label>
                            <div class="layui-input-inline">
                                <input id="salemoney" type="text" name="jSaleMoney" lay-verify="required" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                    </div>

                     <div class="layui-form-item">
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                主体材质
                            </label>
                            <div class="layui-input-inline">
                                <input id="material" type="text" name="jMaterial" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                镶石材质
                            </label>
                            <div class="layui-input-inline">
                                <input id="inmaterial" type="text" name="jInMaterial" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                    </div>


                    <div class="layui-form-item layui-form-text">
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                克重
                            </label>
                            <div class="layui-input-inline">
                                <input id="weight" type="text" name="jWeight" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                单珠直径(mm)
                            </label>
                            <div class="layui-input-inline">
                                <input id="diam" type="text" name="jWeight" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                珠宝长度(cm)
                            </label>
                            <div class="layui-input-inline">
                                <input id="length" type="text" name="jLength" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                    </div>
                    <div class="layui-form-item layui-form-text">
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                珠宝种类
                            </label>
                            <div class="layui-input-inline">
                                <input id="type" type="text" name="jType" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                珠宝款式
                            </label>
                            <div class="layui-input-inline">
                                <input id="style_" type="text" name="jStyle" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                    </div>
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">
                            珠宝数量
                        </label>
                        <div class="layui-input-inline">
                            <input id="count" type="number" name="jCounts" autocomplete="off" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">
                            珠宝其他说明
                        </label>
                        <div class="layui-input-block lafite_width_60">
                            <textarea id="other" name="jOther" placeholder="请输入内容" class="layui-textarea lafite_textarea"></textarea>
                        </div>
                    </div>


                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            珠宝照片
                        </label>
                        <div class="layui-upload">
                            <button type="button" class="layui-btn lafite_btn" id="lafite_upload">点击上传</button> 
                            <blockquote class="layui-elem-quote layui-quote-nm" style="width: 60%;margin-top: 10px; margin-left: 5%">
                                预览图：
                                <img id="image" alt="" src="" >
                            </blockquote>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button class="lafite-layui-btn" onclick="xadmin.close()">取消</button>
                            <button id="update" class="lafite-layui-btn2 lafite_margin_left_20px">保存</button>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
    <script type="text/javascript" src="https://api.map.baidu.com/api?v=2.0&amp;ak=f5bKSDjUlnYT4r664aQrQZB8&s=1"></script>
    <script>
        layui.use(['laydate', 'form', 'upload'],
        function() {
            var $ = layui.jquery
                    , upload = layui.upload
                    , form = layui.form ;

            var laydate = layui.laydate;

            //多图片上传
            upload.render({
                elem: '#lafite_upload'
                , url: '/upload/'
                , multiple: true
                , before: function (obj) {
                    //预读本地文件示例，不支持ie8
                    obj.preview(function (index, file, result) {
                        $('#demo2').append('<img src="' + result + '" alt="' + file.name + '" class="layui-upload-img">')
                    });
                }
                , done: function (res) {
                    if (res.code > 0) {
                        return layer.msg('上传失败');
                    }
                    //上传完毕
                }
            });

            /*用户-取消*/
            function member_del() {
                layer.confirm('离开将不保存填写内容！',
                        function (index) {
                            //发异步删除数据
                        });
            };

            /*提交按钮的监听*/
            $("#update").click(function(){
                console.log($("#name").val());
                var jid = $("#jid").val();
                var name = $("#name").val();
                var state = $("#state").val();
                var brand = $("#brand").val();
                var usage = $("#usage").val();
                var buytime = $("#buytime").val();
                var pawntime = $("#pawntime").val();
                var premoney = $("#premoney").val();
                var pawnmoney = $("#pawnmoney").val();
                var salemoney = $("#salemoney").val();
                var material = $("#material").val();
                var inmaterial = $("#inmaterial").val();
                var weight = $("#weight").val();
                var diam = $("#diam").val();
                var length = $("#length").val();
                var type = $("#type").val();
                var style_ = $("#style_").val();
                var count = $("#count").val();
                var other   = $("#other").val();
                var uid = $("#uid").val();
                $.ajax({
					type:'post',
					url:"<%=basePath%>user/updateJewellery",
					contentType:'application/json',
					data:JSON.stringify({jid:jid,jname:name,jbrand:brand,jstate:state,jusage:usage,jbuytime:buytime,jpawntime:pawntime,
											jpremoney:premoney,jpawnmoney:pawnmoney,jsalemoney:salemoney,jmaterial:material,
											jinmaterial:inmaterial,jweight:weight,jdiam:diam,jlength:length,jtype:type,jstyle:style_,
											jcount:count,jother:other,uid:uid}),
					success: function (result) {
						alert("修改成功");
						var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
						parent.layer.close(index); //再执行关闭
					},
					error:function(XMLHttpRequest, textStatus, errorThrown){
						console.log(XMLHttpRequest.status); 
               			console.log(XMLHttpRequest.readyState); 
               			console.log(textStatus); 
               			console.log(XMLHttpRequest.responseText); 
						alert("修改失败");
           		 }
				});
            });
        })
    </script>

</html>