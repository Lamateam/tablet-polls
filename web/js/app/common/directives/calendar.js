(function() {
  define(['moment', 'app/app', 'jquery-ui'], function(moment) {
    return angular.module('app').directive('calendar', function() {
      return {
        restrict: 'A',
        require: 'ngModel',
        scope: {
          calendarOptions: "=",
          minDate: '&',
          maxDate: '&'
        },
        link: function(scope, element, attrs, ctrl) {
          var e, options;
          e = $(element);
          options = {
            pickerButton: attrs.pickerButton,
            parseFormatMoment: attrs.parseFormatMoment,
            dateFormatMoment: attrs.dateFormatMoment,
            constrainInput: attrs.constrainInput,
            dateFormat: attrs.dateFormat,
            defaultDate: attrs.defaultDate,
            changeYear: true,
            yearRange: '-100:+10',
            onSelect: function(date) {
              return ctrl.$setViewValue(date);
            }
          };
          if (scope.calendarOptions) {
            options = angular.extend(options, scope.calendarOptions);
          }
          options.dateFormatMoment = options.dateFormatMoment === void 0 ? 'DD MMMM YYYY' : options.dateFormatMoment;
          options.defaultDate = options.defaultDate === void 0 ? void 0 : moment(options.defaultDate, options.dateFormatMoment).toDate();
          e.datepicker(options);
          if (attrs.minDate !== void 0) {
            scope.$watch(scope.minDate, function(min_date) {
              if (!!min_date) {
                ctrl.$validators['calendar-min'] = function(modelValue, viewValue) {
                  var value;
                  value = modelValue || viewValue;
                  return !moment(min_date, options.dateFormatMoment).isAfter(moment(value, options.dateFormatMoment));
                };
                return e.datepicker('option', 'minDate', moment(min_date, options.dateFormatMoment).toDate());
              }
            });
          }
          if (attrs.maxDate !== void 0) {
            scope.$watch(scope.maxDate, function(max_date) {
              if (!!max_date) {
                ctrl.$validators['calendar-max'] = function(modelValue, viewValue) {
                  var value;
                  value = modelValue || viewValue;
                  return !moment(max_date, options.dateFormatMoment).isBefore(moment(value, options.dateFormatMoment));
                };
                return e.datepicker('option', 'maxDate', moment(max_date, options.dateFormatMoment).toDate());
              }
            });
          }
          if (options.pickerButton !== void 0) {
            e.css({
              width: 0,
              height: 0,
              border: 0
            });
            $(document.body).off('click', options.pickerButton);
            return $(document.body).on('click', options.pickerButton, function() {
              return e.datepicker('show');
            });
          }
        }
      };
    });
  });

}).call(this);
