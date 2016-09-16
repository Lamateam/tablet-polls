define [
# Модули angularJs
  'angular-route',
  'angular-resource',
  'ng-dialog'
# Компоненты модуля
  'app/login/login.controller'
# Общие компоненты
  'common/directives/angularAutofocus'
  'common/factories/errorHttpInterceptor'
  'common/services/alert'
  'common/services/users.service'
  'common/controllers/loading'
], ->
  class LoginApp
    constructor: ()->
      for dependency in [ 'ngRoute', 'ngResource', 'ngDialog' ]
        angular.module('app').requires.push(dependency);

      angular.module('app')
        .config ($routeProvider, $httpProvider)->
          $routeProvider
            .when '/login', { templateUrl: '/templates/login/main.html', controller: 'LoginController', controllerAs: 'LoginController' }
            .otherwise { redirectTo: '/login' }
          $httpProvider.interceptors.push 'errorHttpInterceptor'

