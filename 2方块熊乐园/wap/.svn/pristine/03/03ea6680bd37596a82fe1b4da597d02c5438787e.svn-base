/* ============================================================
 * jquery.login.js   Login page js set 
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

    //  Enter the login 
	$('.J_loginword').bind('keypress', function(event) {
        if (event.keyCode == "13") {
            $(this).closest('.type_box').find('.btnbox .btn_login').click();
        }
    });

    //  Account login 
    $('#J_dologin').die().live('click', function() {
        var usernameValue = $.trim($('#username').val());
        var passwordValue = $.trim($('#password').val());
        var expireValue = $.trim($('input[name=expire]').val());
        var $thisTypeBox = $(this).closest('.type_box');
        if (usernameValue == "") {
            $thisTypeBox.addClass('openerr');
            $thisTypeBox.find('.J_errbox').text(' Please fill in the mobile phone number / Member name / mailbox ');
            $('#username').focus();
            return false;
        }
        if (passwordValue == "") {
            $thisTypeBox.addClass('openerr');
            $thisTypeBox.find('.J_errbox').text(' Please fill in the password ');
            $('#password').focus();
            return false;
        }
        $thisTypeBox.removeClass('openerr');
        if($("#verify_userlogin").val()==1){
            $('#J_sendVerifyType').val('0');
            $("#btnCheck").click();
        } else {
            doLogin();
        }
    });

    //  Configure the verification code 
    localInitGeetest();
    function localInitGeetest() {
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
                $('.type_box').eq(loginTypeValue).addClass('openerr');
                $('.type_box').eq(loginTypeValue).find('.J_errbox').text(data['responseText']);
                $('.type_box').eq(loginTypeValue).find('.btnbox .btn_login').val(' Can not complete login ');
            }
        });

        var handler = function(captchaObj) {
            captchaObj.appendTo("#popup-captcha");
            captchaObj.bindOn("#btnCheck");
            captchaObj.onSuccess(function() {
                validDoSomethig();
            });
            captchaObj.onFail(function() {
                var loginTypeValue = eval($('#J_loginType').val());
                $('.type_box').eq(loginTypeValue).addClass('openerr');
                $('.type_box').eq(loginTypeValue).find('.J_errbox').text(' Slide validation failed ！');
            });
            captchaObj.onError(function() {

            });
            captchaObj.getValidate()
        };
    }

    //  Login method 
    function doLogin() {
        var loginTypeValue = eval($('#J_loginType').val());
        $('.type_box').eq(loginTypeValue).find('.btnbox .btn_login').val(' Is logged in ...').prop('disabled', !0).addClass('btn_disabled');
        if (loginTypeValue) {
            var mobileValue = $.trim($('input[name=mobile]').val());
            var verfyCodeValue = $.trim($('input[name=verfy_code]').val());
            var expireValue = $.trim($('input[name=expire_obile]').val());
            var $thisTypeBox = $('#J_dologinByMobile').closest('.type_box');
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
                        window.location.href = result.data;
                    } else {
                        $thisTypeBox.addClass('openerr');
                        $thisTypeBox.find('.J_errbox').text(result.msg);
                        $('#J_dologinByMobile').val(' log in ').prop('disabled', 0).removeClass('btn_disabled');
                        $("#verify_userlogin").val(result.data);
                    }
                }
            });
        } else {
            var usernameValue = $.trim($('#username').val());
            var passwordValue = $.trim($('#password').val());
            var expireValue = $.trim($('input[name=expire]').val());
            var $thisTypeBox = $('#J_dologin').closest('.type_box');
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
                        window.location.href = result.data;
                    } else {
                        $thisTypeBox.addClass('openerr');
                        $thisTypeBox.find('.J_errbox').text(result.msg);
                        $('#J_dologin').val(' log in ').prop('disabled', 0).removeClass('btn_disabled');
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
        if (toType) {
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
                        disapperTooltip("success", " The verification code has been sent ， Please pay attention to check ");
                        //  Start countdown 
                        var countdown = 180;
                        function settime() {
                            if (countdown == 0) {
                                $('#getVerfyCode').prop("disabled", 0);
                                $('#getVerfyCode').removeClass('btn_disabled');
                                $('#getVerfyCode').val(' Obtain 验证码');
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
                        var loginTypeValue = eval($('#J_loginType').val());
                        $('.type_box').eq(loginTypeValue).addClass('openerr');
                        $('.type_box').eq(loginTypeValue).find('.J_errbox').text(result.msg);
                    }
                }
            });
        } else {
            doLogin();
        }
    }

    // 手机动态码 log in 
    var regularMobile = /^13[0-9]{9}$|14[0-9]{9}$|15[0-9]{9}$|18[0-9]{9}$|17[0-9]{9}$/; //  Verify the phone number is regular 
    $('#J_dologinByMobile').die().live('click', function() {
        var mobileValue = $.trim($('input[name=mobile]').val());
        var verfyCodeValue = $.trim($('input[name=verfy_code]').val());
        var expireValue = $.trim($('input[name=expire_obile]').val());
        var $thisTypeBox = $(this).closest('.type_box');
        if (mobileValue == "") {
            $thisTypeBox.addClass("openerr");
            $thisTypeBox.find('.J_errbox').text(' Please enter phone number ');
            $('input[name=mobile]').focus();
            return false;
        }
        if (mobileValue != "" && !regularMobile.test(mobileValue)) {
            $thisTypeBox.addClass('openerr');
            $thisTypeBox.find('.J_errbox').text(' The phone number is not formatted correctly ');
            return false;
        }
        if (verfyCodeValue == "") {
            $thisTypeBox.addClass("openerr");
            $thisTypeBox.find('.J_errbox').text(' Please fill in the verification code ');
            $('input[name=verfy_code]').focus();
            return false;
        }
        $thisTypeBox.removeClass("openerr");
        if($("#verify_userlogin").val()==1){
            $('#J_sendVerifyType').val('0');
            $("#btnCheck").click();
        } else {
            doLogin();
        }
    });

    // 手机动态码 log in 
    $('input[name="mobile"]').keyup(function(event) {
        var $thisTypeBox = $(this).closest('.type_box');
        var mobileValue = $(this).val();
        if (mobileValue.length >= 11) {
            if (mobileValue != "" && !regularMobile.test(mobileValue)) {
                $thisTypeBox.addClass('openerr');
                $thisTypeBox.find('.J_errbox').text(' The phone number is not formatted correctly ');
                return false;
            }
            $thisTypeBox.removeClass('openerr');
            $thisTypeBox.find('.J_errbox').text('');
        }
    });

    //  Obtain 验证码
    $('#getVerfyCode').die().live('click', function(event) {
        var mobileValue = $('input[name="mobile"]').val();
        var $thisTypeBox = $(this).closest('.type_box');
        var captcha_open = eval($('#J_captcha_open').val());
        if (!mobileValue.length) {
            $thisTypeBox.addClass('openerr');
            $thisTypeBox.find('.J_errbox').text(' Please fill in the mobile phone number 码');
            $('input[name="mobile"]').focus();
            return false;
        }
        if (mobileValue != "" && !regularMobile.test(mobileValue)) {
            $thisTypeBox.addClass('openerr');
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
                    if (captcha_open) {
                        $("#btnCheck").click();
                    } else {
                        validDoSomethig();
                    }
                } else {
                    $thisTypeBox.addClass('openerr');
                    $thisTypeBox.find('.J_errbox').text(' Account does not exist ！');
                }
            }
        });
    });

    // 是否自动 log in 
    $('.J_expire').click(function() {
        if ($(this).is(':checked')) {
            $(this).val('1');
        } else {
            $(this).val('0');
        }
    });

    // banner Toggle 
    var aDiv = $(".banner_list"),
        index = 0,
        timer = null;
    timer = setInterval(function() {
        startFocus();
    }, 10000);
    function startFocus() {
        index++;
        index = index > aDiv.size() - 1 ? 0 : index;
        aDiv.eq(index)
        .stop()
        .animate({
            'opacity': 1
        }, 300)
        .css({
            'z-index': 0
        })
        .siblings(".banner_list")
        .stop()
        .animate({
            'opacity': 0
        }, 300)
        .css({
            'z-index': 0
        });
    }
    
    function stopFoucs() {
        clearInterval(timer);
    };

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
	
}(window.jQuery);