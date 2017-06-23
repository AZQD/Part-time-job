/*.searchBox .search .menuUl .menuLi .menuLiLink*/
/*跳转到index页面*/
$('.searchBox .search .searchLeft .fist').click(function(){
    window.location.href = 'index.html';
});

//二级菜单 数据交互
$.ajax({
    type: "get",
    url: baseUrl+"/apigateway/categorys",
    dataType:"json",
    success: function(data){
        if(data.status == 200){
            data = JSON.parse(data.data);
            console.log("获得产品分类",data);

            var totalStr = "";
            for (var sort in data) {
                //二级菜单
                var str = '';
                var listStr = '';
                var details = data[sort].sub;
                for (var detail in details){
                    str += '<li class="twoLi"><a href="###" class="twoLiLink">'+details[detail].name+'</a></li>';
                }
                listStr = '<li class="menuLi"><a href="#" class="menuLiLink">'+data[sort].name+'</a><ul class="twoUl" style="display: none;">'+str+'</ul></li>';
                $('.searchBox .search .menuUl').append(listStr);
            }

            /*phone切换菜单*/
            var search = $('.searchBox .search').offset().left;
            var searchUlLeft = $('.searchBox .search .searchLeft .second').offset().left;
            $('.searchBox .search .menuUl').css('left', searchUlLeft);
            $('.searchBox .search .searchLeft .second').hover(function () {
                $('.searchBox .search .menuUl').show();
            });
            $('.searchBox .search .menuUl').hover(function () {
                $('.searchBox .search .menuUl').show();
            },function () {
                $('.searchBox .search .menuUl').hide();
            });
            $('.searchBox .search .menuUl .menuLi').hover(
                function(){
                    $(this).children('.twoUl').show();
                    $(this).find('.twoLi').click(function () {
                        $('.searchBox .search .menuUl').hide();
                        $('.searchBox .search .searchLeft .second').text($(this).children('.twoLiLink').text());
                    });
                },
                function(){
                    $(this).children('.twoUl').hide();
                }
            );

        }else{
            alert(data.msg);
        }
    },
    error:function(error){
        console.log(error);
    }
});