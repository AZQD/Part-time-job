$(document).ready(function()
{
	// Give it all J_hoverbut The elements are added hover style 
	$(".J_hoverbut").hover(
		function() {
			$(this).addClass("hover");
		},
		function() {
			$(this).removeClass("hover");
		}
	);

	// Individual member center subtitle switch card 
	$(".thtab .li").click(function() {
		$(this).addClass("select").siblings(".li").removeClass("select");
		var index = $(".thtab .li").index(this);
		$('.tabshow').eq(index).show().siblings(".tabshow").hide();
	});
	
	// Add a resume page   Click to rename the resume title ， Switch out the text box 
	$("#J_edit_title").click(function() {
		$("#J_edit_title_input").show();
		$("#J_edit_title_txt").hide();
	});
	$("#J_edit_title").click(function() {
		$("#J_edit_title_input").show();
		var oval = $("#J_edit_title_input").find('input[name="title"]').val();
		$("#J_edit_title_input").find('input[name="title"]').val('').focus().val(oval).addClass('input_focus');
		$("#J_edit_title_txt").hide();
	});
	$('input[name="title"]').blur(function() {
		$("#J_edit_title_input").hide();
		$("#J_edit_title_txt").show();
	});
	$('input[name="title"]').keyup(function() {
		$("#J_edit_title_txt span").html($(this).val());
	});
	
	// Add the border box and the background changes to the eligible text box 	
	$(".J_focus input[type='text'][dir!='no_focus'],.J_focus textarea[dir!='no_focus']").focus(function() {
		$(this).addClass("input_focus")
	});
	$(".J_focus input[type='text'][dir!='no_focus'],.J_focus textarea[dir!='no_focus']").blur(function() {
		$(this).removeClass("input_focus")
	});

	// To meet the conditions DIV The text box increases the focus on getting borders and background changes 
	$(".J_hoverinput").hover(
		function() {
			$(this).addClass("input_focus");
		},
		function() {
			$(this).removeClass("input_focus");
		}
	);

	// Add a resume page 打开关闭更多选项
	$("#J_addmore").click(function() {
		$("#J_addmore_show").toggle();
		if ($("#J_addmore_show").is(':hidden')) {
			$(this).removeClass('show');
		} else {
			$(this).addClass('show');
		}
	});

	// Edit Resume Page Skip the item display Edit and delete 
	$(".J_course_edit").hover(
		function() {
			$(this).find(".editbox").show();
		},
		function() {
			$(this).find(".editbox").hide();
		}
	);
	
	// Edit the resume page Click Add and modify to display the corresponding form 
	$(".J_show_itemsform").click(function() {
		$(this).parent().parent().hide();
		$(this).parent().parent().next().show();
	});
	$(".J_hide_itemsform").click(function() {
		$(this).parent().parent().parent().parent().hide();
		$(this).parent().parent().parent().parent().prev().show();
	});
	$(".J_close_itemsform").click(function() {
		$(this).parent().parent().hide();
		$(this).parent().parent().prev().show();
	});
});
