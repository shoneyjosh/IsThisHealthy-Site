// Main javascript file
// served for all pages

// Hide top bar when scrolling down and show it again when scrolling up
$(function () {
  var lastScrollTop = 0;
  var $navbar = $('.navbar');

  $(window).scroll(function(event){
    var st = $(this).scrollTop();

    if (st > lastScrollTop) { // scroll down

      // use this is jQuery full is used
      $navbar.fadeOut()

      // use this to use CSS3 animation
      // $navbar.addClass("fade-out");
      // $navbar.removeClass("fade-in");

      // use this if no effect is required
      // $navbar.hide();
    } else { // scroll up

      // use this is jQuery full is used
      $navbar.fadeIn()

      // use this to use CSS3 animation
      // $navbar.addClass("fade-in");
      // $navbar.removeClass("fade-out");

      // use this if no effect is required
      // $navbar.show();
    }
    lastScrollTop = st;
  });
});

//= require jquery
//= require jquery_ujs
