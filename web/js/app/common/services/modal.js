(function() {
  var ModalService;

  define(['app/app'], function() {
    return angular.module('app').service('ModalService', ['ngDialog', ModalService]);
  });

  ModalService = (function() {
    ModalService.prototype.defaultOptions = {
      className: 'ngdialog-theme-default',
      controllerAs: '$ctrl'
    };

    function ModalService(ngDialog) {
      this.ngDialog = ngDialog;
    }

    ModalService.prototype.open = function(options) {
      options = angular.merge(options, this.defaultOptions);
      return this.ngDialog.open(options);
    };

    ModalService.prototype.closeAll = function() {
      return this.ngDialog.closeAll();
    };

    return ModalService;

  })();

}).call(this);
