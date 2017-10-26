 /* ============================================================
 * jquery.validate.appeal.js  Account Verification Verification 
 * ============================================================
 * Copyright Mr jobs.
 * ============================================================ */

(function($) {
    'use strict';

    var frmAppealValid = $("#appealForm").validate({
        rules: {
            realname: {
                required: true
            },
            mobile: {
                required: true, 
                match: /^13[0-9]{9}$|14[0-9]{9}$|15[0-9]{9}$|18[0-9]{9}$|17[0-9]{9}$/
            },
            email: {
                required: true,
                email: true
            },
            description: {
                required: true
            }
        },
        messages: {
            realname: {
                required: '<div class="ftxt"> please enter your real name </div><div class="fimg"></div>'
            },
            mobile: {
                required: '<div class="ftxt"> please enter your phone number </div><div class="fimg"></div>',
                match: '<div class="ftxt"> The phone number is not formatted correctly </div><div class="fimg"></div>'
            },
            email: {
                required: '<div class="ftxt"> Please enter your favorite email address </div><div class="fimg"></div>',
                email: '<div class="ftxt"> E-mail format is incorrect </div><div class="fimg"></div>'
            },
            description: {
                required: '<div class="ftxt"> Please enter a description of the account complaint </div><div class="fimg"></div>'
            }
        },
        errorClasses: {
            realname: {
                required: 'tip err'
            },
            mobile: {
                required: 'tip err',
                match: 'tip err'
            },
            email: {
                required: 'tip err',
                email: 'tip err'
            },
            description: {
                required: 'tip err'
            }
        },
        errorElement: 'div',
        errorPlacement: function(error, element) {
            element.closest('.J_validate_group').find('.J_showtip_box').append(error);
        },
        success: function(label) {
            label.append('<div class="ok"></div>');
        }
    });

    $('#btnAppealRegister').click(function() {
        $(this).submitForm({
            beforeSubmit: $.proxy(frmAppealValid.form, frmAppealValid),
            success: function(data) {
                if (data.status) {
                    $("#appealForm").remove();
                    $(".appeal_ok").show();
                } else {
                    disapperTooltip("remind", data.msg);
                    return false;
                }
            },
            clearForm: false
        });
        return false;
    });

})(jQuery);