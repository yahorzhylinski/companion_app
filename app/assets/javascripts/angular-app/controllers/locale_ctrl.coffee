angular.module('companion_app').controller 'LocaleCtrl',
  class LoginCtrl
    constructor: ($scope, $translate)->
      $scope.locale = 'ru'

      $scope.$on 'locale.changed', (args)->
        $scope.locale = $translate.use()
