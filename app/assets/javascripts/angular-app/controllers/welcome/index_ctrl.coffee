angular.module('companion_app').controller 'WelcomeIndexCtrl',
  class WelcomeIndexCtrl
    constructor: ($scope, $translate, $controller)->
      $controller('LocaleCtrl', {$scope: $scope});