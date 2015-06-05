angular.module('companion_app').controller 'AboutCtrl',
  class AboutCtrl
    constructor: ($scope, $controller)->
      $controller('LocaleCtrl', {$scope: $scope});