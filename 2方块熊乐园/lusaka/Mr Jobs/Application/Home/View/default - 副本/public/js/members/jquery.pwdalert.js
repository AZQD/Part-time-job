/* ============================================================
 * jquery.pwdalert.js  drop down js
 * ============================================================
 * Copyright Mr jobs.
 * ============================================================ */

!function($) {
	
	$('.J_passwordalert').keyup(function () { 
		var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g"); 
		var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g"); 
		var enoughRegex = new RegExp("(?=.{6,}).*", "g"); 
		var thisGroup = $(this).closest('.J_passwordalert_group');
	
		if (false == enoughRegex.test($(this).val())) { 
			thisGroup.find('.slist').removeClass('select'); 
			 // When the password is less than six ， Password strength images are grayed out  
		} 
		else if (strongRegex.test($(this).val())) { 
			thisGroup.find('.slist.t1').removeClass('select');
			thisGroup.find('.slist.t2').removeClass('select');
			thisGroup.find('.slist.t3').addClass('select');
			 // The password is eight and above and the alphanumeric special characters are included in the three items , The strongest intensity  
		} 
		else if (mediumRegex.test($(this).val())) { 
			thisGroup.find('.slist.t1').removeClass('select');
			thisGroup.find('.slist.t2').addClass('select');
			thisGroup.find('.slist.t3').removeClass('select');
			 // Password is seven and above and letters 、 digital 、 There are two special characters in the three items ， Strength is medium  
		} 
		else { 
			thisGroup.find('.slist.t1').addClass('select');
			thisGroup.find('.slist.t2').removeClass('select');
			thisGroup.find('.slist.t3').removeClass('select');
			 // If the password is 6 And below ， Even the letters 、 digital 、 Special characters are included in three items ， Strength is weak  
		} 
		return true; 
	});

}(window.jQuery);