// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require magnific-popup
//= require_tree .


$(document).ready(function ($) {
  // print pdf
  $(document).on('click', '.print-pdf', function(){
    window.print();
  });

  // nav dropdown
  $(document).on('click', '#nav-toggle', function() {
    $(this).toggleClass('is-active');
    $('#nav-menu-toggle').toggleClass('is-active');
  });

  // youtube popup
  $('.js-video').magnificPopup({
    type: 'iframe',
    iframe: {
      markup: '<div class="mfp-iframe-scaler">'+
                '<div class="mfp-close"></div>'+
                '<iframe class="mfp-iframe" frameborder="0" allowfullscreen></iframe>'+
              '</div>',
      patterns: {
        youtube: {
          index: 'youtube.com/',
          id: 'v=',
          src: '//www.youtube.com/embed/%id%?autoplay=1'
        }
      },
      srcAction: 'iframe_src',
    }
  });

  // about page fixed sidebar
  var $sticky  = $(".sticky-sidebar");

  if ($sticky) {

    var heroHeight = $('.bordered-hero').height() + 240;

    $(window).scroll(function() {
      stickIt();
    });

    $(window).resize(function() {
      stickIt();
    });

    var sticky_container = document.createElement("div"),
    $sticky_container = $(sticky_container).addClass("sticky-container"),
    $sticky2 = $sticky[0].cloneNode(true),
    eventTimeout;


    $("body").append($sticky_container);
    $sticky_container[0].append($sticky2);

    function stickIt() {
      // ignore resize events as long as an actualResizeHandler execution is in the queue
      if ( !eventTimeout ) {
        eventTimeout = setTimeout(function() {
          eventTimeout = null;
          $sticky2.style.visibility = $sticky[0].getBoundingClientRect().top<0 ? "visible" : "hidden";
         }, 10);
      }
    };
    stickIt();
    
    $(window).on("scroll resize", stickIt());
  }

});

