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
        console.log(oWidth + size);
        //img.height(oHeight + size/oWidth*oHeight);
    }
    
});