// This file is compiled into fae/application.js
// use this as another manifest file if you have a lot of javascript to add
// or just add your javascript directly to this file

var KmgAdmin = {

  init: function() {
    var _this = this;

    _this.check_media_type('#medium_media_type');

    $('#medium_media_type').on('change', function() {
      _this.check_media_type($(this));
    });

  },

  check_media_type: function(field) {
    console.log($(field).val());
    if ($(field).val() == 'Video') {
      $('.js-photo-section').addClass('hidden');
      $('.js-video-section').removeClass('hidden');
    } else if ($(field).val() == 'Photo')  {
      $('.js-video-section').addClass('hidden');
      $('.js-photo-section').removeClass('hidden');
    }
  }

};

$(function() {
  KmgAdmin.init();
});
