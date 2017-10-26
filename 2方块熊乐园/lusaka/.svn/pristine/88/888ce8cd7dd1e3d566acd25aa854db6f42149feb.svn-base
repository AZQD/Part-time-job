 /* ============================================================
 * jquery.validate.binding.js  Third party registration binding verification 
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

    //  Custom validation method ， Verify that the phone number is unique 
    $.validator.addMethod('IsRegisteredT', function(value, element) {
        var result = false, eletype = 'mobile';
        if (value.length) {
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
        } else {
            result = true;
        }
        return result;
    }, '手机号 Has been registered ');

    //  Custom validation method ， Verify area code 
    $.validator.addMethod("inputRegValiZone", function(value, element, param) {
        if (this.optional(element))
            return "dependency-mismatch";
        var reg = param;
        if (typeof param == 'string') {
            reg = new RegExp(param);
        }
        return reg.test(value);
    }, ' The area code is not formatted correctly ');

    //  Custom validation method ， Fixed mobile phone two choose one 
    $.validator.addMethod("lineMobileAchoice", function(value, element, param) {
        var regularTelphone = /^13[0-9]{9}$|14[0-9]{9}$|15[0-9]{9}$|18[0-9]{9}$|17[0-9]{9}$/;
        var achoice = true;
        var telphoneValue = $.trim($('#telephone').val());
        var landlinefirstValue = $.trim($("#landline_tel_first").val());
        var landlinenextValue = $.trim($("#landline_tel_next").val());
        if (telphoneValue == '' && landlinenextValue == '') {
            achoice = false;
        }
        if (telphoneValue != "" && !regularTelphone.test(telphoneValue) && landlinenextValue == '') {
            achoice = false;
        }
        return achoice;
    }, ' Please fill in at least one of fixed telephone and mobile phone numbers ');

    //  Mobile phone number input real-time verification of the second choice 
    $('input[name="telephone"]').on('keyup', function(event) {
        var telephoneValue = $(this).val();
        if (telephoneValue.length >= 11) {
            if (!$('#landline_tel_next').closest('.td1').next().find('.ok').length) {
                $('#landline_tel_next').closest('.td1').next().empty();
            }
        }
    });

    //  Fixed telephone input real-time verification 
    $('input[name="landline_tel_next"]').on('keyup', function(event) {
        var telValue = $(this).val();
        if (telValue.length >= 6) {
            if (!$('#telephone').closest('.td1').next().find('.ok').length) {
                $('#telephone').closest('.td1').next().empty();
            }
        }
    });

    //  Personal Mailbox Registration Verification Program 
    $("#regEmailForm").validate({
        submitHandler: function(form) {
            if (!$('#regEmailForm input[name="agreement"]').is(':checked')) {
                disapperTooltip("remind", ' Please agree to register the agreement ');
                return false;
            }
            regPerByEmailHandler();
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
            emailpassword: '<div class="ftxt">6-16 Bit 字符组成， Case sensitive </div><div class="fimg"></div>',
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

    //  Enterprise registration verification process 
    $('#registerForm').validate({
        submitHandler: function(form) {
            if (!$('#registerForm input[name="agreement"]').is(':checked')) {
                disapperTooltip("remind", ' Please agree to register the agreement ');
                return false;
            }
            var landline_tel_num = $.trim($('#landline_tel_first').val()) + '-' + $.trim($('#landline_tel_next').val());
            if ($.trim($('#landline_tel_last').val()).length) {
                landline_tel_num += '-' + $.trim($('#landline_tel_last').val());
            }
            $('#landline_tel').val(landline_tel_num);
            regCompanyHandler();
        },
        rules: {
            companyname: {
                required: true,
                rangelength: [4, 25],
                IsRegistered: true
            },
            contact: {
                required: true,
                rangelength: [1, 10]
            },
            landline_tel_first: {
                inputRegValiZone: '^[0-9]{3}[0-9]?$'
            },
            landline_tel_next: {
                match: '^[0-9]{6,11}$',
                lineMobileAchoice: true
            },
            landline_tel_last: {
                number: true,
                rangelength: [1, 4]
            },
            telephone: {
                match: /^13[0-9]{9}$|14[0-9]{9}$|15[0-9]{9}$|18[0-9]{9}$|17[0-9]{9}$/,
                lineMobileAchoice: true,
                IsRegisteredT : true
            },
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
            cpassword: {
                required: true,
                rangelength: [6, 16]
            },
            cpasswordVerify: {
                required: true,
                rangelength: [6, 16],
                equalTo: "#cpassword"
            }
        },
        messages: {
            companyname: {
                required: '<div class="ftxt"> Please enter the business name </div><div class="fimg"></div>',
                rangelength: '<div class="ftxt">4-25 Composed of words </div><div class="fimg"></div>',
                IsRegistered: '<div class="ftxt">该企业名称 Has been registered </div><div class="fimg"></div>'
            },
            contact: {
                required: '<div class="ftxt"> Please enter your business contact </div><div class="fimg"></div>',
                rangelength: '<div class="ftxt">1-10 Composed of words </div><div class="fimg"></div>'
            },
            landline_tel_first: {
                inputRegValiZone: '<div class="ftxt"> Please fill in the correct area code </div><div class="fimg"></div>'
            },
            landline_tel_next: {
                match: '<div class="ftxt"> please enter 6-11 Bit 的数字</div><div class="fimg"></div>',
                lineMobileAchoice: '<div class="ftxt"> Fixed at least one of the fixed and mobile numbers </div><div class="fimg"></div>'
            },
            landline_tel_last: {
                number: '<div class="ftxt"> The extension number is a number </div><div class="fimg"></div>',
                rangelength: '<div class="ftxt">1-4 Bit 数字组成</div><div class="fimg"></div>'
            },
            telephone: {
                match: '<div class="ftxt"> Phone number format is incorrect </div><div class="fimg"></div>',
                lineMobileAchoice: '<div class="ftxt"> Please fill in at least one of fixed telephone and mobile phone numbers </div><div class="fimg"></div>',
                IsRegisteredT : '<div class="ftxt">手机号 Has been registered </div><div class="fimg"></div>'
            },
            username: {
                required: '<div class="ftxt"> please enter user name </div><div class="fimg"></div>',
                match: '<div class="ftxt"> Beginning in English and Chinese 6-18 Bit ， No special symbols </div><div class="fimg"></div>',
                IsRegistered: '<div class="ftxt">用户名 Has been registered </div><div class="fimg"></div>'
            },
            email: {
                required: '<div class="ftxt"> please input your email </div><div class="fimg"></div>',
                email: '<div class="ftxt"> E-mail format is incorrect </div><div class="fimg"></div>',
                IsRegistered: '<div class="ftxt">该邮箱地址 Has been registered ， Please try to log in </div><div class="fimg"></div>'
            },
            cpassword: {
                required: '<div class="ftxt"> Please enter your password </div><div class="fimg"></div>',
                rangelength: '<div class="ftxt"> Password length is required 6-16 Character </div><div class="fimg"></div>'
            },
            cpasswordVerify: {
                required: '<div class="ftxt"> Please enter a confirmation password </div><div class="fimg"></div>',
                rangelength: '<div class="ftxt"> Password length is required 6-16 Character </div><div class="fimg"></div>',
                equalTo: '<div class="ftxt"> The password entered twice is inconsistent </div><div class="fimg"></div>'
            }
        },
        errorClasses: {
            companyname: {
                required: 'tip err',
                rangelength: 'tip err',
                IsRegistered: 'tip err'
            },
            contact: {
                required: 'tip err',
                rangelength: 'tip err'
            },
            landline_tel_first: {
                inputRegValiZone: 'tip err'
            },
            landline_tel_next: {
                match: 'tip err',
                lineMobileAchoice: 'tip err'
            },
            landline_tel_last: {
                number: 'tip err',
                rangelength: 'tip err'
            },
            telephone: {
                match: 'tip err',
                lineMobileAchoice: 'tip err',
                IsRegisteredT:  'tip err'
            },
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
            cpassword: {
                required: 'tip err',
                rangelength: 'tip err'
            },
            cpasswordVerify: {
                required: 'tip err',
                rangelength: 'tip err',
                equalTo: 'tip err'
            }
        },
        tips: {
            companyname: '<div class="ftxt"> The name is the same as the business license </div><div class="fimg"></div>',
            contact: '<div class="ftxt"> Please fill in the full name </div><div class="fimg"></div>',
            telephone: '<div class="ftxt"> The phone number can be used to log in to the website and retrieve the password </div><div class="fimg"></div>',
            username: '<div class="ftxt"> Beginning in English and Chinese 6-18 Bit ， No special symbols </div><div class="fimg"></div>',
            email: '<div class="ftxt"> Use the mailbox to receive resume and system notification </div><div class="fimg"></div>',
            cpassword: '<div class="ftxt"> by 6-16 A number 、 Letters and symbols </div><div class="fimg"></div>',
            cpasswordVerify: '<div class="ftxt"> Please enter your password again </div><div class="fimg"></div>'
        },
        tipClasses: {
            companyname: 'tip',
            contact: 'tip',
            telephone: 'tip',
            username: 'tip',
            email: 'tip',
            cpassword: 'tip',
            cpasswordVerify: 'tip'
        },
        groups: {
            phoneNum: 'landline_tel_first landline_tel_next landline_tel_last'
        },
        errorElement: 'div',
        errorPlacement: function(error, element) {
            if (element.attr('name') == 'landline_tel_last' || element.attr('name') == 'landline_tel_next' || element.attr('name') == 'landline_tel_first') {
                element.closest('.J_validate_group').find('.J_showtip_box').append(error);
            }  else {
                element.closest('.J_validate_group').find('.J_showtip_box').append(error);
            }
        },
        success: function(label) {
            label.append('<div class="ok"></div>');
        }
    });

    //  Personal Mailbox Registration Process 
    function regPerByEmailHandler() {
        $('#btnEmailRegister').val(' Registered ...').addClass('btn_disabled').prop('disabled', !0);
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

    //  registered 企业处理程序
    function regCompanyHandler() {
        $('#btnRegister').val(' Registered ...').addClass('btn_disabled').prop('disabled', !0);
        $.ajax({
            url: qscms.root+'?m=Home&c=Members&a=register',
            type: 'POST',
            dataType: 'json',
            data: $('#registerForm').serialize(),
            success: function (data) {
                if(data.status == 1){
                    window.location.href = data.data.url;
                }else{
                    if ($('#btnRegister input[name="agreement"]').is(':checked')) {
                        $('#btnRegister').val(' registered ').removeClass('btn_disabled').prop('disabled', 0);
                    }
                    disapperTooltip("remind", data.msg);
                }
            },
            error:function(data){
                if ($('#btnRegister input[name="agreement"]').is(':checked')) {
                    $('#btnRegister').val(' registered ').removeClass('btn_disabled').prop('disabled', 0);
                }
                disapperTooltip("remind", data.msg);
            }
        });
    }
})(jQuery);