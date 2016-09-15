(function() {
  define(['chart', 'app/app'], function(Chart) {
    return angular.module('app').directive('doughnut', function($timeout) {
      return {
        link: function(scope, element, attrs, ctrl) {
          element = element[0];
          scope.$watch(attrs.doughnut, function(value) {
            if (value) {
              console.log(value);
              return $timeout(function() {
                element.innerHtml = '';
                return new Chart(element, {
                  type: 'doughnut',
                  tooltipFillColor: "rgba(51, 51, 51, 0.55)",
                  data: value
                });
              });
            }
          });
        }
      };
    });
  });

}).call(this);
