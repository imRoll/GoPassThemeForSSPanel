(function($) {
	"use strict";
	var clipboard = new ClipboardJS('.btn-clipboard');
	clipboard.on('success', function(e) {
	    alert("已复制到剪切版");
	    e.clearSelection();
	});
	clipboard.on('error', function(e) {
	
	});

	var clipboard = new ClipboardJS('.btn-clipboard-cut');
	clipboard.on('success', function(e) {
		alert("cut");
		e.clearSelection();
	});
	clipboard.on('error', function(e) {

	});
})(jQuery);
