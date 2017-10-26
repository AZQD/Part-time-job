/* ============================================================
 * jquery.tooltip.js
 * ============================================================
 * Copyright Mr jobs.
 * ============================================================ */

!function($) {

	//  Define the switch 
	var tooltipToggle = '.J_tooltip';
	
	$(tooltipToggle).hover(function() {
		var $this = $(this), isActive;
		if ($this.is('.disabled, :disabled')) return;
		isActive = $this.hasClass('open');
		if (!isActive) {
			$this.css('position', 'relative');
			$this.toggleClass('open');
		};
	}, function() {
		clearMenus();
	});

	function clearMenus() {
        $(tooltipToggle).each(function() {
            $(this).removeClass('open');
        })
    }

}(window.jQuery);