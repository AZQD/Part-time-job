$(function(){
    var totalCount = 4;//购物车总数
    //点击底部购物车：显示已选商品列表

    function showCartList(){
        if(totalCount != 0){
            $('.footerBox .buyBox .right').html('去购买');
            $('.opacityBg').fadeIn().unbind('click').click(function(){
                $('.footerBox .listBox').slideUp();
                $('.footerBox .buyBox .right').html('去结算');
                $('.opacityBg').hide();
                $('body,html').css('overflow','auto');
            });
            $('body,html').css('overflow','hidden');
        }else{
            $('.emptyTip').fadeIn().delay(1500).fadeOut();
        }
        
    }
    function hideCartList(){
        $('.footerBox .buyBox .right').html('去结算');
        $('.opacityBg').fadeOut();
        $('body,html').css('overflow','auto');
    }

    $('.footerBox .buyBox .right').unbind('click').click(function(ev){
        ev.stopPropagation();
        if($('.footerBox .listBox').is(':visible')){
            if(totalCount != 0){
                window.location.href = 'confirmOrder.html';
            }else{
                $('.emptyTip').fadeIn().delay(1500).fadeOut();
            }
        }else{
            $('.footerBox .listBox').slideDown();
            showCartList();
        }
    });

    $('.footerBox .buyBox').unbind('click').click(function(){
        showCartList();
       $('.footerBox .listBox').slideDown();
        //点击购物车隐藏列表
        $('.footerBox .buyBox .cartIcon').unbind('click').click(function(ev){
            if($('.footerBox .listBox').is(':visible')){
                hideCartList();
            }else{
                showCartList();
            }
            ev.stopPropagation();
            $('.footerBox .listBox').slideToggle();
        });
    });

    //减少
    $('.footerBox .listBox .cartList .cartLi').delegate('.right .reduce','click',function(ev){
        var index = $(this).parents('.cartLi').index();
        var thisNum = $('.footerBox .listBox .cartList .cartLi').eq(index).find('.currentCount').html();
        thisNum--;
        totalCount--;
        $('.footerBox .buyBox .left .part .count').html(totalCount);
        if(thisNum > 0){
            rotateCart();
            $('.footerBox .listBox .cartList .cartLi').eq(index).find('.currentCount').html(thisNum);
        }else if(thisNum == 0){
            $('.footerBox .listBox .cartList .cartLi').eq(index).remove();
            if($('.footerBox .listBox .cartList .cartLi').length == 0){
                $('.footerBox .listBox').remove();
                hideCartList();
                totalCount = 0;
                $('.footerBox .buyBox .left .part .count').hide();
            }else {
                rotateCart();
            }
        }
    });
    //添加
    $('.footerBox .listBox .cartList .cartLi').delegate('.right .add','click',function(ev){
        rotateCart();
        var index = $(this).parents('.cartLi').index();
        var thisNum = $('.footerBox .listBox .cartList .cartLi').eq(index).find('.currentCount').html();
        thisNum++;
        totalCount++;
        $('.footerBox .buyBox .left .part .count').html(totalCount);
        $('.footerBox .listBox .cartList .cartLi').eq(index).find('.currentCount').html(thisNum);
    });


    var size=0;
    function rotateCart(){
        setTimeout(function () {
            var index = 0;
            var status = 1;
            var timer = setInterval(function(){
                //console.log(index);
                if(status == 1){

                    imgToSize($('#cart'), -index);
                    index++;
                    if(index == 6){
                        status = -1;
                    }
                }
                if(status == -1){
                    index--;
                    imgToSize($('#cart'), +index);
                    if(index == 0){
                        clearInterval(timer);
                    }
                }
            }, 10);
        }, 200)
    }

    //放大缩小图片
    function imgToSize(ele, size) {
        var img = ele;
        var oWidth=img.width(); //取得图片的实际宽度
        var oHeight=img.height(); //取得图片的实际高度
        img.width(oWidth + size);
        // console.log(oWidth + size);
        //img.height(oHeight + size/oWidth*oHeight);
    }



    //新增
    var sortBoxLen = $('.goodsBox .right .sortBox').length;
    currentSortName();
    $(window).scroll(function () {
        currentSortName();
    });

    //左侧点击切换状态
    $('.goodsBox .left .goodsSort .sortName').unbind('click').bind('click', function(){
        var index = $(this).index();
        $('.goodsBox .left .goodsSort .sortName').removeClass('active').eq(index).addClass('active');
    });

    //展示当前分类名称
    function currentSortName() {
        for(var i = 0; i<sortBoxLen; i++){
            var scrollSize = $('.goodsBox .right .sortBox').eq(i).offset().top-$(window).scrollTop();
            if((scrollSize<51)){
                $('.goodsBox .right .currentName').html($('.goodsBox .right .sortBox').eq(i).children('h3').html());
                $('.goodsBox .left .goodsSort .sortName').removeClass('active').eq(i).addClass('active');
            }
        }
    }

    //列表加减
    $('.goodsBox .right .sortBoxWrap .sortBox').delegate('.sortUl .sortLi .partRight .reduce', 'click', function(ev){
        var index1 = $(this).parents('.sortBox').index();
        var index2 = $(this).parents('.sortLi').index();
        console.log(index1);
        console.log(index2);
        var $currentSortLi = $('.goodsBox .right .sortBoxWrap .sortBox').eq(index1).children('.sortUl').children('.sortLi').eq(index2);
        var thisNum = $currentSortLi.children('.partRight').children('.currentCount').html();
        console.log(thisNum);
        thisNum--;
        totalCount--;
        $('.footerBox .buyBox .left .part .count').html(totalCount);
        $currentSortLi.children('.partRight').children('.currentCount').html(thisNum);
        if(thisNum > 0){
            rotateCart();
        }else if(thisNum == 0){
            $currentSortLi.children('.partRight').children('.currentCount, .reduce').hide();
        }
    });

    //添加
    $('.goodsBox .right .sortBoxWrap .sortBox').delegate('.sortUl .sortLi .partRight .add', 'click', function(ev){
        rotateCart();
        var index1 = $(this).parents('.sortBox').index();
        var index2 = $(this).parents('.sortLi').index();
        console.log(index1);
        console.log(index2);
        var $currentSortLi = $('.goodsBox .right .sortBoxWrap .sortBox').eq(index1).children('.sortUl').children('.sortLi').eq(index2);
        var thisNum = $currentSortLi.children('.partRight').children('.currentCount').html();
        if(thisNum == 0){
            $currentSortLi.children('.partRight').children('.currentCount, .reduce').show();
        }
        thisNum++;
        totalCount++;
        //商品名称
        var goodName = $currentSortLi.children('.partMiddle').children('.name').html();

        //商品价格
        var priceStr = '';
        var originPrice = 0;
        var currentPrice = 0;
        if($currentSortLi.children('.partMiddle').children('.price').hasClass('isYouHui')){
            originPrice = $currentSortLi.children('.partMiddle').children('.price').children('.originPrice').children('.originPriceNum').html();
            currentPrice = $currentSortLi.children('.partMiddle').children('.price').children('.priceNum').html();
            priceStr = '<span class="price">\n' +
    '                        <span class="currentPrice hasYouHui"><span class="currentNum">'+currentPrice+'</span>&nbsp;元</span><br/>\n' +
    '                        <span class="originPrice">原价<span class="through"><i class="originNum">'+originPrice+'</i>&nbsp;元</span></span>\n' +
    '                    </span>';
        }else{
            currentPrice = $currentSortLi.children('.partMiddle').children('.price').children('.priceNum').html();
            priceStr = '<span class="price">\n' +
    '                        <span class="currentPrice"><span class="currentNum">'+currentPrice+'</span>&nbsp;元</span><br/>\n' +
    '                    </span>'
        }


        $('.footerBox .buyBox .left .part .count').html(totalCount);
        $currentSortLi.children('.partRight').children('.currentCount').html(thisNum);


        console.log(111111,index1+''+index2);
        if(thisNum == 1){
            $('.footerBox .listBox .cartList').append(
                '<li class="cartLi" id='+index1+''+index2+'>\n' +
    '                <div class="left">'+goodName+'</div>\n' +
    '                <div class="right">\n'+priceStr+'<img class="reduce" src="image/index/reduce.png" alt="">\n' +
    '                    <span class="currentCount">'+thisNum+'</span>\n' +
    '                    <img class="add" src="image/index/add.png" alt="">\n' +
    '                </div>\n' +
    '            </li>'
            );
        }else{
            for(var i = 0; i<$('.footerBox .listBox .cartList .cartLi').length; i++){
                if($('.footerBox .listBox .cartList .cartLi').eq(i).attr('id') == (index1+''+index2)){
                    $('.footerBox .listBox .cartList .cartLi').eq(i).find('.currentCount').html(thisNum);
                }
            }
            // $('.footerBox .listBox .cartList .cartLi').attr('id').find('.currentCount').html(thisNum);
        }
    });



});