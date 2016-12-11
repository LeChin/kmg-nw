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
  if($('#sticky-sidebar').length){
    var heroHeight = $('.bordered-hero').height() + 240;

    $(window).scroll(function() {
      var windscroll = $(window).scrollTop();

      $('#sticky-sidebar a').each(function () {
        var currLink = $(this);
        var refElement = $(currLink.attr("href"));

        if ((refElement.position().top + heroHeight) <= windscroll && (refElement.position().top + refElement.height() + heroHeight) > windscroll) {
          $('#sticky-sidebar ul li a').removeClass("active");
          currLink.addClass("active");
        }
        else{
          currLink.removeClass("active");
        }
      });
    });


    var sticky  = document.getElementById("sticky-sidebar"),
    sticky2 = sticky.cloneNode(true);

    sticky2.style.position = "fixed";
    document.body.appendChild(sticky2);

    function stickIt(){
      sticky2.style.visibility = sticky.getBoundingClientRect().top<0 ? "visible" : "hidden";
    }

    stickIt();
    window.addEventListener("scroll", stickIt, false );
  }
});

