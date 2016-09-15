# Конвертируем даты при помощи moment.js
define [ 'moment', 'app/app' ], (moment)->
  angular.module('app').filter 'formatDate', ->
    (mixedVar, output_format = 'DD.MM.YYYY', input_format)->
      moment(mixedVar, input_format).format output_format
