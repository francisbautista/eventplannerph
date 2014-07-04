

/*====================================
=            ON DOM READY            =
====================================*/
$(function() {
  
    // Toggle Nav on Click
    $('.navbar-toggle').click(function() {
        // Calling a function in case you want to expand upon this.
        toggleNav();
    });

  
});




// /*========================================
// =            CUSTOM FUNCTIONS            =
// ========================================*/
function toggleNav() {


    if ($('.main-nav').hasClass('active')) {
        $('.main-nav').css('width', '0');
        $('.page-wrap').css('width', '100%');
        // $('.navbar').css('width', '100%');
        // $('.navbar').css('right', '0');
        $('.navbar-toggle').css('right', '0');
        $('.main-nav').removeClass('active')
    }

    else {

        $('.main-nav').css('width', '20%');
        $('.page-wrap').css('width', '80%');
        // $('.navbar').css('width', '80%');
        // $('.navbar').css('right', '20%');
        $('.navbar-toggle').css('right', '40%');
        $('.main-nav').addClass('active');


    }

    //$('#site-wrapper').toggleClass('show-nav');
}

