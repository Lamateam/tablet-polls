
require.config
  baseUrl: 'js'
  paths:
    "bootstrap": "../vendor/bootstrap/dist/js/bootstrap.min"
    "gentella": "../vendor/gentelella/build/css/custom.min.css"
    "jquery": "../vendor/jquery/dist/jquery.min"
    "sweetalert": "../vendor/sweetalert/dist/sweetalert.min"
    "angular": "../vendor/angular/angular.min"
    "angular-route": "../vendor/angular-route/angular-route.min"
    "angular-resource": "../vendor/angular-resource/angular-resource.min"
    "ng-dialog": "../vendor/ng-dialog/js/ngDialog.min"
    "common":"app/common"
  shim:
    "angular":
      exports: "angular"
    "ng-dialog":
      deps: [ "angular" ]
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