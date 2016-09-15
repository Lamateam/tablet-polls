(function() {
  var UsersService;

  define(['app/app'], function() {
    return angular.module('app').service('UsersService', ['$rootScope', '$resource', '$q', UsersService]);
  });

  UsersService = (function() {
    function UsersService(rootScope, resource, q) {
      this.rootScope = rootScope;
      this.q = q;
      this.usersResource = resource('/api/users/:action', null, {
        login: {
          method: "POST",
          params: {
            action: 'login'
          }
        },
        logout: {
          method: "POST",
          params: {
            action: 'logout'
          }
        },
        invite: {
          method: "POST",
          params: {
            action: 'invite'
          }
        },
        password: {
          method: "POST",
          params: {
            action: 'password'
          }
        }
      });
      this.activeRequest = null;
    }

    UsersService.prototype.sendAction = function(action, data) {
      this.cancellActiveRequest();
      this.rootScope.$broadcast("loading", true);
      this.activeRequest = this.usersResource[action](data);
      return this.activeRequest.$promise.then((function(_this) {
        return function(res) {
          _this.rootScope.$broadcast("loading", false);
          return res;
        };
      })(this));
    };

    UsersService.prototype.login = function(data) {
      return this.sendAction('login', data);
    };

    UsersService.prototype.logout = function(data) {
      return this.sendAction('logout', data);
    };

    UsersService.prototype.invite = function(data) {
      return this.sendAction('invite', data);
    };

    UsersService.prototype.password = function(data) {
      return this.sendAction('password', data);
    };

    UsersService.prototype.cancellActiveRequest = function() {
      this.rootScope.$broadcast("loading", false);
      if ((this.activeRequest !== null) && (typeof this.activeRequest.$cancelRequest === 'function')) {
        return this.activeRequest.$cancelRequest();
      }
    };

    return UsersService;

  })();

}).call(this);
