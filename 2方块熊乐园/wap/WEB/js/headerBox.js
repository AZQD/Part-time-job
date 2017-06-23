if(token == null){//用户未登陆
    console.log("用户未登陆（没有token）");
    $('.headerBox .header .headerRight1').show();
    $('.headerBox .header .headerRight .login, .headerBox .header .headerRight .register').unbind('click').click(function(){
        window.location.href = "login.html";
    });
}else{
    var authInfo = {
        "token":token,
        "timestamp":timestamp
    };
    $.ajax({
        type:"POST",
        url:baseUrl + "/apigateway/getuserinfo",
        dataType:"json",
        data:JSON.stringify(authInfo),
        success:function(data){
            //console.log(data);
            if(data.status == 200){//用户已登陆
                data = JSON.parse(data.data);
                console.log("获得用户信息",data);
                console.log("用户已登陆");
                $('.headerBox .header .headerRight2').show();
//                        $('.headerBox .header .headerRight .headImgBox .headImg').show().attr('src',baseUrl+"/"+data.logo);
                $('.headerBox .header .headerRight .headImgBox .headImg').show().attr('src',"http://www.kalichimall.com//static/img/default.png");
                $('.headerBox .header .headerRight .name').html(data.nickname);
                $('.headerBox .header .headerRight .headImgBox').unbind('click').click(function(){
                    window.location.href = "manage.html";
                });
                $('.headerBox .header .headerRight .logout').unbind('click').click(function(){//删除token，刷新页面；
//                            delCookie('token');
                    localStorage.removeItem("token");
                    window.location.reload();
                });
            }else if(data.status == 501){//token失效
                console.log("用户未登陆（token过期）");
                $('.headerBox .header .headerRight1').show();
                $('.headerBox .header .headerRight .login, .headerBox .header .headerRight .register').unbind('click').click(function(){
                    window.location.href = "login.html";
                });

            }else{
                alert(data.msg);
            }
        },
        error:function(error){
            console.log(error);
        }
    });
}


//获得区域信息
$.ajax({
    type: "get",
    url: baseUrl+"/apigateway/areas",
    dataType:"json",
    success: function(data){
//                    console.log(data);
        if (data.status == 200) {
            data = JSON.parse(data.data);
            console.log("获得区域信息", data);
            var changeLiStr = '';
            for (var areas in data) {
                //console.log("data[areas].name="+data[areas]);


                /*<li class="changeLi"><a href="#" class="changeLiLink">Lusaka6</a></li>
                 *
                 * .headerBox .header .changeUl .changeLi*/
                changeLiStr += '<li class="changeLi"><a href="#" class="changeLiLink">'+ data[areas].name +'</a></li>';
            }

            $('.headerBox .header .changeUl').append(changeLiStr);
            $('.headerBox .header .headerLeft .lusaka').html($('.headerBox .header .changeUl .changeLi .changeLiLink').eq(0).html());


            /*headerBox：点击change切换地址*/
            var header = $('.headerBox .header').offset().left;
            var changeUlLeft = $('.headerBox .header .headerLeft .change').offset().left;
            $('.headerBox .header .changeUl').css('left', changeUlLeft-header);
            $('.headerBox .header .headerLeft .change').hover(function () {
                $('.headerBox .header .changeUl').show();
            });
            $('.headerBox .header .changeUl').hover(function () {
                $('.headerBox .header .changeUl').show();
            },function () {
                $('.headerBox .header .changeUl').hide();
            });
            $('.headerBox .header .changeUl .changeLi').click(function () {
                $('.headerBox .header .changeUl').hide();
                $('.headerBox .header .headerLeft .lusaka').text($(this).text());
            });



        } else {
            alert(data.msg);
        }
    },
    error:function(error){
        console.log(error);
    }
});
