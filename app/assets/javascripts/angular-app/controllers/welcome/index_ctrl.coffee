angular.module('companion_app').controller 'WelcomeIndexCtrl',
  class WelcomeIndexCtrl
    constructor: ($scope, $translate)->
      
      $scope.findFormVisible = false

      $scope.openSearchForm = ()->
        console.log "test"
        $scope.findFormVisible = true

