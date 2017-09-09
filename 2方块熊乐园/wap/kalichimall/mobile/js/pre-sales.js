$(function(){

    //点击购物车图片弹出
    $('.shopCartBox').unbind('click').click(function(){
        $('.tableBox').slideToggle();
    });

    //点击搜索
    $('.headerBox .right #preSalesSearchBtn').unbind('click').click(function(){
        var searchKeyWord = $.trim($('.headerBox .right #preSalesIpt').val());
       if(searchKeyWord != ''){
           //localStorage.setItem('searchOrTab',"search");
           //localStorage.setItem('searchKeyWord',searchKeyWord);
           //window.location.href = "category.html?searchOrTab=search&searchKeyWord="+searchKeyWord;
       }
    });


    //重点：点击除div之外的任意位置隐藏div
    $(document).unbind('click').click(function(){
        $('.classifyBox').slideUp();//分类列表
        //$('.toggleSortBox .toggleList .hotUl').slideUp();//hot列表
        //$('.toggleSortBox .toggleList .newUl').slideUp();//new列表
        //$('.toggleSortBox .toggleList .pricesUl').slideUp();//price列表
    });

    /*//点击hot列表
    $('.toggleSortBox .toggleSort .hotTab').unbind('click').click(function(ev){
        ev.stopPropagation();
        $('.classifyBox').slideUp();//分类列表
        $('.toggleSortBox .toggleList .hotUl').slideToggle();//hot列表
        $('.toggleSortBox .toggleList .newUl').slideUp();//new列表
        $('.toggleSortBox .toggleList .pricesUl').slideUp();//price列表
    });

    //点击new列表
    $('.toggleSortBox .toggleSort .newTab').unbind('click').click(function(ev){
        ev.stopPropagation();
        $('.classifyBox').slideUp();//分类列表
        $('.toggleSortBox .toggleList .hotUl').slideUp();//hot列表
        $('.toggleSortBox .toggleList .newUl').slideToggle();//new列表
        $('.toggleSortBox .toggleList .pricesUl').slideUp();//price列表
    });

    //点击price列表
    $('.toggleSortBox .toggleSort .pricesTab').unbind('click').click(function(ev){
        ev.stopPropagation();
        $('.classifyBox').slideUp();//分类列表
        $('.toggleSortBox .toggleList .hotUl').slideUp();//hot列表
        $('.toggleSortBox .toggleList .newUl').slideUp();//new列表
        $('.toggleSortBox .toggleList .pricesUl').slideToggle();//price列表
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

                $('.headerBox .right #preSalesSort').unbind('click').click(function(ev){
                    ev.stopPropagation();
                    $('.classifyBox').slideToggle();//分类列表
                    /*$('.toggleSortBox .toggleList .hotUl').slideUp();//hot列表
                    $('.toggleSortBox .toggleList .newUl').slideUp();//new列表
                    $('.toggleSortBox .toggleList .pricesUl').slideUp();//price列表*/
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
});