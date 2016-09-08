(function() {
  require.config({
    baseUrl: 'vendor',
    paths: {
      "bootstrap": "../vendor/bootstrap/dist/js/bootstrap.min",
      "gentella": "../vendor/gentelella/build/css/custom.min.css",
      "jquery": "../vendor/jquery/dist/jquery.min",
      "sweetalert": "../vendor/sweetalert/dist/sweetalert.min",
      "angular": "../vendor/angular/angular.min",
      "angular-route": "../vendor/angular-route/angular-route.min",
      "angular-resource": "../vendor/angular-resource/angular-resource.min"
    },
    shim: {
      "bootstrap": {
        deps: ["jquery"]
      },
      "angular-bootstrap": {
        deps: ["bootstrap", "jquery"]
      }
    }
  });

  require([window.currentPage + "/app"], function(App) {
    new App();
    return angular.bootstrap(document, ['app']);
  });

}).call(this);
