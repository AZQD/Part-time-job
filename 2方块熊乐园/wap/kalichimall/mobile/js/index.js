function deviceType() {
    for (var e = new Array("Android", "iPhone", "Windows Phone", "iPod", "BlackBerry", "MeeGo", "SymbianOS"), i = navigator.userAgent, n = e.length, s = 0; n > s; s++)
        if (i.indexOf(e[s]) >= 0) return "isMobile";
    return "isPC"
}
//    alert(deviceType());
if(deviceType() == 'isMobile'){
//        window.location.href = 'mobile/index.html';
}else if(deviceType() == 'isPC'){
    window.location.href = '../WEB/index.html';
}


$(function(){

    //积分面板
    $('.showPointBox .showPoint .close, .showPointBox .showPoint .ok').unbind('click').click(function(){
       $('.showPointBox').hide();
        $('body, html').css('overflow', 'auto');
        //新增：提示一天登陆一次奖励一个积分
        setCookie('indexShowJiFenBox', 1, 1);
    });

    //跳转到积分兑换界面
    $('.showPointBox .showPoint .desc2').unbind('click').click(function(){
        window.location.href = 'pre-sales.html';
        //新增：提示一天登陆一次奖励一个积分
        setCookie('indexShowJiFenBox', 1, 1);
    });

    
    //跳转到积分页面
    $('.headerBox .left .shopping').unbind('click').click(function(){
       window.location.href = 'pre-sales.html';
    });


    //增加跑马灯
    //getmarquee
    $.ajax({
        type: "get",
        url: baseUrl+"/apigateway/getmarquee",
        dataType:"json",
        success: function(data){
            if(data.status ==200){
                console.log('getmarquee',data);
                $('#aboutmarquee').html(data.data);
            }

        },
        error:function(error){
            console.log(error);
        }
    });




    //重点：点击除div之外的任意位置隐藏div
    $(document).unbind('click').click(function(){
        $('.classifyBox').slideUp();//类别列表
        $('.headerBox .indexMiddle .addressUl').slideUp();//地址列表
    });

    //.headerBox .indexMiddle .address2
    $('.headerBox .indexMiddle .search').unbind('click').click(function(){
        window.location.href = 'search.html';
    });

    //新增
    /*//产品分类显示
     $.ajax({
     type: "get",
     url: baseUrl+"/apigateway/categorys",
     dataType:"json",
     success: function(data){
     if(data.status == 200){
     data = JSON.parse(data.data);
     console.log("获得产品分类",data);

     for(var i=0; i<data.length; i++){

     var firstStr = '<span class="eachClassName" cid='+data[i].cid+' cidName='+data[i].name+'>'+data[i].name+'</span>'+':';
     var secondStr = '';
     for(var j=0; j<data[i].sub.length; j++){
     secondStr+='<span class="eachClassName" cid='+data[i].sub[j].cid+' cidName='+data[i].sub[j].name+'>'+data[i].sub[j].name+'</span>';
     }
     $('.classifyBox').append('' +
     '<div class="col-xs-12 col-sm-12 eachClass">'+firstStr+secondStr+'</div>');
     }


     $('.classifyBox .eachClass').eq(1).children().css('color','#FF4F0D');

     $('.headerBox .left .sort').unbind('click').click(function(ev){
     ev.stopPropagation();
     $('.classifyBox').slideToggle();
     $('.headerBox .indexMiddle .addressUl').slideUp();//地址列表
     /!*if($('.classifyBox').is(":visible")){
     $('.swiper-container').css('marginTop',0);
     }else{
     $('.swiper-container').css('marginTop','2.5rem');
     }*!/
     });


     //点击事件
     $('.classifyBox .eachClass .eachClassName').unbind('click').click(function(){
     window.localStorage.setItem('mobileCidName', $(this).attr('cidName'));
     window.location.href = 'category.html?searchOrTab=tab&cid='+$(this).attr('cid');
     });

     }else{
     commonPopFun1(data.msg, 'Failed');
     }
     },
     error:function(error){
     console.log(error);
     }

     });*/


    //产品分类显示
    $.ajax({
        type: "get",
        url: baseUrl + "/apigateway/categorys",
        dataType: "json",
        success: function (data) {
            if (data.status == 200) {
                data = JSON.parse(data.data);
                console.log("获得产品分类", data);

                for (var i = 0; i < data.length; i++) {
                    var secondStr = '';
                    for (var j = 0; j < data[i].sub.length; j++) {
                        secondStr += '<span class="secondName" cid=' + data[i].sub[j].cid + ' cidName=' + data[i].sub[j].name + '>' + data[i].sub[j].name + '</span>';
                    }
                    $('.classifyBox').append('' +
                        '<div class="classifyLi">' +
                        '<div class="col-xs-3 col-sm-3 firstName" cid=' + data[i].cid + ' cidName=' + data[i].name + '>' + data[i].name + '</div>' +
                        '<div class="col-xs-9 col-sm-9 secondNames">' +
                        secondStr +
                        '</div>' +
                        '</div>');
                }
                $('.classifyBox .classifyLi').eq(1).children().css('color', '#FF4F0D');

                $('.headerBox .left .sort').unbind('click').click(function(ev){
                    ev.stopPropagation();
                    $('.classifyBox').slideToggle();
                    $('#test').slideToggle();
                    $('.headerBox .indexMiddle .addressUl').slideUp();//地址列表
                });

                //点击事件
                $('.classifyBox .classifyLi .firstName,.classifyBox .classifyLi .secondName').unbind('click').click(function () {
                    window.localStorage.setItem('mobileCidName', $(this).attr('cidName'));
                    window.location.href = 'category.html?searchOrTab=tab&cid=' + $(this).attr('cid');
                });


            } else {
                commonPopFun1(data.msg, 'Failed');
            }
        },
        error: function (error) {
            console.log(error);
        }

    });








//        addToHomescreen();

    addToHomescreen({
//        startDelay: 5, //开始的间隔
//        skipFirstVisit: true, //首次跳过出现
//            maxDisplayCount: 20 //最多出现次数
    });

    //显示地址列表
    var areaId = localStorage.getItem("areaId");
    var areaName = localStorage.getItem("areaName");
    $.ajax({
        type:'get',
        url:baseUrl+"/apigateway/areas",
        success:function(data){
            if (data.status == 200){
                data = JSON.parse(data.data);
                console.log("获得区域信息", data);
                var areaIdArr = [];
                var areaNameArr = [];
                for (var areas in data){
                    areaIdArr.push(data[areas].id);
                    areaNameArr.push(data[areas].name);
                }
                console.log(areaNameArr);
                console.log(areaIdArr);
                if(areaId == null){
                    localStorage.setItem('areaId', areaIdArr[0]);
                    localStorage.setItem('areaName', areaNameArr[0]);
//                        $('.headerBox .indexMiddle .address').html(areaNameArr[0]);
                }else{
//                        $('.headerBox .indexMiddle .address').html(areaName);
                }

                //动态添加addressUl
                for(var i=0; i<areaNameArr.length; i++){
                    $('.headerBox .indexMiddle .addressUl').append('<li class="addressLi">'+areaNameArr[i]+'</li>');
                }

                //点击地址
                $('.headerBox .indexMiddle .address').unbind('click').click(function(ev){
                    ev.stopPropagation();
                    $('.headerBox .indexMiddle .addressUl').slideToggle();
                    $('.classifyBox').slideUp();//类别列表
                });



                //选择地址
                $('.headerBox .indexMiddle .addressUl .addressLi').unbind('click').click(function(){
                    var index = $(this).index();
                    localStorage.setItem('areaId', areaIdArr[index]);
                    localStorage.setItem('areaName', areaNameArr[index]);
//                        $('.headerBox .indexMiddle .address').html(areaNameArr[index]);
                    $('.headerBox .indexMiddle .addressUl').hide();

                    if($('.recentOrNear .aboutNearBy').hasClass('active')){
                        nearFun();
                    }

                });

                //不显示默认地址(空字符串)
                $('.headerBox .indexMiddle .addressUl .addressLi').each(function(index){
                    if($('.headerBox .indexMiddle .addressUl .addressLi').eq(index).html() == ''){
                        $(this).hide();
                        $('.headerBox .indexMiddle .addressUl .addressLi').eq(index-1).css('borderBottom','1px solid #999');
                    }
                });

            }else{
                commonPopFun1(data.msg, 'Failed');
            }
        },
        error:function(error){
            console.log(error);
        }
    });

    //获得banner
    $.ajax({
        type: "get",
        url: baseUrl + "/apigateway/getbanner?gname=mobile-index-top-middle",
        success: function (data) {
            if (data.status == 200) {
                data = JSON.parse(data.data);
                console.log("获得banner",data);
                for(var i=0; i<data.length; i++){
                    $('.swiper-container .swiper-wrapper').append(
                        '<div class="col-xs-12 col-sm-12 swiper-slide">' +
                        '<a href="#" hrefs='+data[i].target+'><img src='+data[i].imgsrc+' cid='+data[i].cid+'></a>' +
                        '</div>'
                    );
                }
                $('.swiper-container .swiper-wrapper .swiper-slide').unbind('click').click(function(){
                    window.location.href = $(this).children('a').attr('hrefs');
                });
                //bannerBox：轮播图
                var mySwiper = new Swiper ('.swiper-container', {
                    direction: 'horizontal',//水平滑动
                    loop: true, //循环播放
                    autoplay: 2000, //自动播放
                    autoplayDisableOnInteraction: false, //用户操作swiper之后，是否禁止autoplay。默认为true：停止。
                    pagination: '.swiper-pagination',  // 分页器
                    speed: 2000
                });
            }else {
                commonPopFun1(data.msg, 'Failed');
            }
        },
        error:function(error){
            console.log(error);
        }
    });

    //getbestgoods
    $.ajax({
        type: "get",
        url: baseUrl + "/apigateway/getbestgoods?n=4",
        success: function (data) {
            if (data.status == 200) {
                data = JSON.parse(data.data);
                console.log("getbestgoods", data);
                var imgsLength = data.length;
                if(imgsLength>4){
                    imgsLength = 4;
                }
                for(var i=0; i<imgsLength; i++){
                    $('.bestGoods .imgsBox').append(
//                            '<div class="col-xs-3 col-sm-3 imgBox"><img src='+baseUrl+data[i].cimg+' id='+data[i].id+'></div>'
                        '<div class="col-xs-3 col-sm-3 imgBox" id='+data[i].id+' style="background: url('+baseImgSrc+data[i].cimg+') no-repeat center center;background-size:100% auto;">' +
                        '</div>'
                    );
                }
                $('.bestGoods .imgsBox .imgBox').unbind('click').click(function(){
                    var index = $(this).index();
                    window.location.href = 'detail.html?id='+$(this).attr('id');
                });
            } else {
                commonPopFun1(data.msg, 'Failed');
            }
        },
        error:function(error){
            console.log(error);
        }
    });

    //HOT
    hotFun();
    function hotFun(){
        $.ajax({
            type: "get",
            url: baseUrl + "/apigateway/gethotgoods?n=",
            success: function (data) {
                if (data.status == 200) {
                    data = JSON.parse(data.data);
                    console.log("gethotgoods", data);

                    var needLength = data.length;
                    if(needLength>3){
                        if(needLength%3==1){
                            needLength = needLength - 1;
                        }else if(needLength%3==2){
                            needLength = needLength - 2;
                        }
                    }

                    $('.recentOrNear .getList').empty();
                    for(var i=0; i<needLength; i++){
                        var price = data[i].price;
                        if(price == 0){
                            price = 'Negotiated';
                        }
                        $('.recentOrNear .getList').append(
                            '<li class="col-xs-4 col-sm-4 getLi" id='+data[i].id+' style="background: url('+baseImgSrc+data[i].cimg+'/'+20+') no-repeat center center;background-size:100% auto;">' +
//                                    '<img src='+baseImgSrc+data[i].cimg+' id='+data[i].id+'><p class="price"><span>'+price+'</span></p>' +
                            '<p class="price"><span>'+price+'</span></p>' +
                            '</li>'
                        );
                        $('.recentOrNear .getList .getLi').unbind('click').click(function(){
                            var index = $(this).index();
                            window.location.href = 'detail.html?id='+$(this).attr('id');
                        });
                    }
                } else {
                    commonPopFun1(data.msg, 'Failed');
                }
            },
            error:function(error){
                console.log(error);
            }
        });
    }


    //recentOrNear
    function recentFun(){
        $.ajax({
            type: "get",
            url: baseUrl + "/apigateway/getgoods?n=",
            success: function (data) {
                if (data.status == 200) {
                    data = JSON.parse(data.data);
                    console.log("recently", data);
                    console.log("recently", data.length);

                    var needLength = data.length;
                    if(needLength>3){
                        if(needLength%3==1){
                            needLength = needLength - 1;
                        }else if(needLength%3==2){
                            needLength = needLength - 2;
                        }
                    }

                    $('.recentOrNear .getList').empty();
                    for(var i=0; i<needLength; i++){
                        var price = data[i].price;
                        if(price == 0){
                            price = 'Negotiated';
                        }
                        $('.recentOrNear .getList').append(
                            '<li class="col-xs-4 col-sm-4 getLi" id='+data[i].id+' style="background: url('+baseImgSrc+data[i].cimg+') no-repeat center center;background-size:100% auto;">' +
//                                    '<img src='+baseImgSrc+data[i].cimg+' id='+data[i].id+'><p class="price"><span>'+price+'</span></p>' +
                            '<p class="price"><span>'+price+'</span></p>' +
                            '</li>'
                        );
                        $('.recentOrNear .getList .getLi').unbind('click').click(function(){
                            var index = $(this).index();
                            window.location.href = 'detail.html?id='+$(this).attr('id');
                        });
                    }
                } else {
                    commonPopFun1(data.msg, 'Failed');
                }
            },
            error:function(error){
                console.log(error);
            }
        });
    }

    function nearFun(){
        var areaId = localStorage.getItem("areaId");
        var areaName = localStorage.getItem("areaName");
        $.ajax({
            type: "get",
            url: baseUrl + "/apigateway/getgoods?areaid="+areaId +'&n=',
            success: function (data) {
                if (data.status == 200) {
                    data = JSON.parse(data.data);
                    console.log("nearly", data);

                    var needLength = data.length;
                    if(needLength>3){
                        if(needLength%3==1){
                            needLength = needLength - 1;
                        }else if(needLength%3==2){
                            needLength = needLength - 2;
                        }
                    }
                    $('.recentOrNear .getList').empty();
                    for(var i=0; i<needLength; i++){
                        var price = data[i].price;
                        if(price == 0){
                            price = 'Negotiated';
                        }
                        $('.recentOrNear .getList').append(
                            '<li class="col-xs-4 col-sm-4 getLi" id='+data[i].id+' style="background: url('+baseImgSrc+data[i].cimg+') no-repeat center center;background-size:100% auto;">' +
//                                    '<img src='+baseImgSrc+data[i].cimg+' id='+data[i].id+'><p class="price"><span>'+price+'</span></p>' +
                            '<p class="price"><span>'+price+'</span></p>' +
                            '</li>'
                        );
                        $('.recentOrNear .getList .getLi').unbind('click').click(function(){
                            var index = $(this).index();
                            window.location.href = 'detail.html?id='+$(this).attr('id');
                        });
                    }
                } else {
                    commonPopFun1(data.msg, 'Failed');
                }
            },
            error:function(error){
                console.log(error);
            }
        });
    }

    //recentOrNear切换
    $('.recentOrNear .title').unbind('click').click(function(){
//            $('.recentOrNear .getList').empty();
        var index = $(this).index();
        $('.recentOrNear .title').removeClass('active').eq(index).addClass('active');
        if(index == 0){
            hotFun();
        }else if(index == 1){
            recentFun();
        }else{
            nearFun();
        }
    });
});