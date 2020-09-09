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
    <input type="hidden" id="jid" class="id" name="id"><!-- 使用隐藏域用于保存编辑项的ID值，便于提交修改 -->
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                <div>
                    典当物审核
                </div>
                <form class="layui-form" action="">
                    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 40px; margin-left: 3%;">
                        <legend>审核</legend>
                    </fieldset>
                    <div class="lafite_approval">
                        <div class="layui-form-item">
                            <label class="layui-form-label">审核</label> 
                            <div class="layui-input-block">
                                <input type="radio" name="approval" value="审核通过" title="审核通过">
                                <input type="radio" name="approval" value="审核不通过" title="审核不通过" checked>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">审核状态</label>
                            <div class="layui-input-inline">
                                <select name="state" lay-filter="state">
                                    <option value=""></option>
                                    <option value="估当中">估当中</option>
                                    <option value="典当中">典当中</option>
                                    <option value="续当中">续当中</option>
                                    <option value="已赎当">已赎当</option>
                                    <option value="已绝当">已绝当</option>
                                </select>
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
                            <button type="button" onclick="save()" lay-submit lay-filter="formDemo" class="lafite-layui-btn2 lafite_margin_left_20px">保存</button>
                            </div>
                        </div>
                    </div>
                </form>
                </div>
            </div>
        </div>
    </body>
<!-- jquery -->
<script>
function save(){
    	alert("保存成功");
    }
</script>
<script src="<%=basePath%>js/jquery-3.4.1.min.js"></script>
    <script>layui.use(['laydate', 'form', 'upload'],
        function() {
            var $ = layui.jquery
            ,upload = layui.upload;

            var laydate = layui.laydate;
            var form = layui.form;
            //多图片上传
//            upload.render({
//                elem: '#lafite_upload'
//                ,url: '/upload/'
//                ,multiple: true
//                ,before: function(obj){
//                //预读本地文件示例，不支持ie8
//                obj.preview(function(index, file, result){
//                    $('#demo2').append('<img src="'+ result +'" alt="'+ file.name +'" class="layui-upload-img">')
//                });
//                }
//                ,done: function(res){
//                //上传完毕
//                }
//            });

//            function previewImg(Url) {
//                var img = new Image();
//                img.src = Url;
//                var height = img.height; //获取图片高度
//                var width = img.width; //获取图片宽度
//                var imgHtml = "<img src='" + Url + "' />";
//                //弹出层
//                layer.open({
//                    type: 1,
//                    shade: 0.8,
//                    offset: 'auto',
//                    area: [width + 'px',height+'px'],
//                    shadeClose:true,//点击外围关闭弹窗
//                    scrollbar: false,//不现实滚动条
//                    title: "图片预览", //不显示标题
//                    content: imgHtml, //捕获的元素，注意：最好该指定的元素要存放在body最外层，否则可能被其它的相对元素所影响
//                    cancel: function () {
//                        //layer.msg('捕获就是从页面已经存在的元素上，包裹layer的结构', { time: 5000, icon: 6 });
//                    }
//                });
//            }

            $("#demo2 img").click(function() {
                previewImg($(this).attr("src"));
            });
            
            form.on('select(state)', function(data){         //监听下拉框的选择
            	console.log(document.getElementById("jid").value);//获取输入框元素);
  				console.log(data.value); //得到被下拉框选中的值
  				$.ajax({
            				type:"get",
            				url:"<%=basePath%>admin/changeJstate",
            				data:{
            					"jid":document.getElementById("jid").value,
            					"state":data.value
            				},
            				success:function(data) {
            				alert("Change state successfully !");
            				var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
							parent.layer.close(index); //再执行关闭
           				 }
        			});
			});  

        });


    </script>


</html>