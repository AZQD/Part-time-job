var indexNum = 0;
var windowWidth = $(window).width();
$(window).on('resize', function(){
    windowWidth = $(window).width();
    console.log(windowWidth);
});
console.log(windowWidth);

var imgWidth = $('.tzmain .tzcon .clearfloat .tzhj .modblu .modblu_con .rollphotos01 .blk_01 .box01 .tzhjimg img').outerWidth();
var moveWidth = 235;
$('#LeftArr01').unbind('click').click(function(){
    if(indexNum > 0){
        indexNum--;
        if(windowWidth<560){
            moveWidth = imgWidth;
        }
        $('.swiperBox').animate({left:-moveWidth*indexNum+'px'}, 'linear');
    }
});
$('#RightArr01').unbind('click').click(function(){
    if(indexNum < 3){
        indexNum++;
        if(windowWidth<560){
            moveWidth = imgWidth;
        }
        $('.swiperBox').animate({left:-moveWidth*indexNum+'px'}, 'linear');
    }
});