'use strict';
var range_slider_custom = {
    init: function() {
        $("#u-range").ionRangeSlider({
            min: 1,
            max: 300,
            from: 50
        });
    }
};
(function($) {
    "use strict";
    range_slider_custom.init();
})(jQuery);