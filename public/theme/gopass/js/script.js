(function ($) {
    "use strict";
    $(document).on('click', function (e) {
        var outside_space = $(".outside");
        if (!outside_space.is(e.target) &&
            outside_space.has(e.target).length === 0) {
            $(".menu-to-be-close").removeClass("d-block");
            $('.menu-to-be-close').css('display', 'none');
        }
    })

    $('.prooduct-details-box .close').on('click', function (e) {
        var tets = $(this).parent().parent().parent().parent().addClass('d-none');
        console.log(tets);
    })

    /*----------------------------------------
     passward show hide
     ----------------------------------------*/
    $('.show-hide').show();
    $('.show-hide span').addClass('show');

    $('.show-hide span').click(function () {
        if ($(this).hasClass('show')) {
            $('input[name="login[password]"]').attr('type', 'text');
            $(this).removeClass('show');
        } else {
            $('input[name="login[password]"]').attr('type', 'password');
            $(this).addClass('show');
        }
    });
    $('form button[type="submit"]').on('click', function () {
        $('.show-hide span').addClass('show');
        $('.show-hide').parent().find('input[name="login[password]"]').attr('type', 'password');
    });

    /*=====================
      02. Background Image js
      ==========================*/
    $(".bg-center").parent().addClass('b-center');
    $(".bg-img-cover").parent().addClass('bg-size');
    $('.bg-img-cover').each(function () {
        var el = $(this),
            src = el.attr('src'),
            parent = el.parent();
        parent.css({
            'background-image': 'url(' + src + ')',
            'background-size': 'cover',
            'background-position': 'center',
            'display': 'block'
        });
        el.hide();
    });

    $(".mega-menu-container").css("display", "none");
    $(".header-search").click(function () {
        $(".search-full").addClass("open");
    });
    $(".close-search").click(function () {
        $(".search-full").removeClass("open");
        $("body").removeClass("offcanvas");
    });
    $(".mobile-toggle").click(function () {
        $(".nav-menus").toggleClass("open");
    });
    $(".mobile-toggle-left").click(function () {
        $(".left-header").toggleClass("open");
    });
    $(".bookmark-search").click(function () {
        $(".form-control-search").toggleClass("open");
    })
    $(".filter-toggle").click(function () {
        $(".product-sidebar").toggleClass("open");
    });
    $(".toggle-data").click(function () {
        $(".product-wrapper").toggleClass("sidebaron");
    });
    $(".form-control-search input").keyup(function (e) {
        if (e.target.value) {
            $(".page-wrapper").addClass("offcanvas-bookmark");
        } else {
            $(".page-wrapper").removeClass("offcanvas-bookmark");
        }
    });
    $(".search-full input").keyup(function (e) {
        console.log(e.target.value);
        if (e.target.value) {
            $("body").addClass("offcanvas");
        } else {
            $("body").removeClass("offcanvas");
        }
    });

    $('body').keydown(function (e) {
        if (e.keyCode == 27) {
            $('.search-full input').val('');
            $('.form-control-search input').val('');
            $('.page-wrapper').removeClass('offcanvas-bookmark');
            $('.search-full').removeClass('open');
            $('.search-form .form-control-search').removeClass('open');
            $("body").removeClass("offcanvas");
        }
    });
    $(".mode").on("click", function () {
        $('.mode i').toggleClass("fa-moon-o").toggleClass("fa-lightbulb-o");
        $('body').toggleClass("dark-only");
    });




    
})(jQuery);

$('.loader-wrapper').fadeOut('slow', function () {
    $(this).remove();
});

$(window).on('scroll', function () {
    if ($(this).scrollTop() > 600) {
        $('.tap-top').fadeIn();
    } else {
        $('.tap-top').fadeOut();
    }
});



$('.tap-top').click(function () {
    $("html, body").animate({
        scrollTop: 0
    }, 600);
    return false;
});

function toggleFullScreen() {
    if ((document.fullScreenElement && document.fullScreenElement !== null) ||
        (!document.mozFullScreen && !document.webkitIsFullScreen)) {
        if (document.documentElement.requestFullScreen) {
            document.documentElement.requestFullScreen();
        } else if (document.documentElement.mozRequestFullScreen) {
            document.documentElement.mozRequestFullScreen();
        } else if (document.documentElement.webkitRequestFullScreen) {
            document.documentElement.webkitRequestFullScreen(Element.ALLOW_KEYBOARD_INPUT);
        }
    } else {
        if (document.cancelFullScreen) {
            document.cancelFullScreen();
        } else if (document.mozCancelFullScreen) {
            document.mozCancelFullScreen();
        } else if (document.webkitCancelFullScreen) {
            document.webkitCancelFullScreen();
        }
    }
}
(function ($, window, document, undefined) {
    "use strict";
    var $ripple = $(".js-ripple");
    $ripple.on("click.ui.ripple", function (e) {
        var $this = $(this);
        var $offset = $this.parent().offset();
        var $circle = $this.find(".c-ripple__circle");
        var x = e.pageX - $offset.left;
        var y = e.pageY - $offset.top;
        $circle.css({
            top: y + "px",
            left: x + "px"
        });
        $this.addClass("is-active");
    });
    $ripple.on(
        "animationend webkitAnimationEnd oanimationend MSAnimationEnd",
        function (e) {
            $(this).removeClass("is-active");
        });


})(jQuery, window, document);


// active link

$(".chat-menu-icons .toogle-bar").click(function () {
    $(".chat-menu").toggleClass("show");
});




$(".mobile-title svg").click(function () {
    $(".header-mega").toggleClass("d-block");
});

$(".onhover-dropdown").on("click", function () {
    $(this).children('.onhover-show-div').toggleClass("active");
});

// if ($(window).width() <= 991) {
//     $(".left-header .link-section").children('ul').css('display', 'none');
//     $(this).parent().children('ul').toggleClass("d-block").slideToggle();
// }


// if ($(window).width() < 991) {
//     $('<div class="bg-overlay"></div>').appendTo($('body'));
//     $(".bg-overlay").on("click", function () {
//         $(".page-header").addClass("close_icon");
//         $(".sidebar-wrapper").addClass("close_icon");
//         $(this).removeClass("active");
//     });

//     $(".toggle-sidebar").on("click", function () {
//         $(".bg-overlay").addClass("active");
//     });
//     $(".back-btn").on("click", function () {
//         $(".bg-overlay").removeClass("active");
//     });
// }

$("#flip-btn").click(function(){
    $(".flip-card-inner").addClass("flipped")
});

$("#flip-back").click(function(){
    $(".flip-card-inner").removeClass("flipped")
})