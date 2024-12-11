/************* Main Js File ************************
    Template Name: Kalvin - Portfolio Template
    Author: cosmos-themes
    Version: 2.0
    Copyright 2021
****************************************/


/*==================================

        Table of Content

        1. Window Load Function
            a. Preloader Setup
            b. Portfolio Isotope Setup
        2. Document Ready Function
            a. ScrollIt Setup
            b. Navbar Scrolling Background
            c. Stats Counter Setup
            d. Navbar Close On Click Mobile Responsive
            e. Stellar Setup
            f. Magnific Popup Setup
            g. Blog OwlCarousel Setup
            h. Testimonial OwlCarousel Setup
            i. Contact Form Setup

==================================*/

/*========Window Load Function========*/
$(window).on("load", function() {

    /*========Preloader Setup========*/
    setTimeout(function(){
        $('.preloader').addClass('loaded');
    }, 1000);

    /*========Portfolio Isotope Setup========*/
    if ($(".portfolio-items").length) {
        var $elements = $(".portfolio-items");
        $elements.isotope();
        $(".portfolio-filter ul li").on("click", function() {
            $(".portfolio-filter ul li").removeClass("sel-item");
            $(this).addClass("sel-item");
            var selector = $(this).attr("data-filter");
            $(".portfolio-items").isotope({
                filter: selector,
                animationOptions: {
                    duration: 750,
                    easing: "linear",
                    queue: false,
                },
            });
        });
    }

});

/*========Document Ready Function========*/
$(function() {

    "use strict";
    var wind = $(window);


    //Home Section Height
    function homeHeight() {
        var homeSection = $('#home')

        homeSection.css({
            "height": $(window).height() + "px"
        });
    }
    homeHeight();
    wind.resize(homeHeight);

    /*========ScrollIt Setup========*/
    $.scrollIt({
        upKey: 38, // key code to navigate to the next section
        downKey: 40, // key code to navigate to the previous section
        easing: 'swing', // the easing function for animation
        scrollTime: 600, // how long (in ms) the animation takes
        activeClass: 'active', // class given to the active nav element
        onPageChange: null, // function(pageIndex) that is called when page is changed
        topOffset: -15 // offste (in px) for fixed top navigation
    });

    $(window).scroll(function() {
        var navItem = $('nav .navbar-nav .nav-item').last().find('.nav-link');
       if($(window).scrollTop() + $(window).height() == $(document).height()) {
           if( !navItem.hasClass('active')) {
                $('nav .navbar-nav .nav-item .nav-link').removeClass('active');
                navItem.addClass('last-active'); 
           }
       }
       if( navItem.hasClass('last-active') ) {
           if( $('nav .navbar-nav .nav-item .nav-link').hasClass('active') ) {
                navItem.removeClass('last-active');
           }
        }
    });


    /*========Navbar Scrolling Background========*/
    wind.on("scroll", function() {
        var bodyScroll = wind.scrollTop(),
            navbar = $(".navbar")
        if (bodyScroll > 300) {
            navbar.addClass("fixed-top");
        } else {
            navbar.removeClass("fixed-top");
        }
    });

    /*========Stats Counter Setup========*/
    (function(){
        if($("section.stats").length > 0) {
            var a = 0;
            $(window).on('scroll', function() {
                var oTop = $('section.stats').offset().top - window.innerHeight;
                if (a == 0 && $(window).scrollTop() > oTop) {
                    $('section.stats .single-stat .counter').each(function() {
                        var $this = $(this),
                            countTo = $this.attr('data-count');
                        $({
                            countNum: $this.text()
                        }).animate({
                            countNum: countTo
                        }, {
                            duration: 2000,
                            easing: 'swing',
                            step: function() {
                                $this.text(Math.floor(this.countNum));
                            },
                            complete: function() {
                                $this.text(this.countNum);
                            }
                        });
                    });
                    a = 1;
                }
            });
        }

    })();

    /*========Navbar Close On Click Mobile Responsive========*/
    $(".nav-item .nav-link").on('click', function () {
        $(".navbar-collapse").removeClass("show");
    });

     /*========Stellar Setup========*/
    wind.stellar({
        horizontalScrolling: false,
    })

     /*========Magnific Popup Setup========*/
     $('.portfolio .link').magnificPopup({
        delegate: 'a',
        type: 'image',
        gallery: {
            enabled: true
        }
    });

    /*========Testimonial Owl Carousel Setup========*/
    $(".testimonials .owl-carousel").owlCarousel({
        items: 1,
        loop: true,
        autoplay: true,
        smartSpeed: 500,
    });

    /*========Blog OwlCarousel Setup========*/
    $(".blogs .owl-carousel").owlCarousel({
        loop: true,
        margin: 30,
        autoplay: true,
        smartSpeed: 500,
        responsiveClass: true,
        dots: false,
        responsive: {
            0: {
                items: 1,
            },
            700: {
                items: 2,
            },
            1000: {
                items: 3,
            },
        },
    });

    /*========Contact Form Setup========*/
    $('#contact-form').on('submit', function(e) {
        e.preventDefault();
        var uri = $(this).attr('action');
        $('#form-submit').val('Wait...');
        var name = $('#contact-name').val(),
            email = $('#contact-email').val(),
            message = $('#contact-message').val();
        var required = 0;
        $('.con-validate', this).each(function() {
            if ($(this).val() == '') {
                $(this).addClass('con-error');
                required += 1;
            } else {
                if ($(this).hasClass('con-error')) {
                    $(this).removeClass('con-error');
                    if (required > 0) {
                        required -= 1;
                    }
                }
            }
        });
        if (required === 0) {
            $.ajax({
                type: "POST",
                url: 'mail.php',
                data: {
                    con_name: name,
                    con_email: email,
                    con_message: message
                },
                success: function(data) {
                    $("#contact-form input, #contact-form textarea").val('');
                    $("#contact-submit.primary-button span").html('Done!');
                    $("#contact-submit.primary-button").addClass("ok");
                    showAlertBox('success', "Thank You! Your message has been sent.");
                },
                error: function(jqXHR, e) {
                    $('#contact-submit.primary-button span').html('Failed!');
                    showAlertBox('error', "There was a problem with your submission, please try again.");
                }
            });
        } else {
            console.log("Validation Error");
        }
    })
    $(".con-validate").keyup(function() {
        $(this).removeClass('con-error');
    });

    /********** Adding Alert Box **********/
    $('#contact-submit').before('<div class="alert-container"></div>');

    /********** Function Show Alert Box **********/
    function showAlertBox(response, message) {


        var $alertBox = $('<div class="alert"></div>'),
            $alContainer = $('#contact-form .alert-container');
        if (response == 'success') {
            $alertBox.addClass('alert-success').html(message);
            $alContainer.html($alertBox);
        } else {
            $alertBox.addClass('alert-danger').html(message);
            $alContainer.html($alertBox);
        }
        $alContainer.fadeIn(300).delay(2000).fadeOut(400);
    }

});
