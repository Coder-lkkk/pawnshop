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
        <title>资料审批-典当物</title>
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
                <div>
                    订单详情
                </div>
                <form class="layui-form" action="">
                    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 40px; margin-left: 3%;">
                        <legend>审核</legend>
                    </fieldset>
                    <div class="lafite_approval">
                        <div class="layui-form-item">
                            <label class="layui-form-label">审核</label>
                            <div class="layui-input-block">
                                <input type="radio" name="approval" value="审核打回" title="审核打回">
                                <input type="radio" name="approval" value="审核打回" title="审核打回" checked>
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <label class="layui-form-label">审核说明</label>
                            <div class="layui-input-block lafite_width_60">
                                <textarea name="desc" placeholder="请输入内容" class="layui-textarea lafite_textarea"></textarea>
                            </div>
                        </div>


                    <div class="layui-form-item">
                        <div class="layui-input-block">
                        <button class="lafite-layui-btn lafite_margin_top_20px" onclick="xadmin.del_tab()" lay-submit lay-filter="formDemo">返回</button>
                        <button lay-submit lay-filter="formDemo" class="lafite-layui-btn2 lafite_margin_left_20px">保存</button>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
    <script>layui.use(['laydate', 'form', 'upload'],
        function() {
            var $ = layui.jquery
            ,upload = layui.upload;

            var laydate = layui.laydate;
            //多图片上传
            upload.render({
                elem: '#lafite_upload'
                ,url: '/upload/'
                ,multiple: true
                ,before: function(obj){
                //预读本地文件示例，不支持ie8
                obj.preview(function(index, file, result){
                    $('#demo2').append('<img src="'+ result +'" alt="'+ file.name +'" class="layui-upload-img">')
                });
                }
                ,done: function(res){
                //上传完毕
                }
            });

            function previewImg(Url) {
                var img = new Image();  
                img.src = Url;
                var height = img.height; //获取图片高度
                var width = img.width; //获取图片宽度
                var imgHtml = "<img src='" + Url + "' />";  
                //弹出层
                layer.open({  
                    type: 1,  
                    shade: 0.8,
                    offset: 'auto',
                    area: [width + 'px',height+'px'],
                    shadeClose:true,//点击外围关闭弹窗
                    scrollbar: false,//不现实滚动条
                    title: "图片预览", //不显示标题  
                    content: imgHtml, //捕获的元素，注意：最好该指定的元素要存放在body最外层，否则可能被其它的相对元素所影响  
                    cancel: function () {  
                        //layer.msg('捕获就是从页面已经存在的元素上，包裹layer的结构', { time: 5000, icon: 6 });  
                    }  
                }); 
            }

            $("#demo2 img").click(function() {
                previewImg($(this).attr("src"));
            });

        });
        

    </script>

</html>