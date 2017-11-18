$(function(){
    function setFont(size){
        document.getElementById("one_content").style.fontSize = size + "px";
    }
    $('.menu li').unbind('click').click(function(){
        var index = $(this).index();
        $('.menu li').removeClass('hover').eq(index).addClass('hover');
    });
    $('.main .childLM a').unbind('click').click(function(){
        var index = $(this).index();
        $('.main .childLM a').removeClass('hover').eq(index).addClass('hover');
    });
    $('#container .main .rightBox .zyxxzz .list_1 .chgk_list li').unbind('click').click(function(){
        var index = $(this).index();
        $('#container .main .rightBox .zyxxzz .list_1 .chgk_list li').removeClass('hover').eq(index).addClass('hover');
    });
});