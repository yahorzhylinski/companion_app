angular.module('companion_app').controller 'LayoutCtrl',
  class LayoutCtrl
    constructor: ($scope)->

      mobileView = 992

      $scope.getWidth = ->
        window.innerWidth

      $scope.$watch $scope.getWidth, (newValue, oldValue) ->
        if newValue >= mobileView && newValue > mobileView
          $scope.toggle = true
        else
          $scope.toggle = false

      $scope.toggleSidebar = ->
        $scope.toggle = !$scope.toggle

      window.onresize = ->
        $scope.$apply()