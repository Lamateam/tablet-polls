(function() {
  var LoginController;

  define(['app/app'], function() {
    return angular.module('app').controller('LoginController', ['UsersService', '$window', LoginController]);
  });

  LoginController = (function() {
    function LoginController(UsersService, window) {
      this.UsersService = UsersService;
      this.window = window;
      this.data = {
        login: '',
        password: ''
      };
    }

    LoginController.prototype.login = function(form) {
      if (form.$valid) {
        return this.UsersService.login(this.data).then((function(_this) {
          return function(data) {
            if (data.message === void 0) {
              return _this.window.location.href = '/profile';
            }
          };
        })(this));
      }
    };

    return LoginController;

  })();

}).call(this);