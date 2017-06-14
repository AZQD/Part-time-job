// JavaScript Document
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
});
