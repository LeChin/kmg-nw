'use strict';

var _email_validate = {
  init: function(){
    this.check_field();
  },

  check_field: function() {
    var _this = this;
    var $email_field = $('input.email');
    $email_field.focus(function() {
      _this.check_length($email_field);
    });
    $email_field.focusout(function() {
      _this.check_length($email_field);
    });
  },

  check_length: function(email_field) {
    var _this = this;
    email_field.on('blur', function() {
      _this.validation(email_field);
      if (email_field.val().length >= 0) {
        _this.validation(email_field);
      } else {
        email_field.off('blur');
        email_field.parent().removeClass('email_with_errors').children('.email_errors').remove();
      }
    });
  },

  validation: function(email_field) {
    var email = email_field.val()
    var reg_ex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
    if(!reg_ex.test(email)) {
      if (!email_field.parent('.input').hasClass('email_with_errors')) {
        email_field.parent('.input').addClass('email_with_errors').append("<span class='email_errors'>Not a Valid Email</span>");
      }
    } else {
      email_field.parent().removeClass('email_with_errors').children('.email_errors').remove();
    }
  },
}
