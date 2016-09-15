(function() {
  var PollsService;

  define(['app/app'], function() {
    return angular.module('app').service('PollsService', ['$rootScope', '$resource', '$q', PollsService]);
  });

  PollsService = (function() {
    function PollsService(rootScope, resource, q) {
      this.rootScope = rootScope;
      this.q = q;
      this.tabletResource = resource('/api/v1/polls/:action', null, {
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
        },
        save: {
          method: 'PUT',
          params: {
            action: ''
          }
        }
      });
      this.activeRequest = null;
    }

    PollsService.prototype.sendAction = function(action, data) {
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

    PollsService.prototype.create = function(data) {
      return this.sendAction('create', data);
    };

    PollsService.prototype.list = function(data) {
      if (data == null) {
        data = {};
      }
      return this.sendAction('list', data);
    };

    PollsService.prototype.save = function(data) {
      return this.sendAction('save', data);
    };

    PollsService.prototype.cancellActiveRequest = function() {
      this.rootScope.$broadcast("loading", false);
      if ((this.activeRequest !== null) && (typeof this.activeRequest.$cancelRequest === 'function')) {
        return this.activeRequest.$cancelRequest();
      }
    };

    return PollsService;

  })();

}).call(this);
