// JavaScript Document
//运动框架
function move(obj,json,sv,fnEnd){
  //取CSS样式值
  function getStyle(obj,attr){
    if(obj.currentStyle) {return obj.currentStyle[attr];}
    else {return getComputedStyle(obj,false)[attr];}
  }
  //运动开始     
  clearInterval(obj.timer);
  obj.timer=setInterval(function(){
    var isAllCompleted=true; //假设全部运动都完成了
    for(attr in json){
    var attrValue=0;
      switch(attr){
        case 'opacity':
        attrValue=Math.round(parseFloat(getStyle(obj,attr))*100);break;
        default:
        attrValue=parseInt(getStyle(obj,attr));
      }
      //如果没有传入sv，则为4
      var speed=(json[attr]-attrValue)/(sv||4);
      speed=speed>0?Math.ceil(speed):Math.floor(speed);
      //如果循环过程中存在尚未结束的运动，isAllCompleted为假
      if(attrValue!=json[attr]) isAllCompleted=false;
      switch(attr){
        case 'opacity': {
          obj.style.filter="alpha(opacity="+(attrValue+speed)+")";
          obj.style.opacity=(attrValue+speed)/100;
        }; break;
        default:obj.style[attr]=attrValue+speed+'px';
      }         
    }//for in end!
    //所有循环结束后，只有当全部运动结束后（isAllCompleted=true）时才关闭定时器
    if(isAllCompleted){
      clearInterval(obj.timer);
      if(fnEnd) fnEnd();
    } 
  },30);
}//move() end !