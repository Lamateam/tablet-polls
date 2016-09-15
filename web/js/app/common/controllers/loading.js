(function() {
  var LoadingController;

  define(['app/app'], function() {
    return angular.module('app').controller('LoadingController', ['$rootScope', LoadingController]);
  });

  LoadingController = (function() {
    function LoadingController(rootScope) {
      rootScope.$on("loading", (function(_this) {
        return function(event, data) {
          return _this.loading = data;
        };
      })(this));
    }

    return LoadingController;

  })();

}).call(this);
