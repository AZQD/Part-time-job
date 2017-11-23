$('#header-wrap .header .menu ul li').unbind('click').click(function(event){
    //$('#header-wrap .header .menu ul li').removeClass('active');
    //$(event.target).addClass('active');
    /*alert($(this).attr('item'));
    if($(this).attr('item')){
        var index = $(this).attr('item');
        $('#header-wrap .header .menu ul li').removeClass('active').eq(index).addClass('active');
    }*/
    var index = $(this).index();
    $('#header-wrap .header .menu ul li').removeClass('active').eq(index).addClass('active');
});