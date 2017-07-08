/*.searchBox .search .menuUl .menuLi .menuLiLink*/
/*跳转到index页面*/
$('.searchBox .search .searchLeft .fist').click(function(){
    window.location.href = 'index.html';
});
var getCid;
//二级菜单 数据交互
$.ajax({
    type: "get",
    url: baseUrl+"/apigateway/categorys",
    dataType:"json",
    success: function(data){
        if(data.status == 200){
            data = JSON.parse(data.data);
            console.log("获得产品分类",data);

            var cidIdArr = [];
            var cidNameArr = [];
            var totalStr = "";
            for (var sort in data) {
                cidIdArr.push(data[sort].cid);
                cidNameArr.push(data[sort].name);
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
            //$('.searchBox .search .searchLeft .second').html(cidNameArr[0]);
            console.log('cidIdArr='+cidIdArr);

            /*phone切换菜单*/
            $('.searchBox .search .searchLeft .second').css({

                paddingBottom:'40px'
            });
            var search = $('.searchBox .search').offset().left;
            var searchUlLeft = $('.searchBox .search .searchLeft .second').offset().left;
            $('.searchBox .search .menuUl').css('left', searchUlLeft);
            $('.searchBox .search .searchLeft .second').hover(function () {
                $('.searchBox .search .menuUl').show();
            },function(){
                $('.menuUl').hide();
            });
            $('.searchBox .search .menuUl').hover(function () {
                $('.searchBox .search .menuUl').show();
            },function () {
                $('.searchBox .search .menuUl').hide();
            });

            //调整
            $('.searchBox .search .menuUl .menuLi').click(function(){
                var index = $(this).index();
                getCid = cidIdArr[index];
                $('.searchBox .search .menuUl').hide();
                $('.searchBox .search .searchLeft .second').text($(this).children('.menuLiLink').text());
                localStorage.setItem('cid',cidIdArr[index]);
                localStorage.setItem('cidName',cidNameArr[index]);
            });
            /*$('.searchBox .search .menuUl .menuLi').hover(
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
            );*/

        }else{
            $('.commonPopBox').show();
            $('.commonPopBox .commonPop .title').html();
            $('.commonPopBox .commonPop .detailTip').html(data.msg);
        }
    },
    error:function(error){
        console.log(error);
    }
});