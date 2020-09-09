/**
 * Created by TY on 2019/9/6.
 */
jQuery(".solution-content").slide({});
$('document').ready(function () {

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
        var j_usage=$("#j_usage").find("option:selected").text();
        console.log(j_usage);
//            阻止默认行为
        return false;
    })
});

