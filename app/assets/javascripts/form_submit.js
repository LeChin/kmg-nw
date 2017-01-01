'use strict';

var form_submit = {
  init: function() {
    var self = this;
  },

  validate_form: function(object, url) {
    $.ajax({
      url: url,
      type: 'post',
      data: object,
      dataType: 'json',
      success: function(data){
        if (typeof data.email !== 'undefined') {
          $('.js-form').fadeOut(400, function() {
            $('.js-thank-you').delay(400).fadeIn(400);
          });
        }
      }
    });
  },
};
