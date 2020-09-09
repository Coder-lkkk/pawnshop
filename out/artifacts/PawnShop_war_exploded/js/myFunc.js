/**
 * Created by TY on 2019/5/18.
 */
/**
 * 获取滚动的头部距离和左边距离
 * scroll().top scroll().left
 */
function scroll(){
    if (window.pageYOffset !== null){
        return {
            top:window.pageYOffset,
            left:window.pageXOffset
        }
    }else if (document.compatMode === "CSS1Compat"){
        return{
            top:document.documentElement.scrollTop,
            left:document.documentElement.scrollLeft
        }
    }
    return{
        top:document.body.scrollTop,
        left:document.body.scrollLeft
    }
};

function $(id){
    return typeof id==="string"?document.getElementById(id):null;
};

/**
 * 获取屏幕的宽度和高度
 * @returns {*}
 */
function client(){
    if(window.innerWidth){ //针对IE9和最新浏览器
        return{
            width:window.innerWidth,
            height:window.innerHeight
        }
    }else if(document.compatMode==="CSS1Compat"){//遵循W3C标准
        return{
            width:document.documentElement.clientWidth,
            height:document.documentElement.clientHeight
        }
    }
    return{
        width:document.body.clientWidth,
        height:document.body.clientHeight
    }
}


/**
 * 获取外部样式和页内样式和行内样式
 * @param obj
 * @param attr
 * @returns {*}
 */
function getCssStyleValue(obj,attr){
    if(obj.currentStyle){  //IE和opera
        return obj.currentStyle[attr];
    }else{
        return window.getComputedStyle(obj,null)[attr];
    }
}

/*
 * buffer(box,json:{"left":800,"top":400});
 * buffer为动画
 * @param obj
 * @param json
 */
/**
 * fn 为回调函数 buffer(box,json:{"left":800,"top":400},function(){buffer()};
 * @param obj
 * @param json
 * @param fn
 */
function buffer(obj,json,fn){
//   1.1清除定时器
    clearInterval(obj.timer);
//    1.2设置定时器
    var begin= 0,target= 0,speed=0;
    obj.timer=setInterval(function(){
        //1.3.0旗帜 标识是否清除定时器
        var flag=true;
        for(var key in json){
            //    1.3.1获取初始值
            //设置透明度
            if("opacity"===key){
                begin=Math.round(parseFloat(getCssStyleValue(obj,key))*100) || 100;
                target=parseInt(json[key]*100);
            }else if("scrollTop"===key){
                begin=Math.ceil(obj.scrollTop);
                target=parseInt(json[key]);
            }else{//其他情况
                begin=parseInt(getCssStyleValue(obj,key)) || 0;
                target=parseInt(json[key]);
            }
            //    1.3求出步长
            speed = (target-begin)*0.2;
            //    判断是否向上取整(往右走和返回的时候，返回的时候向下取整)
            speed=(target>begin)?Math.ceil(speed):Math.floor(speed);
            //    1.4动起来
            if ("opacity"===key){
                //w3c浏览器
                obj.style.opacity=(begin+speed)/100;
                obj.style.filter='alpha(opacity:'+(begin+speed)+')';
            }else if ("scrollTop"===key) {
                obj.scrollTop=begin+speed;
            }else{
                obj.style[key]=begin+speed+"px";
            }
            //    1.5判断
            if(begin !==target){
                flag=false;
            }
        }
        //    清除定时器
        if(flag){
            clearInterval(obj.timer);

            //判断有没有回调函数
            if(fn){
                fn();
            }
        }
    },20);
}


///**
// * 封装基本缓动动画--单值
// * @param obj
// * @param target
// */
//function buffer(obj,attr,target){
////   1.1清除定时器
//    clearInterval(obj.timer);
////    1.2设置定时器
//    obj.timer=setInterval(function(){
//        //    1.3.1获取初始值
//        var begin=parseInt(getCssStyleValue(obj,attr));
//        //    1.3求出步长
//        var speed = (target-begin)*0.2;
//        //    判断是否向上取整(往右走和返回的时候，返回的时候向下取整)
//        speed=(target>begin)?Math.ceil(speed):Math.floor(speed);
//        //    1.4动起来
//        obj.style[attr]=begin+speed+"px";
//        obj.innerText=begin;
//        //    1.5判断
//        if(begin===target){
//            clearInterval(obj.timer);
//        }
//    },20);
//}
//
///**
// * 封装基本缓动动画--多值
// * @param obj
// * @param target
// */
///**
// * buffer(box,json:{"left":800,"top":400});
// * buffer为动画
// * @param obj
// * @param json
// */
//function buffer(obj,json){
////   1.1清除定时器
//    clearInterval(obj.timer);
////    1.2设置定时器
//    var begin= 0,target= 0,speed=0;
//    obj.timer=setInterval(function(){
//        //1.3.0旗帜 标识是否清除定时器
//        var flag=true;
//        for(var key in json){
//            //    1.3.1获取初始值
//            begin=parseInt(getCssStyleValue(obj,key)) || 0;
//            target=parseInt(json[key]);
//            //    1.3求出步长
//            speed = (target-begin)*0.2;
//            //    判断是否向上取整(往右走和返回的时候，返回的时候向下取整)
//            speed=(target>begin)?Math.ceil(speed):Math.floor(speed);
//            //    1.4动起来
//            obj.style[key]=begin+speed+"px";
//            //    1.5判断
//            if(begin !==target){
//                flag=false;
//            }
//        }
//        //    清除定时器
//        if(flag){
//            clearInterval(obj.timer);
//        }
//    },20);
//}