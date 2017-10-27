/* ============================================================
 * jquery.index.js   Home js set 
 * ============================================================
 * Copyright Mr jobs.
 * ============================================================ */
!function($) {

	//  Handle fillet 
	if (window.PIE) { 
	    $('.pie_about').each(function() {
	        PIE.attach(this);
	    });
	}

	//  Rotation ad slot 
	$('#slider').nivoSlider({pauseTime: 3000});
    $('#slidersmall').nivoSlider({pauseTime: 3000});

    //  Name of the recommended advertising slippery effect 
    $(".alist").each(function() {
		$(this).hoverdir()
	})

    //  Bottom fixed login 、 Registration section 
    $('.slide_tip .close').on('click', function(event) {
    	$('.slide_tip').remove();
    });

    // ajax Load the login information 
	$.getJSON(qscms.root + '?m=Home&c=index&a=ajax_user_info',function(result){
		if(result.status == 1){
			$('#J_userWrap').html(result.data.html);
		}
	});

	//  Check in 
	$('#J_sign_in').live('click',function(){
    	var f = $(this);
        var byname = $(this).data('byname');
    	$.getJSON(qscms.root+'?m=Home&c=members&a=sign_in',function(result){
    		if(result.status == 1){
    			disapperTooltip("goldremind", '每天 Check in 增加'+result.data+byname+'<span class="point">+'+result.data+'</span>');
    			f.text(' Signed ');
    		}else{
    			disapperTooltip('remind',result.msg);
    		}
    	});
    });

    //  Whether to log in automatically 
    $('.J_expire').click(function() {
    	if ($(this).is(':checked')) {
    		$(this).val('1');
    	} else {
    		$(this).val('0');
    	}
    });

    //  Enter the login 
    $('.J_loginword').bind('keypress', function(event) {
		if (event.keyCode == "13") {
            $(this).closest('.type_box').find('.index_login_btn').click();
		}
	});

    //  Phone dynamic code login 
    var regularMobile = /^13[0-9]{9}$|14[0-9]{9}$|15[0-9]{9}$|18[0-9]{9}$|17[0-9]{9}$/; //  Verify the phone number is regular 
    $('input[name="mobile"]').keyup(function(event) {
        var $thisTypeBox = $(this).closest('.type_box');
        var mobileValue = $(this).val();
        if (mobileValue.length >= 11) {
            if (mobileValue != "" && !regularMobile.test(mobileValue)) {
                $thisTypeBox.addClass('err');
                $thisTypeBox.find('.J_errbox').text(' The phone number is not formatted correctly ');
                return false;
            }
            $thisTypeBox.removeClass('err');
            $thisTypeBox.find('.J_errbox').text('');
        }
    });
    
    //  get verification code 
    $('#getVerfyCode').die().live('click', function(event) {
        var mobileValue = $.trim($('input[name="mobile"]').val());
        var $thisTypeBox = $(this).closest('.type_box');
        if (!mobileValue.length) {
            $thisTypeBox.addClass('err');
            $thisTypeBox.find('.J_errbox').text(' please fill in cell phone number ');
            $('input[name="mobile"]').focus();
            return false;
        }
        if (mobileValue != "" && !regularMobile.test(mobileValue)) {
            $thisTypeBox.addClass('err');
            $thisTypeBox.find('.J_errbox').text(' The phone number is not formatted correctly ');
            $('input[name="mobile"]').focus();
            return false;
        }
        $.ajax({
            url: qscms.root + '?m=Home&c=Members&a=ajax_check',
            cache: false,
            async: false,
            type: 'post',
            dataType: 'json',
            data: { type: 'mobile', param: mobileValue },
            success: function(result) {
                if (!result.status) {
                    $('#J_sendVerifyType').val('1');
                    $("#btnVerifiCode").click();
                } else {
                    $thisTypeBox.addClass('err');
                    $thisTypeBox.find('.J_errbox').text(' The phone number you entered is not registered ');
                    return false;
                }
            }
        });
        
    });

	//  Account login verification 
    $('#J_do_login_btn').click(function() {
    	var usernameValue = $.trim($('input[name=username]').val());
    	var passwordValue = $.trim($('input[name=password]').val());
    	var expireValue = $.trim($('input[name=expire]').val());
        var $thisTypeBox = $(this).closest('.type_box');
    	if (usernameValue == '') {
            $thisTypeBox.addClass('err');
            $thisTypeBox.find('.J_errbox').text(' please input your email / username / phone number ！');
    		return false;
    	}
    	if (passwordValue == '') {
            $thisTypeBox.addClass('err');
            $thisTypeBox.find('.J_errbox').text(' Please enter your password ！');
    		return false;
    	}
    	$thisTypeBox.removeClass('err');
    	if($("#verify_userlogin").val()==1){
            $('#J_sendVerifyType').val('0');
			$("#btnVerifiCode").click();
		}else{
            $('#J_do_login_btn').val(' logging in ...').addClass('btn_disabled').prop('disabled', !0);
			doLogin();
		}
    });

    //  Phone dynamic code login 验证
    $('#J_do_login_bymobile_btn').click(function() {
        var mobileValue = $.trim($('input[name=mobile]').val());
        var verfyCodeValue = $.trim($('input[name=verfy_code]').val());
        var expireValue = $.trim($('input[name=expire_obile]').val());
        var $thisTypeBox = $(this).closest('.type_box');
        if (mobileValue == '') {
            $thisTypeBox.addClass('err');
            $thisTypeBox.find('.J_errbox').text('请输入 phone number ');
            return false;
        }
        if (mobileValue != "" && !regularMobile.test(mobileValue)) {
            $thisTypeBox.addClass('err');
            $thisTypeBox.find('.J_errbox').text(' The phone number is not formatted correctly ');
            $('input[name="mobile"]').focus();
            return false;
        }
        if (verfyCodeValue == '') {
            $thisTypeBox.addClass('err');
            $thisTypeBox.find('.J_errbox').text(' Please enter your phone verification code ');
            return false;
        }
        $thisTypeBox.removeClass('err');
        if($("#verify_userlogin").val()==1){
            $('#J_sendVerifyType').val('0');
            $("#btnVerifiCode").click();
        }else{
            $('#J_do_login_bymobile_btn').val(' logging in ...').addClass('btn_disabled').prop('disabled', !0);
            doLogin();
        }
    });

    //  Configure the verification code ， Only need to be logged in without login 
    if (!eval($('#whetherVisitors').val())) {
        $.ajax({
            //  Obtain id，challenge，success（ Whether to enable failback）
            url: qscms.root+'?m=Home&c=captcha&t=' + (new Date()).getTime(), //  Plus random number to prevent caching 
            type: "get",
            dataType: "json",
            success: function (data) {
                //  use initGeetest interface 
                //  parameter 1：配置 parameter 
                //  parameter 2： Callback ， Callback 的第一个 parameter 验证码对象，之后可以 use 它做appendTo Such as the event 
                initGeetest({
                    gt: data.gt,
                    challenge: data.challenge,
                    product: "popup", //  Product form ， include ：float，embed，popup。 Note only right PC Verification code is valid 
                    offline: !data.success //  Indicates whether the user is in the background to check whether the server is down ， Generally do not need attention 
                }, handler);
            },
            error:function(data){
                var loginTypeValue = eval($('#J_loginType').val());
                $('.type_box').eq(loginTypeValue).addClass('err');
                $('.type_box').eq(loginTypeValue).find('.J_errbox').text(data['responseText']);
                $('.type_box').eq(loginTypeValue).find('.index_login_btn').val(' Can not complete login ');
            }
        });

        //  Verification code is loaded 
        var handler = function(captchaObj) {
            captchaObj.appendTo("#popup-captcha");
            captchaObj.bindOn("#btnVerifiCode");
            captchaObj.onSuccess(function() {
                validDoSomethig();
            });
            captchaObj.onFail(function() {
                var loginTypeValue = eval($('#J_loginType').val());
                $('.type_box').eq(loginTypeValue).addClass('err');
                $('.type_box').eq(loginTypeValue).find('.J_errbox').text(' Slide validation failed ！');
            });
            captchaObj.onError(function() {

            });
            captchaObj.getValidate()
        };
    }

    //  Account registration method 
    function doLogin() {
        var loginTypeValue = eval($('#J_loginType').val());
        $('.type_box').eq(loginTypeValue).find('.index_login_btn').val('正在 logging in ...');
        if (loginTypeValue) {
            var mobileValue = $.trim($('input[name=mobile]').val());
            var verfyCodeValue = $.trim($('input[name=verfy_code]').val());
            var expireValue = $.trim($('input[name=expire_obile]').val());
            var $thisTypeBox = $('#J_do_login_bymobile_btn').closest('.type_box');
            //  submit Form 
            $.ajax({
                url: qscms.root+'?m=Home&c=Members&a=login',
                type: "post",
                dataType: "json",
                data: {
                    mobile: mobileValue,
                    mobile_vcode: verfyCodeValue,
                    expire: expireValue,
                    //  The three values ​​required for secondary verification 
                    geetest_challenge: $("input[name='geetest_challenge']").val(),
                    geetest_validate: $("input[name='geetest_validate']").val(),
                    geetest_seccode: $("input[name='geetest_seccode']").val()
                },
                success: function (result) {
                    if (parseInt(result.status)) {
                        // ajax Load the login information 
                        $.getJSON(qscms.root + '?m=Home&c=Index&a=ajax_user_info',function(result){
                            if(result.status == 1){
                                $('#J_userWrap').html(result.data.html);
                                $.getJSON(qscms.root + "?m=Home&c=AjaxCommon&a=get_header_min",function(result){
                                    if(result.status == 1){
                                        $('#J_header').html(result.data.html);
                                    }
                                });
                            }
                        });
                    } else {
                        $thisTypeBox.addClass('err');
                        $thisTypeBox.find('.J_errbox').text(result.msg);
                        $('#J_do_login_bymobile_btn').val(' log in ').removeClass('btn_disabled').prop('disabled', 0);
                        $("#verify_userlogin").val(result.data);
                    }
                }
            });
        } else {
            var usernameValue = $.trim($('input[name=username]').val());
            var passwordValue = $.trim($('input[name=password]').val());
            var expireValue = $.trim($('input[name=expire]').val());
            var $thisTypeBox = $('#J_do_login_btn').closest('.type_box');
            //  submit Form 
            $.ajax({
                url: qscms.root+'?m=Home&c=Members&a=login',
                type: "post",
                dataType: "json",
                data: {
                    username: usernameValue,
                    password: passwordValue,
                    expire: expireValue,
                    //  The three values ​​required for secondary verification 
                    geetest_challenge: $("input[name='geetest_challenge']").val(),
                    geetest_validate: $("input[name='geetest_validate']").val(),
                    geetest_seccode: $("input[name='geetest_seccode']").val()
                },
                success: function (result) {
                    if (parseInt(result.status)) {
                        // ajax Load the login information 
                        $.getJSON(qscms.root + '?m=Home&c=Index&a=ajax_user_info',function(result){
                            if(result.status == 1){
                                $('#J_userWrap').html(result.data.html);
                                $.getJSON(qscms.root + "?m=Home&c=AjaxCommon&a=get_header_min",function(result){
                                    if(result.status == 1){
                                        $('#J_header').html(result.data.html);
                                    }
                                });
                            }
                        });
                    } else {
                        $thisTypeBox.addClass('err');
                        $thisTypeBox.find('.J_errbox').text(result.msg);
                        $('#J_do_login_btn').val(' log in ').removeClass('btn_disabled').prop('disabled', 0);
                        $("#verify_userlogin").val(result.data);
                    }
                }
            });
        }
    }

    //  The need to do after the operation 
    function validDoSomethig() {
        var toType = eval($('#J_sendVerifyType').val());
        var loginTypeValue = eval($('#J_loginType').val());
        if (toType) { // 1 Send a verification code 
            var mobileValue = $.trim($('input[name=mobile]').val());
            $.ajax({
                url: qscms.root + '?m=Home&c=Members&a=reg_send_sms',
                cache: false,
                async: false,
                type: 'post',
                dataType: 'json',
                data: { sms_type: 'login', mobile: mobileValue,geetest_challenge: $("input[name='geetest_challenge']").val(),geetest_validate: $("input[name='geetest_validate']").val(),geetest_seccode: $("input[name='geetest_seccode']").val()},
                success: function(result) {
                    if (result.status) {
                        $('.type_box').eq(loginTypeValue).removeClass('err');
                        disapperTooltip("success", " The verification code has been sent ， Please pay attention to check ");
                        //  Start countdown 
                        var countdown = 180;
                        function settime() {
                            if (countdown == 0) {
                                $('#getVerfyCode').prop("disabled", 0);
                                $('#getVerfyCode').removeClass('btn_disabled');
                                $('#getVerfyCode').val(' get verification code ');
                                countdown = 180;
                                return;
                            } else {
                                $('#getVerfyCode').prop("disabled", !0);
                                $('#getVerfyCode').addClass('btn_disabled');
                                $('#getVerfyCode').val(' Resend ' + countdown + ' second ');
                                countdown--;
                            }
                            setTimeout(function() { 
                                settime()
                            },1000)
                        }
                        settime();
                    } else {
                        $('.type_box').eq(loginTypeValue).addClass('err');
                        $('.type_box').eq(loginTypeValue).find('.J_errbox').text(result.msg);
                        return false;
                    }
                }
            });
        } else {
            doLogin();
        }
    }

	//  Top search type switch 
    $('.selecttype').click(function() {
    	$(this).closest('.inputbg').toggleClass('open');
		$('.selecttype_down .down_list').off().click(function() {
			var type = $(this).data('type');
			var hiddenType = $('#top_search_type').val();
			var txt = $(this).text();
			var originalTxt = $('.selecttype').text();
			$('.selecttype').text(txt);
			$(this).text(originalTxt);
			$(this).data('type', hiddenType);
			$('#top_search_type').val(type);
		});
    	$(document).on('click', function(e) {
			var target  = $(e.target);
			if (target.closest(".selecttype").length == 0) {
				$('.inputbg').removeClass('open');
			};
		});
    });

    //  Top carriage return search 
	$('#top_search_input').bind('keypress', function(event) {
		if (event.keyCode == "13") {
			$("#top_search_btn").click();
		}
	});

    //  Top search jump 
    $('#top_search_btn').click(function() {
    	var keyValue = $.trim($('#top_search_input').val());
        if(qscms.keyUrlencode==1){
            keyValue = encodeURI(keyValue);
        }
    	var searchType = $('#top_search_type').val();
    	$.getJSON(qscms.root + '?m=Home&c=Index&a=search_location',{act: searchType, key: keyValue},function(result){
    		if(result.status == 1){
    			window.location=result.data;
    		}
    	})
    });

    //  For a batch   ajax_loading  
    var isDone = true; //  Prevent duplicate clicks 
    var ajaxpage = {};
    $('.J_change_batch').click(function() {
    	var $thisParent = $(this).closest('.J_change_parent');
    	var $url = $(this).data('url');
    	$thisParent.addClass('open_ajax');
    	if (isDone) {
    		isDone = false;
            if(!ajaxpage[$url]) ajaxpage[$url] = 2;
        	$.getJSON($url, {p: ajaxpage[$url]}, function(result) {
        		if(result.status == 1){
                    $thisParent.find('.J_change_result').html(result.data.html);
                    isDone = true;
                    if(result.data.isfull){
                        ajaxpage[$url] = 1;
                    }else{
                        ajaxpage[$url]++;
                    }
                }
                $thisParent.removeClass('open_ajax');
        	});
    	};
    });

    //  News switch 
    var isDoneNews = true; //  Prevent duplicate clicks 
    $('.J_news_list_title').click(function() {
        var $cid = $(this).attr('cid');
        $(this).addClass('select').siblings().removeClass('select');
        $('.J_news_content').find('.ajax_loading').show();
        if (isDoneNews) {
            isDoneNews = false;
            $.getJSON(qscms.root + '?m=Home&c=AjaxCommon&a=news_list', {type_id: $cid}, function(data) {
                $('.J_news_content').find('.J_news_txt').html(data.data);
                isDoneNews = true;
                $('.J_news_content').find('.ajax_loading').hide();
            });
        };
    });

    //  log in 方式切换
    $('#forMobileLogin').click(function() {
        var thisIndex = $(this).data('index');
        $('#J_loginType').val(thisIndex);
        $('.switch_txt').eq(thisIndex).addClass('active').siblings('.switch_txt').removeClass('active');
        $('.type_box').eq(thisIndex).addClass('active').siblings('.type_box').removeClass('active');
        $('#forAccountLogin').show();
    });

    $('#forAccountLogin').click(function() {
        var thisIndex = $(this).data('index');
        $('#J_loginType').val(thisIndex);
        $('.switch_txt').eq(thisIndex).addClass('active').siblings('.switch_txt').removeClass('active');
        $('.type_box').eq(thisIndex).addClass('active').siblings('.type_box').removeClass('active');
        $('#forAccountLogin').hide();
    });

    // 计算 Home 广告位切换条的位置
    $('.nivo-controlNav').each(function(index, el) {
        var controlLength = $(this).find('.nivo-control').length;
        $(this).find('.nivo-control').eq(controlLength - 1).css('margin-right', 0);
        var thisWidth = $(this).outerWidth();
        var parentWidth = $(this).closest('.nivoSlider').outerWidth();
        $(this).css('left', (parentWidth - thisWidth) / 2);
    });
    $('.nivo-prevNav').each(function(index, el) {
        var thisHeight = $(this).outerHeight();
        var parentHeight = $(this).closest('.nivoSlider').outerHeight();
        $(this).css('top', (parentHeight - thisHeight) / 2);
    });
    $('.nivo-nextNav').each(function(index, el) {
        var thisHeight = $(this).outerHeight();
        var parentHeight = $(this).closest('.nivoSlider').outerHeight();
        $(this).css('top', (parentHeight - thisHeight) / 2);
    });
}(window.jQuery);