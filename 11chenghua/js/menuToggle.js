$(function(){
    function setFont(size){
        document.getElementById("one_content").style.fontSize = size + "px";
    }

    $('.main .childLM a').unbind('click').click(function(){
        var index = $(this).index();
        $('.main .childLM a').removeClass('hover').eq(index).addClass('hover');
    });
    $('#container .main .rightBox .zyxxzz .list_1 .chgk_list li').unbind('click').click(function(){
        var index = $(this).index();
        $('#container .main .rightBox .zyxxzz .list_1 .chgk_list li').removeClass('hover').eq(index).addClass('hover');
    });
    /*var leftHeight = $('#container .main .leftBox').height();
    var rightHeight = $('#container .main .rightBox').height();
    if(rightHeight>=leftHeight){
        leftHeight = rightHeight;
    }
    $('#container .main .leftBox').height(leftHeight);
    $('#container .main .rightBox').height(leftHeight);*/
});