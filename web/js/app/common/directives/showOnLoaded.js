(function() {
  define(['app/app', 'jquery'], function() {
    return angular.module('app').directive('showOnLoaded', function($timeout) {
      return {
        link: function(scope, element, attrs, ctrl) {
          return $timeout(function() {
            return $(element).css('display', 'block');
          });
        }
      };
    });
  });

}).call(this);
