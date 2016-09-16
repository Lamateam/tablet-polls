define [ 'app/app' ], ->
  angular.module('app').controller 'LoginController', [ 'UsersService', '$window', LoginController ]

class LoginController
  constructor: (@UsersService, @window)->
    @data = { login: '', password: '' }
  login: (form, $event)->
    $event.preventDefault()
    if form.$valid
      @UsersService
      .login @data
      .then (data)=>
        if data.success is 1
          @window.location.href = '/profile'
       
 