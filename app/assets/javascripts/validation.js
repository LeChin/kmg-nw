var Validator = {
  init: function () {
    this.validate();
    this.form_validate();
  },

  vars: {
    IS_VALID: ''
  },

  // validate the entire form on submit and stop it if the form is invalid
  form_validate: function () {
    var self = this;
    $('form').on('submit', function (e) {
      e.preventDefault();
      self.vars.IS_VALID = true;
      $('[data-validate]').each(function () {
        if ($(this).data('validate').length) {
          self.judge_it($(this));
        }
      });
      if ($(this).hasClass('new_free_trial_request')) {
        var $email_field = $('input.email');
        if ($email_field.val().length >= 0) {
          _email_validate.validation($email_field);
        };
      };
      if (self.vars.IS_VALID === false) {
        // scrolls to the first error (offset by header height x2) over 300ms
        $('html, body').animate({
            scrollTop: $('.field_with_errors').first().offset().top - ($(".header-wrapper").height() * 2)
        }, 300);
      } else {
        var object = $(this).serialize();
        if ($(this).hasClass('new_free_trial_request')) {
          form_submit.validate_form(object, '/free-trial-request/submit');
        }
      }
    });
  },

  // validate individual judge elements on the blur event
  validate: function () {
    var self = this;
    $('[data-validate]').each(function () {
      var $validation_element = $event_trigger = $(this);
      if ($validation_element.data('validate').length) {
        $event_trigger.blur(function () {
          self.judge_it($validation_element);
        });
      }
    });
  },

  // 'private functions'

  // main judge call
  judge_it: function ($input) {
    var self = this;
    judge.validate($input[0], {
      valid: function () {
        self.create_success_class($input);
      },
      invalid: function (input, messages) {
        self.vars.IS_VALID = false;
        self.create_or_replace_error($input, messages);
      }
    });
  },


  // adds and removes the appropriate classes to display the success styles
  create_success_class: function ($input) {
    $input.addClass('valid').removeClass('is-danger');

    $input.parent().removeClass('field_with_errors').children('.error').remove();
  },

  // adds and removes the appropriate classes to display the error styles
  create_or_replace_error: function ($input, messages) {
    $input.addClass('is-danger').removeClass('valid');

    if ($input.parent('.input').children('.error').length) {
      $input.parent('.input').children('.error').text(messages.join(','));
    } else {
      $input.parent('.input').addClass('field_with_errors').append("<span class='error'>" + messages.join(',') + "</span>");
    }
  },
}
