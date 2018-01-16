$(function(){
    $('.wrapper .navBottom .item').unbind('click').click(function(){
        var index = $(this).index();
        $('.wrapper .navBottom .item').children('.item_name').removeClass('active').end().eq(index).children('.item_name').addClass('active');
    });
});