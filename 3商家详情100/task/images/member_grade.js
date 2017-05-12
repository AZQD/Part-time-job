/*切换(默认为新用户注册普通商家页面)*/
$('.sj_xin_pt').show();
$(".member-top li").click(function(){
	var index = $(this).index();  		
	$(".member-top li").eq(index).attr("id","active").siblings().removeAttr("id");
	if(index==0){
		$('.sj_xin_pt').show();
		$('.sj_xin_chuang').hide();
		
	}
	if(index==1){
		$('.sj_xin_pt').hide();
		$('.sj_xin_chuang').show();
		
	}
})
$(".member_rmb li").click(function(){
	$(this).addClass("rmb_active").siblings().removeClass("rmb_active");
//				$(".member-top input").val($(this).index());	
//				$(".member-top li").eq($(this).index()).addClass("active").siblings().removeClass("active");
});
$(".member-price li").click(function(){
	$(this).addClass("active").siblings().removeClass("active");
});
//滑动开关
var aa = true;
$('.mui-switch').on('click',function(){
	if(aa){
		$('.member-price label span').text("已开启");
		aa=false;
	}
	else{
		$('.member-price label span').text("已关闭");
		aa=true;
	}
})