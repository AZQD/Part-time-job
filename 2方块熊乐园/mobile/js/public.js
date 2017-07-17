var baseUrl = "http://www.kalichimall.com:81";
var baseImgSrc = baseUrl+"/gimg/";
function getParamByUrl(paramKey){
  var url=window.location.search.substring(1);
  var arr=url.split("&");
  var result=[];
  for(var i=0;i < arr.length;i++){ 
      var param=arr[i].split("=");
      if(paramKey == param[0]){
        if(paramKey=="webver"){
          return  parseInt(param[1]);
        }
        return  param[1];
      }
  }
   return "false";
}
function removeParamByUrl(paramKey){
  var url=window.location.search.substring(1);
  var arr=url.split("&");
  var result=[];
  var str='?';
  for(var i=0;i < arr.length;i++){ 
      var param=arr[i].split("=");
      if(paramKey != param[0]){
        str+='&'+param[0]+'='+param[1];
        //return  param[1];
      }
  }
  return str;
}
function getCookie(c_name){
    if (document.cookie.length>0){
        c_start=document.cookie.indexOf(c_name + "=");
        if (c_start!=-1){ 
            c_start=c_start + c_name.length+1 ;
            c_end=document.cookie.indexOf(";",c_start)
            if (c_end==-1)
            c_end=document.cookie.length;
            return unescape(document.cookie.substring(c_start,c_end));
        } 
    }
    return "";
}
function setCookie(c_name,value,expiredays){
    var exdate=new Date();
    exdate.setDate(exdate.getDate()+expiredays);
    document.cookie=c_name+ "=" +escape(value)+((expiredays==null) ? "" : ";expires="+exdate.toGMTString());
}
//设置带路径的cookie
function setCookiePath(c_name,value,expiredays,path){
    var exdate=new Date();
    exdate.setDate(exdate.getDate()+expiredays);
    document.cookie=c_name+ "=" +escape(value)+((expiredays==null) ? "" : ";expires="+exdate.toGMTString())+'; path='+path;
}
function delCookie(name){
  var exp = new Date();
  exp.setTime(exp.getTime() - 1);
  var cval=getCookie(name);
  if(cval!=null)
  document.cookie= name + "="+cval+";expires="+exp.toGMTString();
}
function strToJson(str){
//var json = eval('(' + str + ')');
  if(typeof(str)=='string'){
    var json = eval('(' + str + ')');
  }
  else{
    var json = str;
  }
  return json;
}




function escapeContent(str){
    /*str=str.replace(/<br\s*\/?>/g, "\n");*/
    str=str.replace(/\%25/g, "%");
    str=str.replace(/\%26/g, "&");
    str=str.replace(/\%2B/g, "+");
    str=str.replace(/\%23/g, "#");
    return str;
}
var loadingTime1;
var loadingTime2;
function loading(){
  //loading动画
  var loadingIndex=1;
  loadingTime=setInterval(function(){
    if(loadingIndex==$(".loading-point").length){
      loadingIndex=0;
    }
    $(".loading-point").removeClass("loading-point-active");
    $(".loading-point").eq(loadingIndex).addClass("loading-point-active");
    loadingIndex++; 
  },300);
}
function loading2(){
  //loading动画
  var loadingIndex2=1;
  loadingTime2=setInterval(function(){
    if(loadingIndex2==$(".loading-point2").length){
      loadingIndex2=0;
    }
    $(".loading-point2").removeClass("loading-point-active2");
    $(".loading-point2").eq(loadingIndex2).addClass("loading-point-active2");
    loadingIndex2++; 
  },300);
}
function stopLoading(){

  $(".loading-load").css("display","none");
  clearInterval(loadingTime);
}
function stopLoading2(){
  $(".loading-load2").css("display","none");
  clearInterval(loadingTime2);
}

//commonPopBox1:第一种弹窗//提示信息，标题；
function commonPopFun1(dataMsg, title){
    $('.commonPopBox1').show();
    $('.commonPopBox1 .commonPop .title').html(title);
    $('.commonPopBox1 .commonPop .detailTip').html(dataMsg);
    if($('.commonPopBox1').is(':visible')){
        $('body').css('overflow', 'hidden');
    }
    $('.commonPopBox1 .commonPop .confirmBox .confirmBtn').unbind('click').click(function(){
        $('.commonPopBox1').hide();
        $('body').css('overflow', 'auto');
    });
}

//commonPopBox2:第二种弹窗：//提示信息，标题，左边按钮名称，右边按钮名称，左边函数名，右边函数名；
function commonPopFun2(dataMsg, title, leftBtnName, rightBtnName, fun1, fun2){
    $('.commonPopBox2').show();
    $('.commonPopBox2 .commonPop .title').html(title);
    $('.commonPopBox2 .commonPop .detailTip').html(dataMsg);
    if($('.commonPopBox2').is(':visible')){
        $('body').css('overflow', 'hidden');
    }
    $('.commonPopBox2 .commonPop .confirmBox .confirmBtn1').html(leftBtnName).unbind('click').click(function(){
        fun1();
        $('.commonPopBox2').hide();
        $('body').css('overflow', 'auto');
    });
    $('.commonPopBox2 .commonPop .confirmBox .confirmBtn2').html(rightBtnName).unbind('click').click(function(){
        fun2();
        $('.commonPopBox2').hide();
        $('body').css('overflow', 'auto');
    });
}

//favicon
$('.favicon').attr('href', 'image/favicon.ico');

var token = localStorage.getItem("token");
var timestamp=new Date().getTime();//获取时间戳

//判断用户是否登录
var userInfo;
if(token == null){
    console.log("用户未登陆（没有token）");
}else{
    var authInfo = {
        "token":token,
        "timestamp":timestamp
    };
    $.ajax({
        type: "POST",
        url: baseUrl + "/apigateway/getuserinfo",
        dataType:"json",
        data:JSON.stringify(authInfo),
        success: function(data){
            if(data.status == 200){//用户已登陆
                data = JSON.parse(data.data);
                userInfo = data;
                console.log("用户已登陆");
                console.log("获得用户信息",userInfo);

                //显示logout按钮
                $('.headerBox .right .logout').show().unbind('click').click(function(){
                    localStorage.removeItem('token');
                   window.location.reload();
                });

                //index.html:显示登录或者profile
                $('.infos .signInUp').hide();
                $('.infos .profile').show();

            }else if(data.status == 501){//token失效
                console.log("用户未登陆（token过期）", data);
            }else {
                console.log("登录失败",data);
            }
        },
        error:function(error){
            console.log(error);
        }
    });
}

//头部logo
$('.headerBox .left .logo').unbind('click').click(function(){
    window.location.href = 'index.html';
});
//头部搜索按钮
$('.headerBox .right .search').unbind('click').click(function(){
   window.location.href = 'search.html';
});
