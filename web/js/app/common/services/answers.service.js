(function() {
  var AnswersService;

  define(['app/app'], function() {
    return angular.module('app').service('AnswersService', ['$rootScope', '$resource', '$q', AnswersService]);
  });

  AnswersService = (function() {
    function AnswersService(rootScope, resource, q) {
      this.rootScope = rootScope;
      this.q = q;
      this.tabletResource = resource('/api/v1/tabletanswers/:action', null, {
        list: {
          method: 'GET',
          params: {
            action: ''
          }
        }
      });
      this.activeRequest = null;
    }

    AnswersService.prototype.sendAction = function(action, data) {
      if (data == null) {
        data = {};
      }
      this.cancellActiveRequest();
      this.rootScope.$broadcast("loading", true);
      this.activeRequest = this.tabletResource[action](data);
      return this.activeRequest.$promise.then((function(_this) {
        return function(res) {
          _this.rootScope.$broadcast("loading", false);
          return res;
        };
      })(this));
    };

    AnswersService.prototype.list = function(data) {
      if (data == null) {
        data = {};
      }
      return this.sendAction('list', data);
    };

    AnswersService.prototype.cancellActiveRequest = function() {
      this.rootScope.$broadcast("loading", false);
      if ((this.activeRequest !== null) && (typeof this.activeRequest.$cancelRequest === 'function')) {
        return this.activeRequest.$cancelRequest();
      }
    };

    return AnswersService;

  })();

}).call(this);
