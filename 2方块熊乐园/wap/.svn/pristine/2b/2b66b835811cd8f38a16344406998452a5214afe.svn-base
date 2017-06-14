 /* ============================================================
 * jquery.validate.regpersonal.js  Personal registration verification 
 * ============================================================
 * Copyright Mr jobs.
 * ============================================================ */

(function($) {
    'use strict';

    //  Custom validation method ， Verify that it is registered 
    $.validator.addMethod('IsRegistered', function(value, element) {
        var result = false, eletype = element.name;
        $.ajax({
            url: qscms.root + '?m=Home&c=Members&a=ajax_check',
            cache: false,
            async: false,
            type: 'post',
            dataType: 'json',
            data: { type: eletype, param: value },
            success: function(json) {
                if (json && json.status) {
                    result = true;
                } else {
                    result = false;
                }
            }
        });
        return result;
    }, ' Has been registered ');

    //  Click to get the verification code to determine whether to enter the phone number 
    var regularMobile = /^13[0-9]{9}$|14[0-9]{9}$|15[0-9]{9}$|18[0-9]{9}$|17[0-9]{9}$/;
    $('#J_getverificode').click(function() {
        var mobileValue = $.trim($('#mobile').val());
        //  Get the background send verification code configuration 
        var captcha_open = eval($('#J_captcha_open').val());
        if (mobileValue == '') {
            disapperTooltip("remind", " Please enter the phone number ");
            $('#mobile').focus();
            return false;
        };
        if (mobileValue != "" && !regularMobile.test(mobileValue)) {
            disapperTooltip("remind", " Please enter the correct phone number ");
            $('#mobile').focus();
            return false;
        }
        $.ajax({
            url: qscms.root + '?m=Home&c=Members&a=ajax_check',
            cache: false,
            async: false,
            type: 'post',
            dataType: 'json',
            data: { type: 'mobile', param: mobileValue },
            success: function(json) {
                if (json && json.status) {
                    if (captcha_open) {
                        $("#btnCheck").click();
                    } else {
                        toSetSms();
                    }
                } else {
                    disapperTooltip("remind", "该手机号 Has been registered ， Please try to log in ");
                    $('#mobile').focus();
                    return false;
                }
            }
        });
    });

    //  Get the background registration verification configuration 
    var config_varify_reg = eval($('#J_config_varify_reg').val());

    //  Personal mobile registration verification program 
    $("#regMobileForm").validate({
        submitHandler: function(form) {
            if (!$('#regMobileForm input[name="agreement"]').is(':checked')) {
                disapperTooltip("remind", ' Please agree to register the agreement ');
                return false;
            }
            if (config_varify_reg) {
                $("#btnCheckMobile").click();
            } else {
                regPerByMobileHandler();
            }
        },
        rules: {
            mobile: {
                required: true, 
                match: /^13[0-9]{9}$|14[0-9]{9}$|15[0-9]{9}$|18[0-9]{9}$|17[0-9]{9}$/,
                IsRegistered: true
            },
            mobile_vcode: {
                required: true,
                match: /\d{6}$/
            },
            password: {
                required: true,
                rangelength: [6, 16]
            },
            passwordVerify: {
                required: true,
                rangelength: [6, 16],
                equalTo: "#password"
            }
        },
        messages: {
            mobile: {
                required: '<div class="ftxt"> Please enter the phone number </div><div class="fimg"></div>',
                match: '<div class="ftxt"> Phone number format is incorrect </div><div class="fimg"></div>',
                IsRegistered: '<div class="ftxt">该手机号 Has been registered ， Please try to log in </div><div class="fimg"></div>'
            },
            mobile_vcode: {
                required: '<div class="ftxt"> please enter verification code </div><div class="fimg"></div>',
                match: '<div class="ftxt"> Phone verification code is 6 Bit pure number </div><div class="fimg"></div>'
            },
            password: {
                required: '<div class="ftxt"> Please enter your password </div><div class="fimg"></div>',
                rangelength: '<div class="ftxt"> Password length is required 6-16 Character </div><div class="fimg"></div>'
            },
            passwordVerify: {
                required: '<div class="ftxt"> Please enter a confirmation password </div><div class="fimg"></div>',
                rangelength: '<div class="ftxt"> Password length is required 6-16 Character </div><div class="fimg"></div>',
                equalTo: '<div class="ftxt"> The password entered twice is inconsistent </div><div class="fimg"></div>'
            }
        },
        errorClasses: {
            mobile: {
                required: 'tip err',
                match: 'tip err',
                IsRegistered: 'tip err'
            },
            mobile_vcode: {
                required: 'tip err',
                match: 'tip err'
            },
            password: {
                required: 'tip err',
                rangelength: 'tip err',
                match: 'tip err'
            },
            passwordVerify: {
                required: 'tip err',
                rangelength: 'tip err',
                equalTo: 'tip err'
            }
        },
        tips: {
            mobile: '<div class="ftxt"> The phone number can be used to log in to the website and retrieve the password </div><div class="fimg"></div>',
            mobile_vcode: '<div class="ftxt"> Please enter your phone verification code </div><div class="fimg"></div>',
            password: '<div class="ftxt">6-16 Bit characters ， Case sensitive </div><div class="fimg"></div>',
            passwordVerify: '<div class="ftxt"> Please enter your password again </div><div class="fimg"></div>'
        },
        tipClasses: {
            mobile: 'tip',
            mobile_vcode: 'tip',
            password: 'tip',
            passwordVerify: 'tip'
        },
        errorElement: 'div',
        errorPlacement: function(error, element) {
            if (element.attr('name') == 'mobile_vcode') {
                element.closest('.J_validate_group').find('.J_showtip_box').append(error);
            }  else {
                element.closest('.J_validate_group').find('.J_showtip_box').append(error);
            }
        },
        success: function(label) {
            label.append('<div class="ok"></div>');
        }
    });

    //  Personal Mailbox Registration Verification Program 
    $("#regEmailForm").validate({
        submitHandler: function(form) {
            if (!$('#regEmailForm input[name="agreement"]').is(':checked')) {
                disapperTooltip("remind", ' Please agree to register the agreement ');
                return false;
            }
            if (config_varify_reg) {
                $("#btnCheckEmail").click();
            } else {
                regPerByEmailHandler();
            }
        },
        rules: {
            username: {
                required: true,
                match: /^(?=[\u4e00-\u9fa5a-zA-Z])(?!\d+)[\u4e00-\u9fa5\w.]{6,18}$/,
                IsRegistered: true
            },
            email: {
                required: true,
                email: true,
                IsRegistered: true
            },
            emailpassword: {
                required: true,
                rangelength: [6, 16]
            },
            emailpasswordVerify: {
                required: true,
                rangelength: [6, 16],
                equalTo: "#emailpassword"
            }
        },
        messages: {
            username: {
                required: '<div class="ftxt"> please enter user name </div><div class="fimg"></div>',
                match: '<div class="ftxt"> Beginning in English and Chinese 6-18 Bit ， No special symbols </div><div class="fimg"></div>',
                IsRegistered: '<div class="ftxt">该用户名 Has been registered </div><div class="fimg"></div>'
            },
            email: {
                required: '<div class="ftxt"> please input your email </div><div class="fimg"></div>',
                email: '<div class="ftxt"> E-mail format is incorrect </div><div class="fimg"></div>',
                IsRegistered: '<div class="ftxt">该邮箱地址 Has been registered ， Please try to log in </div><div class="fimg"></div>'
            },
            emailpassword: {
                required: '<div class="ftxt"> Please enter your password </div><div class="fimg"></div>',
                rangelength: '<div class="ftxt"> Password length is required 6-16 Character </div><div class="fimg"></div>'
            },
            emailpasswordVerify: {
                required: '<div class="ftxt"> Please enter a confirmation password </div><div class="fimg"></div>',
                rangelength: '<div class="ftxt"> Password length is required 6-16 Character </div><div class="fimg"></div>',
                equalTo: '<div class="ftxt"> The password entered twice is inconsistent </div><div class="fimg"></div>'
            }
        },
        errorClasses: {
            username: {
                required: 'tip err',
                match: 'tip err',
                IsRegistered: 'tip err'
            },
            email: {
                required: 'tip err',
                email: 'tip err',
                IsRegistered: 'tip err'
            },
            emailpassword: {
                required: 'tip err',
                rangelength: 'tip err'
            },
            emailpasswordVerify: {
                required: 'tip err',
                rangelength: 'tip err',
                equalTo: 'tip err'
            }
        },
        tips: {
            username: '<div class="ftxt"> Beginning in English and Chinese 6-18 Bit ， No special symbols </div><div class="fimg"></div>',
            email: '<div class="ftxt"> E-mail is used to receive resume and system important notice </div><div class="fimg"></div>',
            emailpassword: '<div class="ftxt">6-16 Bit characters ， Case sensitive </div><div class="fimg"></div>',
            emailpasswordVerify: '<div class="ftxt"> Please enter your password again </div><div class="fimg"></div>'
        },
        tipClasses: {
            username: 'tip',
            email: 'tip',
            emailpassword: 'tip',
            emailpasswordVerify: 'tip'
        },
        errorElement: 'span',
        errorPlacement: function(error, element) {
            element.closest('.J_validate_group').find('.J_showtip_box').append(error);
        },
        success: function(label) {
            label.append('<div class="ok"></div>');
        }
    });

    var register = {
        initialize: function() {
            this.initControl();
        },
        initControl: function() {
            //  Phone registration submission 
            $('#btnMoilbPhoneRegister').die().live('click', function() {
                $(this).submitForm({
                    beforeSubmit: $.proxy(frmMobilValid.form, frmMobilValid),
                    success: function(data) {
                        if (data.status) {
                            window.location.href = data.data.url;
                        } else {
                            $('#btnMoilbPhoneRegister').val(' registered ').removeClass('btn_disabled').prop('disabled', 0);
                            disapperTooltip("remind", data.msg);
                        }
                    },
                    clearForm: false
                });
                if (frmMobilValid.valid()) {
                    $('#btnMoilbPhoneRegister').val(' registered 中...').addClass('btn_disabled').prop('disabled', !0);
                }
                return false;
            });

            // 邮箱 registered 提交
            $('#btnEmailRegister').die().live('click', function() {
                $(this).submitForm({
                    beforeSubmit: $.proxy(frmEmailValid.form, frmEmailValid),
                    success: function(data) {
                        if (data.status) {
                            window.location.href = data.data.url;
                        } else {
                            $('#btnEmailRegister').val(' registered ').removeClass('btn_disabled').prop('disabled', 0);
                            disapperTooltip("remind", data.msg);
                        }
                    },
                    clearForm: false
                });
                if (frmEmailValid.valid()) {
                    $('#btnEmailRegister').val(' registered 中...').addClass('btn_disabled').prop('disabled', !0);
                }
                return false;
            });
        }
    }

    //  Send a mobile verification code 
    function toSetSms() {
        function settime(countdown) {
            if (countdown == 0) {
                $('#J_getverificode').prop("disabled", 0);
                $('#J_getverificode').removeClass('btn_disabled hover');
                $('#J_getverificode').val(' get verification code ');
                countdown = 180;
                return;
            } else {
                $('#J_getverificode').prop("disabled", !0);
                $('#J_getverificode').addClass('btn_disabled');
                $('#J_getverificode').val(' Resend ' + countdown + ' second ');
                countdown--;
            }
            setTimeout(function() {
                settime(countdown)
            },1000)
        }
        $.ajax({
            url: qscms.root+'?m=Home&c=Members&a=reg_send_sms',
            type: 'POST',
            dataType: 'json',
            data: {mobile: $.trim($('#mobile').val()),geetest_challenge: $("input[name='geetest_challenge']").val(),geetest_validate: $("input[name='geetest_validate']").val(),geetest_seccode: $("input[name='geetest_seccode']").val()}
        })
        .done(function(data) {
            if (parseInt(data.status)) {
                setTimeout(function() { 
                    disapperTooltip("success", " The verification code has been sent ， Please pay attention to check ");
                    //  Start countdown 
                    var countdowns = 180;
                    settime(countdowns);
                },800)
            } else {
                setTimeout(function() { 
                    disapperTooltip("remind", data.msg);
                },1500)
            }
        });
    }

    // 个人手机 registered 处理程序
    function regPerByMobileHandler() {
        $('#btnMoilbPhoneRegister').val(' registered 中...').addClass('btn_disabled').prop('disabled', !0);
        $.ajax({
            url: qscms.root+'?m=Home&c=Members&a=register',
            type: 'POST',
            dataType: 'json',
            data: $('#regMobileForm').serialize(),
            success: function (data) {
                if(data.status == 1){
                    window.location.href = data.data.url;
                }else{
                    if ($('#regMobileForm input[name="agreement"]').is(':checked')) {
                        $('#btnMoilbPhoneRegister').val(' registered ').removeClass('btn_disabled').prop('disabled', 0);
                    }
                    disapperTooltip("remind", data.msg);
                }
            },
            error:function(data){
                if ($('#regMobileForm input[name="agreement"]').is(':checked')) {
                    $('#btnMoilbPhoneRegister').val(' registered ').removeClass('btn_disabled').prop('disabled', 0);
                }
                disapperTooltip("remind", data.msg);
            }
        });
    }

    // 个人邮箱 registered 处理程序
    function regPerByEmailHandler() {
        $('#btnEmailRegister').val(' registered 中...').addClass('btn_disabled').prop('disabled', !0);
        $.ajax({
            url: qscms.root+'?m=Home&c=Members&a=register',
            type: 'POST',
            dataType: 'json',
            data: $('#regEmailForm').serialize(),
            success: function (data) {
                if(data.status == 1){
                    window.location.href = data.data.url;
                }else{
                    if ($('#regEmailForm input[name="agreement"]').is(':checked')) {
                        $('#btnEmailRegister').val(' registered ').removeClass('btn_disabled').prop('disabled', 0);
                    }
                    disapperTooltip("remind", data.msg);
                }
            },
            error:function(data){
                if ($('#regEmailForm input[name="agreement"]').is(':checked')) {
                    $('#btnEmailRegister').val(' registered ').removeClass('btn_disabled').prop('disabled', 0);
                }
                disapperTooltip("remind", data.msg);
            }
        });
    }

    //  Send the verification code to the mobile phone 
    if (parseInt(qscms.smsTatus)) {
        $.ajax({
            //  Obtain id，challenge，success（ Whether to enable failback）
            url: qscms.root+'?m=Home&c=Captcha&t=' + (new Date()).getTime(), //  Plus random number to prevent caching 
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
            }
        });
        var handler = function(captchaObj) {
            captchaObj.appendTo("#popup-captcha");
            captchaObj.bindOn("#btnCheck");
            captchaObj.onSuccess(function() {
                toSetSms();
            });
            captchaObj.onFail(function() {

            });
            captchaObj.onError(function() {

            });
            captchaObj.getValidate()
        };
    }

    // 通过手机 registered 配置极验
    if (config_varify_reg && parseInt(qscms.smsTatus)) {
        $.ajax({
            //  Obtain id，challenge，success（ Whether to enable failback）
            url: qscms.root+'?m=Home&c=Captcha&t=' + (new Date()).getTime(), //  Plus random number to prevent caching 
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
                }, handlerRegMobile);
            }
        });
        var handlerRegMobile = function(captchaObj) {
            captchaObj.appendTo("#popup-captcha-mobile");
            captchaObj.bindOn("#btnCheckMobile");
            captchaObj.onSuccess(function() {
                regPerByMobileHandler();
            });
            captchaObj.onFail(function() {
                
            });
            captchaObj.onError(function() {
                
            });
            captchaObj.getValidate()
        };
    };

    // 通过邮箱 registered 配置极验
    if (config_varify_reg) {
        $.ajax({
            //  Obtain id，challenge，success（ Whether to enable failback）
            url: qscms.root+'?m=Home&c=Captcha&t=' + (new Date()).getTime(), //  Plus random number to prevent caching 
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
                }, handlerRegEmail);
            }
        });
        var handlerRegEmail = function(captchaObj) {
            captchaObj.appendTo("#popup-captcha-email");
            captchaObj.bindOn("#btnCheckEmail");
            captchaObj.onSuccess(function() {
                regPerByEmailHandler();
            });
            captchaObj.onFail(function() {
                
            });
            captchaObj.onError(function() {
                
            });
            captchaObj.getValidate()
        };
    }
})(jQuery);