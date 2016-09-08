
require.config
  baseUrl: 'vendor'
  paths:
    "bootstrap": "../vendor/bootstrap/dist/js/bootstrap.min"
    "gentella": "../vendor/gentelella/build/css/custom.min.css"
    "jquery": "../vendor/jquery/dist/jquery.min"
    "sweetalert": "../vendor/sweetalert/dist/sweetalert.min"
    "angular": "../vendor/angular/angular.min"
    "angular-route": "../vendor/angular-route/angular-route.min"
    "angular-resource": "../vendor/angular-resource/angular-resource.min"
  shim:
    "angular-route":
      deps: [ "angular" ]
    "angular-resource":
      deps: [ "angular" ]
    "bootstrap":
      deps: [ "jquery" ]
    "angular-bootstrap":
      deps: [ "bootstrap", "jquery" ]

require [ window.currentPage + "/app" ], (App)->
  new App()
  angular.bootstrap document, [ 'app' ]