$(function(){
    $('#getCode1').unbind('click').click(function(){
        $('#leftTime').html(60);
        $('#getCode1').hide();
        $('#getCode2').show();
        var leftTime = 60;
        var timer = setInterval(function(){
            if(leftTime == 1){
                clearInterval(timer);
                $('#getCode1').show();
                $('#getCode2').hide();
            }
            leftTime -- ;
            $('#leftTime').html(leftTime);
        }, 1000);
    });
});