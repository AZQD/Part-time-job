 /* ============================================================
 * jquery.validate.getpass.js  Retrieve password verification 
 * ============================================================
 * Copyright Mr jobs.
 * ============================================================ */

(function($) {
    'use strict';

    //  Verify that it is registered 
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
                    result = false;
                } else {
                    result = true;
                }
            }
        });
        return result;
    }, ' Has been registered ');

    $("#getPassByMobileForm").validate({
        rules: {
            mobile: {
                required: true, 
                match: /^13[0-9]{9}$|14[0-9]{9}$|15[0-9]{9}$|18[0-9]{9}$|17[0-9]{9}$/,
                IsRegistered: true
            },
            mobile_vcode: {
                required: true,
                match: /\d{6}$/
            }
        },
        messages: {
            mobile: {
                required: '<div class="ftxt"> Please enter the phone number </div><div class="fimg"></div>',
                match: '<div class="ftxt"> Phone number format is incorrect </div><div class="fimg"></div>',
                IsRegistered: '<div class="ftxt"> The phone number is not registered account </div><div class="fimg"></div>'
            },
            mobile_vcode: {
                required: '<div class="ftxt"> please enter verification code </div><div class="fimg"></div>',
                match: '<div class="ftxt"> Phone verification code is 6 Bit pure number </div><div class="fimg"></div>'
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
            }
        },
        tips: {
            mobile: '<div class="ftxt"> Please fill in the account number </div><div class="fimg"></div>',
            mobile_vcode: '<div class="ftxt"> Please enter your phone verification code </div><div class="fimg"></div>'
        },
        tipClasses: {
            mobile: 'tip',
            mobile_vcode: 'tip'
        },
        errorElement: 'div',
        errorPlacement: function(error, element) {
            element.closest('.J_validate_group').find('.J_showtip_box').append(error);
        },
        success: function(label) {
            label.append('<div class="ok"></div>');
        }
    });


    $("#getPassByEmailForm").validate({
        rules: {
            email: {
                required: true,
                email: true,
                IsRegistered: true
            }
        },
        messages: {
            email: {
                required: '<div class="ftxt"> please input your email </div><div class="fimg"></div>',
                email: '<div class="ftxt"> E-mail format is incorrect </div><div class="fimg"></div>',
                IsRegistered: '<div class="ftxt"> The mailbox does not have an account number </div><div class="fimg"></div>'
            }
        },
        errorClasses: {
            email: {
                required: 'tip err',
                email: 'tip err',
                IsRegistered: 'tip err'
            }
        },
        tips: {
            email: '<div class="ftxt"> Please fill in the account with the usual mailbox </div><div class="fimg"></div>'
        },
        tipClasses: {
            email: 'tip'
        },
        errorElement: 'span',
        errorPlacement: function(error, element) {
            element.closest('.J_validate_group').find('.J_showtip_box').append(error);
        },
        success: function(label) {
            label.append('<div class="ok"></div>');
        }
    });
})(jQuery);