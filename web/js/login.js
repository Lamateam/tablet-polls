(function() {
  $(document).ready(function() {
    $('[href="#signup"]').click(function() {
      return $('.login_form').fadeOut(150, (function(_this) {
        return function() {
          return $('.registration_form').animate({
            opacity: 1
          }, 150);
        };
      })(this));
    });
    $('[href="#signin"]').click(function() {
      return $('.registration_form').animate({
        opacity: 0
      }, 150, (function(_this) {
        return function() {
          return $('.login_form').fadeIn(150);
        };
      })(this));
    });
    $('.enter_button').click(function() {
      var sendInfo;
      sendInfo = {
        login: $('[name="login"]').val(),
        password: $('[name="password"]').val()
      };
      return $.ajax({
        url: '/api/login',
        type: "POST",
        data: JSON.stringify(sendInfo),
        contentType: "application/json",
        complete: function(res) {
          return console.log(res);
        }
      });
    });
    return $('.register_button').click(function() {
      var sendRegisterInfo;
      sendRegisterInfo = {
        login: $('[name="reglogin"]').val(),
        password: $('[name="regpassword"]').val()
      };
      if ($('[name="confirmregpassword"]').val() === sendRegisterInfo.password) {
        return $.ajax({
          url: '/api/registration',
          type: "POST",
          data: JSON.stringify(sendRegisterInfo),
          contentType: "application/json",
          complete: function(res) {
            return console.log(res);
          }
        });
      }
    });
  });

}).call(this);
