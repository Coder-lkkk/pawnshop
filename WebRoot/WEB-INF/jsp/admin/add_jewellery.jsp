<!DOCTYPE html>
<html class="x-admin-sm">
    
    <head>
        <meta charset="UTF-8">
        <title>添加珠宝典当物</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <link rel="stylesheet" href="css/font.css">
        <link rel="stylesheet" href="css/xadmin.css">
        <script src="layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="js/xadmin.js"></script>
    </head>
    <body>
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                <form class="layui-form" lay-filter="j_add">
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                             珠宝名称
                        </label>
                        <div class="layui-input-block lafite_width_30">
                        <input type="text" name="title" required  lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">
                             珠宝品牌
                        </label>
                        <div class="layui-input-block lafite_width_30">
                        <input type="text" name="brand" required  lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                 使用情况
                            </label>
                            <div class="layui-input-block lafite_width_30">
                                <input type="text" name="jUsage" required  lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                购买时间
                            </label>
                            <div class="layui-input-inline">
                                <input type="date" name="jBuyTime" required  lay-verify="required" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                典当时间
                            </label>
                            <div class="layui-input-inline">
                                <input type="date" name="jPawnTime" required  lay-verify="required" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                原价格(&yen;)
                            </label>
                            <div class="layui-input-inline">
                               <input type="text" name="jPreMoney" lay-verify="required" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                典当价格(&yen;)
                            </label>
                           <div class="layui-input-inline">
                               <input type="text" name="jPawnMoney" lay-verify="required" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                出售价格(&yen;)
                            </label>
                            <div class="layui-input-inline">
                                <input type="text" name="jSaleMoney" lay-verify="required" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                    </div>

                     <div class="layui-form-item">
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                主体材质
                            </label>
                            <div class="layui-input-inline">
                                <input type="text" name="jMaterial" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                镶石材质
                            </label>
                            <div class="layui-input-inline">
                                <input type="text" name="jInMaterial" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                    </div>


                    <div class="layui-form-item layui-form-text">
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                克重
                            </label>
                            <div class="layui-input-inline">
                                <input type="text" name="jWeight" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                单珠直径(mm)
                            </label>
                            <div class="layui-input-inline">
                                <input type="text" name="jWeight" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                珠宝长度(cm)
                            </label>
                            <div class="layui-input-inline">
                                <input type="text" name="jLength" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                    </div>
                    <div class="layui-form-item layui-form-text">
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                珠宝种类
                            </label>
                            <div class="layui-input-inline">
                                <input type="text" name="jType" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">
                                珠宝款式
                            </label>
                            <div class="layui-input-inline">
                                <input type="text" name="jStyle" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                    </div>
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">
                            珠宝数量
                        </label>
                        <div class="layui-input-inline">
                            <input type="number" name="jCounts" autocomplete="off" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">
                            珠宝其他说明
                        </label>
                        <div class="layui-input-block lafite_width_60">
                            <textarea name="jOther" placeholder="请输入内容" class="layui-textarea lafite_textarea"></textarea>
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
                                <div class="layui-upload-list" id="demo2"></div>
                            </blockquote>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button class="lafite-layui-btn" onclick="xadmin.close()">取消</button>
                            <button lay-submit lay-filter="formSubmit" class="lafite-layui-btn2 lafite_margin_left_20px">保存</button>
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
                    ,form=layui.form;

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


            /*表单提交事件的监听*/
            form.on('submit(formSubmit)',function(data){
                console.log(data.field);   //当前容器的全部表单字段，名值对形式：{name: value}
                return false;
            });
        })
    </script>

</html>