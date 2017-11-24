$('#header-wrap .header .menu #pcMenu li').unbind('click').click(function(event){
    var index = $(this).index();
    $('#header-wrap .header .menu #pcMenu li').removeClass('active').eq(index).addClass('active');
});
$('#header-wrap .header .menu #mobileMenu li').unbind('click').click(function(event){
    var index = $(this).index();
    $('#header-wrap .header .menu #mobileMenu li').removeClass('active').eq(index).addClass('active');
});