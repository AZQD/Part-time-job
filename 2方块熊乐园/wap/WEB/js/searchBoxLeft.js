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

                paddingBottom:'40px',
                paddingRight:'20px'
            });
            var search = $('.searchBox .search').offset().left;
            var searchUlLeft = $('.searchBox .search .searchLeft .second').offset().left;
            //$('.searchBox .search .menuUl').css('left', searchUlLeft-76);
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






                var daLeiCidArr = [];
                var daLeiIntervalArr = [];

                var daLeiSubArr = [];

                $.ajax({
                    type: "get",
                    url: baseUrl+"/apigateway/categorys",
                    dataType:"json",
                    success: function(data){
                        if(data.status == 200){
                            data = JSON.parse(data.data);
                            console.log("获得产品daLeiCid",data);
                            var aaaa = [];

                            for(var i=0; i<data.length; i++){
                                daLeiCidArr.push(data[i].cid);
                                daLeiIntervalArr.push(data[i].interval);
                                daLeiSubArr.push(data[i].sub);

                                var bbbb = [];
                                bbbb.push(data[i].cid);
                                for(var j=0; j<data[i].sub.length; j++){
                                    bbbb.push(data[i].sub[j].cid);
                                }
                                aaaa.push(bbbb);
                            }
                            var daLeiIndex;
                            cid = localStorage.getItem('cid');
                            //alert('cid='+cid);
                            console.log('aaaaaaaaaaaaaaa', aaaa);
                            for(var m=0; m<aaaa.length; m++){

                                for(var n=0; n<aaaa[m].length; n++){
                                    if(aaaa[m][n] == cid){
                                        daLeiIndex = m;
                                        //alert(daLeiIndex);
                                    }
                                }
                            }

                            console.log('8888888888888',daLeiIntervalArr[daLeiIndex]);
                            $('.selectBox .select .selectPrice').empty();
                            $('.selectBox .select .selectPrice').append('<span class="price">PRICE</span><a href="#" class="selectChoose active">ALL</a>');
                            for(var i=0; i<daLeiIntervalArr[daLeiIndex].length; i++){
                                var thisMin = daLeiIntervalArr[daLeiIndex][i].min;
                                var thisMax = daLeiIntervalArr[daLeiIndex][i].max;
                                thisMax= '-'+thisMax;
                                if(thisMax == '-undefined'){
                                    thisMax = '++';
                                }

                                /*
                                * <div class="col-xs-12 col-sm-12 selectPrice">
                                 <span class="price">PRICE</span>
                                 <a href="#" class="selectChoose active">ALL</a>
                                 <!--<a href="#" class="selectChoose">0-100</a>
                                 <a href="#" class="selectChoose">100-200</a>
                                 <a href="#" class="selectChoose">200-500</a>
                                 <a href="#" class="selectChoose">500++</a>-->
                                 </div>
                                * */



                                $('.selectBox .select .selectPrice').append('<a href="#" class="selectChoose">'+thisMin+thisMax+'</a>');

                                $('.selectBox .select .selectPrice').children('.selectChoose').unbind('click').click(function(){
                                    var index = $(this).index();
                                    if(index==1){
                                        getGoods(cid, '', '', areaid, issell, orderby, sort, startTab, hasImage, goodstatus);
                                    }else{
                                        var pmin = daLeiIntervalArr[daLeiIndex][index-2].min;
                                        var pmax = daLeiIntervalArr[daLeiIndex][index-2].max;
                                        if(pmax == undefined){
                                            pmax = '';
                                        }
                                        getGoods(cid, pmin, pmax, areaid, issell, orderby, sort, startTab, hasImage, goodstatus);
                                    }
                                });

                            }


                        }
                    },
                    error:function(error){
                        console.log(error);
                    }
                });







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
            commonPopFun(data.msg, "Failed");
        }
    },
    error:function(error){
        console.log(error);
    }
});