$('#header-wrap .header .menu #pcMenu li').unbind('click').click(function(event){
    var index = $(this).index();
    $('#header-wrap .header .menu #pcMenu li').removeClass('active').eq(index).addClass('active');
});
$('#header-wrap .header .menu #mobileMenu li').unbind('click').click(function(event){
    var index = $(this).index();
    $('#header-wrap .header .menu #mobileMenu li').removeClass('active').eq(index).addClass('active');
});
$('.main .mid03 .m3b .cont .bar .span1').hover(function(event){
    $('.main .mid03 .m3b .cont .bar span').removeClass('active');
    $(this).addClass('active');
    $('.main .mid03 .m3b .cont .m3bul1').show();
    $('.main .mid03 .m3b .cont .m3bul2').hide();
});
$('.main .mid03 .m3b .cont .bar .span2').hover(function(event){
    $('.main .mid03 .m3b .cont .bar span').removeClass('active');
    $(this).addClass('active');
    $('.main .mid03 .m3b .cont .m3bul1').hide();
    $('.main .mid03 .m3b .cont .m3bul2').show();
});