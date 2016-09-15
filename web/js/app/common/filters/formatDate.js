(function() {
  define(['moment', 'app/app'], function(moment) {
    return angular.module('app').filter('formatDate', function() {
      return function(mixedVar, output_format, input_format) {
        if (output_format == null) {
          output_format = 'DD.MM.YYYY';
        }
        return moment(mixedVar, input_format).format(output_format);
      };
    });
  });

}).call(this);
