(function() {
  var TabletService;

  define(['app/app'], function() {
    return angular.module('app').service('TabletService', ['$rootScope', '$resource', '$q', TabletService]);
  });

  TabletService = (function() {
    function TabletService(rootScope, resource, q) {
      this.rootScope = rootScope;
      this.q = q;
      this.tabletResource = resource('/api/v1/tablet/:action', null, {
        create: {
          method: 'POST',
          params: {
            action: ''
          }
        },
        list: {
          method: 'GET',
          params: {
            action: ''
          }
        }
      });
      this.activeRequest = null;
    }

    TabletService.prototype.sendAction = function(action, data) {
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

    TabletService.prototype.create = function(data) {
      return this.sendAction('create', data);
    };

    TabletService.prototype.list = function(data) {
      if (data == null) {
        data = {};
      }
      return this.sendAction('list', data);
    };

    TabletService.prototype.cancellActiveRequest = function() {
      this.rootScope.$broadcast("loading", false);
      if ((this.activeRequest !== null) && (typeof this.activeRequest.$cancelRequest === 'function')) {
        return this.activeRequest.$cancelRequest();
      }
    };

    return TabletService;

  })();

}).call(this);
