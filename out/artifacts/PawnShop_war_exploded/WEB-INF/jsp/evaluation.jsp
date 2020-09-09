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
    <title>估当界面</title>
    <link rel="stylesheet" href="<%=basePath%>css/evaluation.css">
    <link rel="stylesheet" href="<%=basePath%>css/globle.css">
</head>
<body>

<div class="gu_box_header">
    <div class="gu_box_header_content">
        <ul>
            <li><a href="#"><img src="<%=basePath%>images/logo.jpg" width="100px"></a></li>
            <li>在线估当</li>
        </ul>
        <a class="back" href="<%=basePath%>user/backToMain">返回首页</a>
    </div>
</div>
<div class="solution-box">
    <div class="solution-bj">
        <div class="solution-header">
            <h2>准确评估典当物价格</h2>
            <p>对自己的资产有个全面的概念</p>
        </div>
        <div class="solution-content clearfix">
            <div class="solution-list hd">
                <ul>
                    <li class="on">
                        <h2>奢侈品珠宝</h2>
                    </li>
                    <li>
                        <h2>钻石</h2>
                    </li>
                    <li>
                        <h2>手表</h2>
                    </li>
                    <li>
                        <h2>奢侈品箱包</h2>
                    </li>
                    <li>
                        <h2>贵金属</h2>
                    </li>
                    <li>
                        <h2>翡翠玉石</h2>
                    </li>
                </ul>
            </div>
            <div class="solution-item bd">
                <ul  style="display:block">
                    <li style=" padding: 20px 0;">
                        <form>
                            <div class="solution-title">
                                *品牌
                                <div class="solution-input">
                                    <input class="j_brand" type="text" name="j_brand" required>
                                </div>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-brand clearfix radio_input">
                                <div class="solution-title">
                                    *主体材质
                                </div>
                                <div class="radio_input">
                                    <input type="radio" name="material" id="j_material1" checked>
                                    <label for="j_material1">Pt铂金</label>
                                    <input type="radio" name="material" id="j_material2">
                                    <label for="j_material2">18K黄金</label>
                                    <input type="radio" name="material" id="j_material3">
                                    <label for="j_material3">S925银</label>
                                    <input type="radio" name="material" id="j_material4">
                                    <label for="j_material4">陶瓷</label>
                                    <input type="radio" name="material" id="j_material5">
                                    <label for="j_material5">钢</label>
                                    <input type="radio" name="material" id="j_material6">
                                    <label for="j_material6">多种材质</label>
                                    <input type="radio" name="material" id="j_material7">
                                    <label for="j_material7">其他材质</label>
                                </div>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-brand clearfix">
                                <div class="solution-title">
                                    镶石材质
                                </div>
                                <div class="radio_input">
                                    <input type="radio" name="part_material" id="j_part_material1">
                                    <label for="j_part_material1">无镶石</label>
                                    <input type="radio" name="part_material" id="j_part_material2">
                                    <label for="j_part_material2">钻石</label>
                                    <input type="radio" name="part_material" id="j_part_material3">
                                    <label for="j_part_material3">红蓝宝石</label>
                                    <input type="radio" name="part_material" id="j_part_material4">
                                    <label for="j_part_material4">珍珠</label>
                                    <input type="radio" name="part_material" id="j_part_material5">
                                    <label for="j_part_material5">镶嵌多种宝石</label>
                                    <input type="radio" name="part_material" id="j_part_material6">
                                    <label for="j_part_material6">其他</label>
                                </div>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-brand clearfix">
                                *使用情况
                                <select type="text" id="j_usage" class="j_usage">
                                    <option value="">9.9成新</option>
                                    <option value="">9.5成新</option>
                                    <option value="">9.0成新</option>
                                    <option value="">8.5成新</option>
                                </select>
                                <p>
                                    &Delta;说明:<br>
                                    &nbsp;  9.9成型:附件齐全，未佩戴，商品状态好<br>
                                    &nbsp;  9.5成新:外观可见细小/轻微的使用痕迹<br>
                                    &nbsp;  9.0成新:外观有正常使用产生的划痕磨损，可修复<br>
                                    &nbsp;  8.5成新:外观磨损较重，可见明显划痕/磕痕<br>
                                </p>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-brand clearfix">
                                <div class="solution-title">
                                    附件(可多选)
                                </div>
                                <div class="radio_input">
                                    <input type="checkbox" id="j_attachement1" name="j_attachment" />
                                    <label for="j_attachement1">保卡</label>
                                    <input type="checkbox" id="j_attachement2"  name="j_attachment" />
                                    <label for="j_attachement2">包装盒</label>
                                    <input type="checkbox" id="j_attachement3"  name="j_attachment" />
                                    <label for="j_attachement3">证书</label>
                                    <input type="checkbox" id="j_attachement4" name="j_attachment" />
                                    <label for="j_attachement4">收据和发票</label>
                                    <input type="checkbox" id="j_attachement5" name="j_attachment" />
                                    <label for="j_attachement5">其他附件</label>
                                    <input type="checkbox" id="j_attachement6" name="j_attachment" />
                                    <label for="j_attachement6">无任何附件</label>
                                </div>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-title">
                                购买价格(￥)
                                <div class="solution-input">
                                    <input class="j_premoney" type="text" name="j_premoney" pattern="/^\d+(\.\d+)?$/" required>
                                </div>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-brand clearfix">
                                <div class="solution-title">
                                    *购买时间
                                    <div class="solution-input">
                                        <input type="date" class="j_buytime" required>
                                    </div >
                                </div>
                            </div>
                            <span class="hx"></span>
                            <div>
                                <div class="solution-title">
                                    *上传照片
                                </div>
                                	<form method="post" enctype="multipart/form-data">
										<input id="jimg" type="file" name="file"><br>
									</form>
                            </div>
                            <button class="submit_btn" id="submit_j">提交</button>
                        </form>
                    </li>
                </ul>
                <ul>
                    <li style=" padding: 20px 0;">
                        <form>
                            <div class="solution-brand clearfix">
                                <div class="solution-title">
                                    形状
                                </div>
                                <div class="radio_input">
                                    <input type="radio" name="d_shape" id="d_shape1" checked>
                                    <label for="d_shape1">圆形钻</label>
                                    <input type="radio" name="d_shape" id="d_shape2">
                                    <label for="d_shape2">异性钻</label>
                                    <br>
                                    <p>
                                        &Delta;异性钻:公主方形、心形、水滴形、祖母绿形、椭圆形等<br>
                                    </p>
                                </div>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-brand clearfix">
                                *克拉区间
                                <select type="text" id="carat" class="carat">
                                    <option value="">0.18-0.22</option>
                                    <option value="">0.23-0.29</option>
                                    <option value="">0.30-0.39</option>
                                    <option value="">0.40-0.49</option>
                                    <option value="">0.50-0.69</option>
                                    <option value="">0.70-0.89</option>
                                    <option value="">0.90-0.99</option>
                                    <option value="">1.00-1.49</option>
                                    <option value="">1.50-1.99</option>
                                    <option value="">2.00-2.99</option>
                                    <option value="">3.00-3.99</option>
                                    <option value="">4.00-4.99</option>
                                    <option value="">5.00-5.99</option>
                                    <option value="">10.00-10.99</option>
                                </select>
                                <br>
                                *克拉
                                <div class="solution-input">
                                    <input class="caratWeight" type="text" name="caratWeight" required>
                                </div>
                                <p>
                                    &Delta;填写数字即可，提示:分与克拉的换算关系：100分=1克拉，如50分=0.5克拉 30分=0.3克拉<br>
                                </p>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-brand clearfix">
                                <div class="solution-title">
                                    *颜色
                                </div>
                                <select type="text" id="d_color" class="d_color">
                                    <option value="">D(极白)</option>
                                    <option value="">E(极白)</option>
                                    <option value="">F(优白)</option>
                                    <option value="">G(优白)</option>
                                    <option value="">H(白)</option>
                                    <option value="">I(微黄白)</option>
                                    <option value="">J(微黄白)</option>
                                    <option value="">K(浅黄白)</option>
                                    <option value="">L(浅黄白)</option>
                                    <option value="">M(浅黄)</option>
                                    <option value="">N(浅黄)</option>
                                </select>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-brand clearfix">
                                <div class="solution-title">
                                    *净度
                                </div>
                                <select type="text" id="d_clarity" class="d_clarity">
                                    <option value="">FL/IF(无暇级)</option>
                                    <option value="">VVS1(极微瑕1级)</option>
                                    <option value="">VVS2(极微瑕2级)</option>
                                    <option value="">VS1(微瑕1级)</option>
                                    <option value="">VS2(微瑕2级)</option>
                                    <option value="">SI1(小瑕疵1级)</option>
                                    <option value="">SI2(小瑕疵2级)</option>
                                    <option value="">SI3(小瑕疵3级)</option>
                                </select>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-brand clearfix">
                                <div class="solution-title">
                                    *切工
                                </div>
                                <div class="radio_input">
                                    <input type="radio" name="d_cut" id="d_cut1">
                                    <label for="d_cut1">3EX(异性2EX) 极好切工</label>
                                    <input type="radio" name="d_cut" id="d_cut2">
                                    <label for="d_cut2">VG 非常好切工</label>
                                    <input type="radio" name="d_cut" id="d_cut3">
                                    <label for="d_cut3">G 好切工</label>
                                </div>
                                <br>
                                <p>
                                    &Delta;说明:切工评级分为三项:cut grade(切工级别) 、Polish(抛光)及Symmetry(修饰度)<br>
                                    &Delta; 如何选择切工？<br>
                                    &nbsp;&nbsp;  三项中仅有Good则为G,出现Very Good则为VG，均为Excellent则为3EX/2EX(异性钻石仅有两项标准)<br>
                                </p>
                            </div>
                            <button class="submit_btn" id="submit_d">提交</button>
                        </form>
                    </li>
                </ul>
                <ul>
                    <li style=" padding: 20px 0;">
                        <form>
                            <div class="solution-title">
                                *品牌
                                <div class="solution-input">
                                    <input class="w_brand" type="text" name="brand" required>
                                </div>
                                <br>
                                <p>
                                    &Delta;品牌logo印于表盘12点钟位置<br>
                                </p>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-brand clearfix radio_input">
                                <div class="solution-title">
                                    *男女款
                                </div>
                                <div class="radio_input">
                                    <input type="radio" name="w_sex" id="w_sex1" checked>
                                    <label for="w_sex1">男款</label>
                                    <input type="radio" name="w_sex" id="w_sex2">
                                    <label for="w_sex2">女款</label>
                                </div>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-brand clearfix">
                                *表体材质
                                <div class="radio_input">
                                    <input type="radio" name="watch_material" id="w_material1">
                                    <label for="w_material1">全钢</label>
                                    <input type="radio" name="watch_material" id="w_material2">
                                    <label for="w_material2">K金/间金</label>
                                    <input type="radio" name="watch_material" id="w_material3">
                                    <label for="w_material3">铂金</label>
                                    <input type="radio" name="watch_material" id="w_material4">
                                    <label for="w_material4">钯金</label>
                                    <input type="radio" name="watch_material" id="w_material5">
                                    <label for="w_material5">陶瓷</label>
                                    <input type="radio" name="watch_material" id="w_material6">
                                    <label for="w_material5">钛合金</label>
                                    <input type="radio" name="watch_material" id="w_material7">
                                    <label for="w_material5">其他材质</label>
                                </div>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-brand clearfix">
                                *机芯类型
                                <div class="radio_input">
                                    <input type="radio" name="watch_w_coreType" id="w_coreType1">
                                    <label for="w_coreType1">石英(电子表、石英表)</label>
                                    <input type="radio" name="watch_w_coreType" id="w_coreType2">
                                    <label for="w_coreType2">机械(自动上弦)</label>
                                    <input type="radio" name="watch_w_coreType" id="w_coreType3">
                                    <label for="w_coreType3">机械(手动上弦)</label>
                                </div>
                                <br />
                                <p>
                                    &Delta;说明<br>
                                    &nbsp;机械:表盘带有Automatic字样，秒针连续走动<br>
                                    &nbsp;石英:表盘带有Quartz字样，秒针跳动走时<br>
                                </p>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-brand clearfix">
                                *使用情况
                                <select type="text" id="w_usage" class="w_usage">
                                    <option value="">9.9成新</option>
                                    <option value="">9.5成新</option>
                                    <option value="">9.0成新</option>
                                    <option value="">8.5成新</option>
                                </select>
                                <p>
                                    &Delta;说明:<br>
                                    &nbsp;  9.9成型:附件齐全，未佩戴，商品状态好<br>
                                    &nbsp;  9.5成新:外观可见细小/轻微的使用痕迹<br>
                                    &nbsp;  9.0成新:外观有正常使用产生的划痕磨损，可修复<br>
                                    &nbsp;  8.5成新:外观磨损较重，可见明显划痕/磕痕<br>
                                </p>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-brand clearfix">
                                <div class="solution-title">
                                    附件(可多选)
                                </div>
                                <div class="radio_input">
                                    <input type="checkbox" id="w_attachement1" name="w_attachment" />
                                    <label for="w_attachement1">保卡</label>
                                    <input type="checkbox" id="w_attachement2" name="w_attachment"/>
                                    <label for="w_attachement2">包装盒</label>
                                    <input type="checkbox" id="w_attachement3" name="w_attachment" />
                                    <label for="w_attachement3">证书</label>
                                    <input type="checkbox" id="w_attachement4" name="w_attachment" />
                                    <label for="w_attachement4">收据和发票</label>
                                    <input type="checkbox" id="w_attachement5"name="w_attachment" />
                                    <label for="w_attachement5">其他附件</label>
                                    <input type="checkbox" id="w_attachement6" name="w_attachment" />
                                    <label for="w_attachement6">无任何附件</label>
                                </div>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-title">
                                购买价格
                                <div class="solution-input">
                                    <input class="w_premoney" type="text" name="brand" required>
                                </div>
                            </div>
                            <span></span>
                            <div class="solution-brand clearfix">
                                <div class="solution-title">
                                    *购买时间
                                    <div class="solution-input">
                                        <input type="date" class="w_buytime">
                                    </div >
                                </div>
                            </div>
                            <span class="hx"></span>
                            <div>
                                <div class="solution-title">
                                    *上传照片
                                </div>
                                <div>
                                    <ul class="upload-ul photo_clearfix watchUpload" style="display: block;">
                                        <li class="upload-pick">
                                            <div class="webuploader-container photo_clearfix" id="watchUpload"></div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <button class="submit_btn" id="submit_w">提交</button>
                        </form>
                    </li>
                </ul>
                <ul>
                    <li style=" padding: 20px 0;">
                        <form>
                            <div class="solution-brand clearfix">
                                *品牌
                                <div class="solution-input">
                                    <input class="b_brand" type="text" name="b_brand" required>
                                </div>
                                <br>
                                <p>
                                    &Delta;说明:<br>
                                    &nbsp;品牌可通过包体logo得知，品牌logo一般印在内衬或外观醒目位置
                                </p>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-brand clearfix">
                                *包体长度
                                <div class="solution-input">
                                    <input class="b_length" type="text" name="b_length" required>
                                </div>
                                <br>
                                <p>
                                    &Delta;说明:<br>
                                    &nbsp;测量长度即可
                                </p>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-brand clearfix">
                                *使用情况
                                <select type="text" id="b_usage" class="b_usage">
                                    <option value="">9.9成新</option>
                                    <option value="">9.5成新</option>
                                    <option value="">9.0成新</option>
                                    <option value="">8.5成新</option>
                                </select>
                                <p>
                                    &Delta;说明:<br>
                                    &nbsp;  9.9成型:附件齐全，未佩戴，商品状态好<br>
                                    &nbsp;  9.5成新:外观可见细小/轻微的使用痕迹<br>
                                    &nbsp;  9.0成新:外观有正常使用产生的划痕磨损，可修复<br>
                                    &nbsp;  8.5成新:包体出现(印染、变色、变形、明显污渍、破损)中任意一项，五金件配件等发生损坏，影响正常使用<br>
                                </p>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-brand clearfix">
                                <div class="solution-title">
                                    附件(可多选)
                                </div>
                                <div class="radio_input">
                                    <input type="checkbox" id="b_attachement1" name="b_attachement"/>
                                    <label for="b_attachement1">保卡</label>
                                    <input type="checkbox" id="b_attachement2" name="b_attachement"/>
                                    <label for="b_attachement2">防尘袋</label>
                                    <input type="checkbox" id="b_attachement3" name="b_attachement"/>
                                    <label for="b_attachement3">证书</label>
                                    <input type="checkbox" id="b_attachement4" name="b_attachement"/>
                                    <label for="b_attachement4">收据和发票</label>
                                    <input type="checkbox" id="b_attachement5" name="b_attachement" />
                                    <label for="b_attachement5">五金配件</label>
                                    <input type="checkbox" id="b_attachement6" name="b_attachement" />
                                    <label for="b_attachement6">肩带</label>
                                    <input type="checkbox" id="b_attachement7" name="b_attachement" />
                                    <label for="b_attachement7">其他附件</label>
                                    <input type="checkbox" id="b_attachement8" name="b_attachement" />
                                    <label for="b_attachement8">无任何附件</label>

                                </div>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-title">
                                购买价格
                                <div class="solution-input">
                                    <input class="b_premoney" type="text" name="brand" required>
                                </div>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-brand clearfix">
                                <div class="solution-title">
                                    *购买时间
                                    <div class="solution-input">
                                        <input type="date" class="b_buytime">
                                    </div >
                                </div>
                            </div>
                            <span class="hx"></span>
                            <div>
                                <div class="solution-title">
                                    *上传照片
                                </div>
                                <div>
                                    <ul class="upload-ul photo_clearfix bagsUpload" style="display: block;">
                                        <li class="upload-pick">
                                            <div class="webuploader-container photo_clearfix" id="bagsUpload"></div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <button class="submit_btn" id="submit_b">提交</button>
                        </form>
                    </li>
                </ul>
                <ul>
                    <li style=" padding: 20px 0;">
                        <form>
                            <div class="solution-brand clearfix radio_input">
                                <div class="solution-title">
                                    *金属种类
                                </div>
                                <div class="radio_input">
                                    <input type="radio" name="m_type" id="m_type1" checked>
                                    <label for="m_type1">黄金</label>
                                    <input type="radio" name="m_type" id="m_type2">
                                    <label for="m_type2">铂金</label>
                                    <br>
                                    <p>
                                        &Delta;说明<br>
                                        &nbsp;黄金:足金、K金(K黄金、K铂金、玫瑰金)<br>
                                        &nbsp;铂金:PT990,PT950,PT900<br>
                                    </p>
                                </div>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-title">
                                *克重
                                <div class="solution-input">
                                    <input class="m_weight" type="number" name="m_weight" required>
                                </div>
                                <br>
                                <p>
                                    &Delta;说明<br>
                                    &nbsp;克重不含配件，如挂绳等，数字精确到小数点后1位，如12.5克<br>
                                </p>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-brand clearfix radio_input">
                                <div class="solution-title">
                                    *纯度
                                </div>
                                <div class="radio_input">
                                    <input type="radio" name="m_purity" id="m_purity1" checked>
                                    <label for="m_purity1">足金(含金量>=99.0%)</label>
                                    <input type="radio" name="m_purity" id="m_purity2">
                                    <label for="m_purity2">18K(含金量75%)</label>
                                    <input type="radio" name="m_purity" id="m_purity3">
                                    <label for="m_purity3">pt990(铂金量99.0%)</label>
                                    <input type="radio" name="m_purity" id="m_purity4">
                                    <label for="m_purity4">pt950(铂金量95.0%)</label>
                                    <input type="radio" name="m_purity" id="m_purity5">
                                    <label for="m_purity5">pt900(铂金量90.0%)</label>
                                </div>
                            </div>
                            <button class="submit_btn" id="submit_m">提交</button>
                        </form>
                    </li>
                </ul>
                <ul>
                    <li style=" padding: 20px 0;">
                        <form>
                            <div class="solution-brand clearfix">
                                <div class="solution-title">
                                    *翡翠颜色
                                </div>
                                <div class="radio_input">
                                    <input type="radio" id="s_color1" name="s_color" />
                                    <label for="s_color1">无色</label>
                                    <input type="radio" id="s_color2" name="s_color" />
                                    <label for="s_color2">白色</label>
                                    <input type="radio" id="s_color3" name="s_color" />
                                    <label for="s_color3">绿色</label>
                                    <input type="radio" id="s_color4" name="s_color"/>
                                    <label for="s_color4">黄色</label>
                                    <input type="radio" id="s_color5" name="s_color" />
                                    <label for="s_color5">紫罗兰</label>
                                    <input type="radio" id="s_color6"  name="s_color" />
                                    <label for="s_color6">红色</label>
                                    <input type="radio" id="s_color7" name="s_color" />
                                    <label for="s_color7">黑色</label>
                                    <input type="radio" id="s_color8" name="s_color" />
                                    <label for="s_color8">蓝水</label>
                                    <input type="radio" id="s_color9" name="s_color" />
                                    <label for="s_color9">油青</label>
                                    <input type="radio" id="s_color10" name="s_color" />
                                    <label for="s_color10">多色</label>
                                </div>
                                <br>
                                <p>
                                    &Delta;说明<br>
                                    &nbsp;请根据宝贝的主要色系选择，带多种颜色请选择多色<br>
                                </p>
                            </div>
                            <span class="hx"></span>
                            <div class="solution-brand clearfix">
                                <div class="solution-title">
                                    *种水地
                                </div>
                                <div class="radio_input">
                                    <input type="radio" id="s_style1" name="s_style" />
                                    <label for="s_style1">玻璃种</label>
                                    <input type="radio" id="s_style2"  name="s_style"/>
                                    <label for="s_style2">高冰种</label>
                                    <input type="radio" id="s_style3"  name="s_style"/>
                                    <label for="s_style3">冰种</label>
                                    <input type="radio" id="s_style4" name="s_style"/>
                                    <label for="s_style4">糯种</label>
                                    <input type="radio" id="s_style5"  name="s_style"/>
                                    <label for="s_style5">瓷地</label>
                                    <input type="radio" id="s_style6"  name="s_style"/>
                                    <label for="s_style6">豆种</label>
                                </div>
                            </div>
                            <br>
                            <p>
                                &Delta;说明<br>
                                &nbsp;如有必要，您可通过强光源(手机闪光灯)观察宝贝的内部结构，根据图例选择最接近的种水<br>
                            </p>
                            <span class="hx"></span>
                            <div class="solution-brand clearfix">
                                翡翠尺寸
                                <div class="solution-input">
                                    <input class="s_size" type="text" name="s_size">
                                </div>
                                <br>
                                <p>
                                    &Delta;如何测量？<br>
                                    &nbsp;吊坠/把件/摆件(长、宽、厚度):6cm*3cm*0.5cm;<br>
                                    &nbsp;手镯(内径):5.8cm<br>
                                    &nbsp;戒指(戒面尺寸):1.5cm*1cm*0.5cm;<br>
                                </p>
                            </div>
                            <span class="hx"></span>
                            <div>
                                <div class="solution-title">
                                    *上传照片
                                </div>
                                <div>
                                    <ul class="upload-ul photo_clearfix stoneUpload" style="display: block;">
                                        <li class="upload-pick">
                                            <div class="webuploader-container photo_clearfix" id="stoneUpload"></div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <button class="submit_btn" id="submit_s">提交</button>
                        </form>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.SuperSlide.2.1.1.js"></script>
<script src="<%=basePath%>js/webuploader.min.js"></script>
<script src="<%=basePath%>js/diyUpload.js"></script>
<script>
    jQuery(".solution-content").slide({});

    $(function(){
        /*珠宝上传*/
        //上传图片
        var $tgaUpload = $('#jewlleryUpload').diyUpload({
            url:'/uploadFilePath',
            success:function( data ) { },
            error:function( err ) { },
            buttonText : '',
            accept: {
                title: "Images",
                extensions: 'gif,jpg,jpeg,bmp,png'
            },
            thumb:{
                width:120,
                height:90,
                quality:100,
                allowMagnify:true,
                crop:true,
                type:"image/jpeg"
            }
        });
        /*手表上传*/

        //上传图片
        var $tgaUpload = $('#watchUpload').diyUpload({
            url:'/uploadFilePath',
            success:function( data ) { },
            error:function( err ) { },
            buttonText : '',
            accept: {
                title: "Images",
                extensions: 'gif,jpg,jpeg,bmp,png'
            },
            thumb:{
                width:120,
                height:90,
                quality:100,
                allowMagnify:true,
                crop:true,
                type:"image/jpeg"
            }
        });


        /*箱包上传*/
        //上传图片
        var $tgaUpload = $('#bagsUpload').diyUpload({
            url:'/uploadFilePath',
            success:function( data ) { },
            error:function( err ) { },
            buttonText : '',
            accept: {
                title: "Images",
                extensions: 'gif,jpg,jpeg,bmp,png'
            },
            thumb:{
                width:120,
                height:90,
                quality:100,
                allowMagnify:true,
                crop:true,
                type:"image/jpeg"
            }
        });
        /*翡翠上传*/
        //上传图片
        var $tgaUpload = $('#stoneUpload').diyUpload({
            url:'/uploadFilePath',
            success:function( data ) { },
            error:function( err ) { },
            buttonText : '',
            accept: {
                title: "Images",
                extensions: 'gif,jpg,jpeg,bmp,png'
            },
            thumb:{
                width:120,
                height:90,
                quality:100,
                allowMagnify:true,
                crop:true,
                type:"image/jpeg"
            }
        });


    });
    $('document').ready(function () {
//        珠宝的点击事件
        $("#submit_j").click(function () {
//        获取品牌
            var j_brand=$(".j_brand").val();
            console.log(j_brand);
//        获取主体材质
            var obj=$("input[name='material']:checked");
            var j_id=obj.attr("id");
            var j_material=$("label[for="+j_id+"]").text();
            console.log(j_material);
//        获取镶嵌材质
            var part_obj=$("input[name='part_material']:checked");
            var j_id1=part_obj.attr("id");
            var j_part_material=$("label[for="+j_id1+"]").text();
            console.log(j_part_material);
//            获取使用情况的值
            var j_usage=parseFloat($("#j_usage").find("option:selected").text());
            console.log(j_usage);
//            获取附件（数组）
            var j_attachment = "";
            var j_id2Arr=[];
            $("input[name='j_attachment']:checked").each(function () {
                j_id2Arr.push($(this).attr("id"));
            });
            for(var i=0;i<j_id2Arr.length;i++){
                $("label[for="+j_id2Arr[i]+"]").each(function () {
                    j_attachment += $(this).text()+","
                });
            }
            console.log(j_attachment);
//            获取购买价格
            var j_premoney=parseFloat($(".j_premoney").val());
            console.log(j_premoney);
//            获取时间
            var j_buytime=$(".j_buytime").val();
            console.log(j_buytime);
//            获取图片
            var j_imgsrc=$(".jewlleryUpload").find("img").attr("src");
            console.log(j_imgsrc);
//            判断价格是否是纯数字
/*             if(document.getElementById("j_premoney").validity.patternMismatch===true){
                $("#j_premoney").setCustomValidity("请输入数字");
            }else{
                $("#j_premoney").setCustomValidity("");
            } */

//            ajax请求
			var formData = new FormData();
			var jimg = document.getElementById("jimg");
			formData.append("jimg",jimg.files[0]);
			formData.append("jbrand",j_brand);
			console.log(formData.get("jimg"));
            $.ajax({
                type:'post',
                url:"<%=basePath%>pawn/jewelleryEvaluation",
                data:formData,
                processData : false,
                contentType : false,
                async:false,
                /* JSON.stringify({
                    jbrand:j_brand,
                    jmaterial:j_material,
                    jinmaterial:j_part_material,
                    jusage:j_usage,
                    jattachment:j_attachment,
                    jpremoney:j_premoney,
                    jbuytime:j_buytime,
                    jImgsrc:j_imgsrc
                }), */
                success: function (data) {
                    alert("提交成功"+data);
                    window.location.href = "<%=basePath%>user/backToMain";
                },
                error:function(XMLHttpRequest, textStatus, errorThrown){
                    console.log("发送失败");
                    console.log(XMLHttpRequest.status); 
               		console.log(XMLHttpRequest.readyState); 
               		console.log(textStatus); 
               		console.log(XMLHttpRequest.responseText); 
                }
            });


//            阻止默认行为
            return false;
        });
//        钻石的点击事件
        $("#submit_d").click(function () {
//            获取钻石形状
            var obj=$("input[name='d_shape']:checked");
            var d_id=obj.attr("id");
            var d_shape=$("label[for="+d_id+"]").text();
            console.log(d_shape);
//            获取克拉区间
           var d_carat=$("#carat").find("option:selected").text();
            console.log(d_carat);
//            获取克拉
            var d_caratWeight=$(".caratWeight").val();
            console.log(d_caratWeight);
//            获取颜色
            var d_color=$(".d_color").find("option:selected").text();
            console.log(d_color);
//            获取钻石净度
            var d_clarity=$(".d_clarity").find("option:selected").text();
//            获得钻石切工
            var obj1=$("input[name='d_cut']:checked");
            var d_id1=obj1.attr("id");
            var d_cut=$("label[for="+d_id1+"]").text();
            console.log(d_cut);
            $.ajax({
                type:'post',
                url:"<%=basePath%>pawn/diamondEvaluation",
                contentType:'application/json',
                data:JSON.stringify({
                    dshape:d_shape,
                    dcarat:d_caratWeight,
                    dcolor:d_color,
                    dclarity:d_clarity,
                    dcut:d_cut
                }),
                success: function (result) {
                    alert("发送成功");
                    window.location.href = "<%=basePath%>user/backToMain";
                },
                error:function(XMLHttpRequest, textStatus, errorThrown){
                    alert("发送失败");
                }
            });
//            阻止默认行为
            return false;
        });
//        手表的点击事件
        $("#submit_w").click(function () {
//            获取手表品牌
            var w_brand=$(".w_brand").val();
//            获取手表款式
            var obj=$("input[name='w_sex']:checked");
            var w_id=obj.attr("id");
            var w_sex=$("label[for="+w_id+"]").text();
            console.log(w_sex);
//            获取手表表体材质
            var obj1=$("input[name='watch_material']:checked");
            var w_id1=obj1.attr("id");
            var w_material=$("label[for="+w_id1+"]").text();
            console.log(w_material);
//            获取使用情况
            var w_usage=$("#w_usage").find("option:selected").text();
            console.log(w_usage);
//            获取附件（数组）
            var w_attachmentArr=[];
            var w_id2Arr=[];
            $("input[name='w_attachment']:checked").each(function () {
                w_id2Arr.push($(this).attr("id"));
            });
            console.log(w_id2Arr);
            for(var i=0;i<w_id2Arr.length;i++){
                $("label[for="+w_id2Arr[i]+"]").each(function () {
                    w_attachmentArr.push($(this).text());
                });
            }
            console.log(w_attachmentArr);
//            获取购买价格
            var w_permoney=$(".w_premoney").val();
            console.log(w_permoney);
//            获取购买时间
            var w_buytime=$(".w_buytime").val();
            console.log(w_buytime);
//            获取图片
            var w_imgsrc=$(".watchUpload").find("img").attr("src");
            console.log(w_imgsrc);

            $.ajax({
                type:'post',
                url:"<%=basePath%>pawn/watchEvaluation",
                contentType:'application/json',
                data:JSON.stringify({
                    wbrand:w_brand,
                    wsex:w_sex,
                    wmaterial:w_material,
                    wusage:w_usage,
                    wattachmentArr:w_attachmentArr,
                    wpermoney:w_permoney,
                    wbuytime:w_buytime,
                    wimgsrc:w_imgsrc
                }),
                success: function (result) {
                    alert("发送成功");
                    window.location.href = "<%=basePath%>user/backToMain";
                },
                error:function(XMLHttpRequest, textStatus, errorThrown){
                    alert("发送失败");
                }
            });
            return false;
        });
//        箱包的点击事件
        $("#submit_b").click(function () {
//            包包品牌
            var b_brand=$(".b_brand").val();
            console.log(b_brand);
//            包包长度
            var b_length=$(".b_length").val();
            console.log(b_length);
//            获取使用情况的值
            var b_usage=$("#b_usage").find("option:selected").text();
            console.log(b_usage);
//            附件（数组）
            var b_attachmentArr=[];
            var b_idArr=[];
            $("input[name='b_attachment']:checked").each(function () {
                b_idArr.push($(this).attr("id"));
            });
            console.log(b_idArr);
            for(var i=0;i<b_idArr.length;i++){
                $("label[for="+b_idArr[i]+"]").each(function () {
                    b_attachmentArr.push($(this).text());
                });
            }
            console.log(b_attachmentArr);
//            获取购买价格
            var b_premoney=$(".b_premoney").val();
            console.log(b_premoney);
//            获取购买时间
            var b_buytime=$(".b_buytime").val();
            console.log(b_buytime);
//            获取图片
            var b_imgsrc=$(".bagsUpload").find("img").attr("src");
            console.log(b_imgsrc);

            $.ajax({
                type:'post',
                url:"<%=basePath%>pawn/bagEvaluation",
                contentType:'application/json',
                data:JSON.stringify({
                    bbrand:b_brand,
                    blength:b_length,
                    busage:b_usage,
                    battachmen:b_attachmentArr,               //需要转成string
                    bpermoney:b_premoney,
                    bbuytime:b_buytime,
                    bimgsrc:b_imgsrc
                }),
                success: function (result) {
                    alert("发送成功");
                    window.location.href = "<%=basePath%>user/backToMain";
                },
                error:function(XMLHttpRequest, textStatus, errorThrown){
                    alert("发送失败");
                }
            });
            return false;

        });
//        金属的点击事件
        $("#submit_m").click(function () {
//        获取金属种类
            var obj=$("input[name='m_type']:checked");
            var m_id=obj.attr("id");
            var m_type=$("label[for="+m_id+"]").text();
            console.log(m_type);
//            获取克重
            var m_weight=$(".m_weight").val();
            console.log(m_weight);
//            获取纯度（数组）
            var m_purityArr=[];
            var m_id1Arr=[];
            $("input[name='m_purity']:checked").each(function () {
                m_id1Arr.push($(this).attr("id"));
            });
            console.log(m_id1Arr);
            for(var i=0;i<m_id1Arr.length;i++){
                $("label[for="+m_id1Arr[i]+"]").each(function () {
                    m_purityArr.push($(this).text());
                });
            }
            console.log(m_purityArr);

            $.ajax({
                type:'post',
                url:"<%=basePath%>pawn/metalEvaluation",
                contentType:'application/json',
                data:JSON.stringify({
                    mtype:m_type,
                    mweight:m_weight,
                    mpurityArr:m_purityArr       //需要转成String
                }),
                success: function (result) {
                    alert("发送成功");
                    window.location.href = "<%=basePath%>user/backToMain";
                },
                error:function(XMLHttpRequest, textStatus, errorThrown){
                    alert("发送失败");
                }
            });
            return false;
        });
//        翡翠玉石的点击事件
        $("#submit_s").click(function () {
 //            获取翡翠颜色
            var obj=$("input[name='s_color']:checked");
            var s_id=obj.attr("id");
            var s_color=$("label[for="+s_id+"]").text();
            console.log(s_color);
//            获取翡翠种水地
            var obj1=$("input[name='s_style']:checked");
            var s_id1=obj1.attr("id");
            var s_style=$("label[for="+s_id1+"]").text();
            console.log(s_style);
//            获取翡翠尺寸
            var s_size=$(".s_size").val();
            console.log(s_size);
//            获取图片
            var s_imgsrc=$(".stoneUpload").find("img").attr("src");
            console.log(s_imgsrc);
            $.ajax({
                type:'post',
                url:"<%=basePath%>pawn/stoneEvaluation",
                contentType:'application/json',
                data:JSON.stringify({
                    scolor:s_color,                    //没有这个字段
                    sstyle:s_style,
                    ssize:s_size,                     //需要转成double
                    simgsrc:s_imgsrc
                }),
                success: function (result) {
                    alert("发送成功");
                    window.location.href = "<%=basePath%>user/backToMain";
                }, 
                error:function(XMLHttpRequest, textStatus, errorThrown){
                    alert("发送失败");
                }
            });

            return false;
        })
    });

</script>
</body>
</html>