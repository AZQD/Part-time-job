/* ============================================================
 * jquery.dropdown.js  drop down js
 * ============================================================
 * Copyright Mr jobs.
 * ============================================================ */

!function($) {

	// 定义 drop down 开关
	var dropdownToggle = '.J_dropdown';

	$(dropdownToggle).die().live('click', function() {
		var $this = $(this), isActive;
		if ($this.is('.disabled, :disabled')) return;
		isActive = $this.hasClass('open');
		clearMenus();
		if (!isActive) {
			$this.css('position', 'relative');
			$this.toggleClass('open');
			// 点击网页空白区域隐藏 drop down 框
			$(document).on('click', function(e) {
				var target  = $(e.target);
				if (target.closest(".J_dropdown").length == 0) {
					clearMenus();
				};
			});
		};
	});

	function clearMenus() {
        $(dropdownToggle).each(function() {
            $(this).removeClass('open');
            $(this).css('position', '');
        })
    }

    //  Stop the event bubbling 
    $('.J_dropdown_menu').live('click', function(e) {
    	e.stopPropagation();
    });

}(window.jQuery);