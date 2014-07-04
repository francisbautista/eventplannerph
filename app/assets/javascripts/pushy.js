

/*====================================
=            ON DOM READY            =
====================================*/
$(document).ready(function(){


   var windowWidth = $(window).width();
  
    // Toggle Nav on Click
    $('.open-menu').click(function() {
       if (windowWidth >= 767){
            toggleNav();
        } else {
            toggleNavMobile();
        }      
    });

    $('.main-nav').click(function() {
       if (windowWidth >= 767){
            toggleNav();
        } else {
            toggleNavMobile();
        }      
    });

    // Resize sections on window resize
    $(window).resize(function() {
      
       
       if (windowWidth >= 767){
            toggleNav();
        } else {
            toggleNavMobile();
        }  
               


    });


  
});




// /*========================================
// =            CUSTOM FUNCTIONS            =
// ========================================*/
function toggleNav() {


    if ($('.main-nav').hasClass('active')) {
        $('.main-nav').css('width', '0');
        $('.page-wrap').css('width', '100%');
         $('.navbar').css('width', '100%');
         $('.navbar').css('right', '0');
        //$('.navbar-toggle').css('right', '0');
        $('.main-nav').removeClass('active')
    }

    else {

        $('.main-nav').css('width', '15%');
        $('.page-wrap').css('width', '85%');
        $('.navbar').css('width', '85%');
        $('.navbar').css('right', '15%');
       //$('.navbar-toggle').css('right', '40%');
        $('.main-nav').addClass('active');


    }


}

function toggleNavMobile() {


    if ($('.main-nav').hasClass('active')) {
        $('.main-nav').css('width', '0');
        $('.page-wrap').css('width', '100%');
        $('.page-wrap').css('right', '0');
         $('.navbar').css('width', '100%');
         $('.navbar').css('right', '0');
        //$('.navbar-toggle').css('right', '0');
        $('.main-nav').removeClass('active')
    }

    else {

        $('.main-nav').css('width', '50%');
       //$('.navbar-toggle').css('right', '40%');
        $('.main-nav').addClass('active');


    }


}


