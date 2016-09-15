# Глобальный объект приложения единый для всех модулей
define [ 'angular' ], ->
  angular
    .module 'app', [ ]
    .config ($interpolateProvider)->
      $interpolateProvider.startSymbol('{[').endSymbol(']}')
