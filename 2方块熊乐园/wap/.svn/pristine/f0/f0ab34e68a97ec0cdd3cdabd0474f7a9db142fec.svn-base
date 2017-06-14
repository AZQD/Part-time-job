// Give it all J_hoverbut The elements are added hover style 
	$(".J_hoverbut").hover(
		function()
		{
		$(this).addClass("hover");
		},
		function()
		{
		$(this).removeClass("hover");
		}
		);

	
		// Member login phone login and two-dimensional code of the road switch 
	$(".J_mob,.J_qr_code").click( function () {
		$(".j_mob_show").toggle();
		$(".J_qr_code_show").toggle();
	});
	$('.J_mob,#J_weixinQrCode').click(function(){
		get_weixin_qrcode();
	});
	var qrcode_time,
		waiting_weixin_scan = function(){
			$.getJSON(qscms.root + '?m=Home&c=Members&a=waiting_weixin_login',function(result){
				if(result.status == 1){
					window.location.href = result.data;
				}
			});
		},
		get_weixin_qrcode = function(){
			clearInterval(qrcode_time);
			$.getJSON(qscms.root + '?m=Home&c=Qrcode&a=get_weixin_qrcode',{type:'login'},function(result){
				if(result.status == 1){
					$('#J_weixinQrCode').empty().append(result.data);
					qrcode_time=setInterval(waiting_weixin_scan,5000);
				}else{
					$('#J_weixinQrCode').empty().html(result.msg);
				}
			});
		};
	// Personal Registration Mode tab 
	$(".regtab .tabli").click( function () {
		$(this).addClass("select").siblings(".tabli").removeClass("select");
		var index = $(".regtab .tabli").index(this);
		$('.tabshow').eq(index).show().siblings(".tabshow").hide();
		$('.tabshow').eq(index).find('input').eq(0).focus().addClass('input_focus');
	});
	//
	

// Add the border box and the background changes to the eligible text box 	
	$(".J_focus input[type='text'][dir!='no_focus'],.J_focus textarea[dir!='no_focus'],.J_focus input[type='password']").focus(function(){
	$(this).addClass("input_focus")											
	});
	$(".J_focus input[type='text'][dir!='no_focus'],.J_focus textarea[dir!='no_focus'],.J_focus input[type='password']").blur(function(){
	$(this).removeClass("input_focus")	
	});