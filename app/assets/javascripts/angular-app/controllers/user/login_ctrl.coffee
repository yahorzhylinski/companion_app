angular.module('companion_app').controller 'LoginCtrl',
  class LoginCtrl
    constructor: ($scope, $controller)->
      $controller('LocaleCtrl', {$scope: $scope});