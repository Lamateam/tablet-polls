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
    return $('[href="#signin"]').click(function() {
      return $('.registration_form').animate({
        opacity: 0
      }, 150, (function(_this) {
        return function() {
          return $('.login_form').fadeIn(150);
        };
      })(this));
    });
  });

}).call(this);
