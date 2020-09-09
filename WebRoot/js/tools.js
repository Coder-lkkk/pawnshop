
function getStyle(obj,attr){
	return obj.currentStyle ? obj.currentStyle[attr] : window.getComputedStyle(obj,null)[attr];
}

function animate(obj,json,fn){
	clearInterval(obj.timer);
	obj.timer=setInterval(function(){
		var bool=true;
		for(var k in json){
			var leader;
			if (k=='opacity') {
				if (getStyle(obj,k)==undefined) {
					leader=100;
				}else {
					leader=parseInt(getStyle(obj,k)*100);
				}
			}else {
				leader=parseInt(getStyle(obj,k)) || 0;
			}
			var step=(json[k]-leader)/10;
			step=step>0?Math.ceil(step):Math.floor(step);
			leader=leader+step;
			if(k=='zIndex'){
				obj.style[k]=json[k];
			}else if(k=='opacity'){
				obj.style[k]=leader/100;
				obj.style.filter='alpha(opacity='+leader+')';
			}else {
				obj.style[k]=leader+'px';
			}
			if(json[k]!=leader){
				bool=false;
			}
		}
		if(bool){
			clearInterval(obj.timer);
			if (fn) {
				fn();
			}
		}
	},10);
}
