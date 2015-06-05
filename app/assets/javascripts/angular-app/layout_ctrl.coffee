angular.module('companion_app').controller 'LayoutCtrl',
  class LayoutCtrl
    constructor: ($scope, $translate, $controller)->
      
      $controller('LocaleCtrl', {$scope: $scope});

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

      $scope.currentLanguage = 'ru'
      # => change language
      $scope.changeLanguage = ->
        if $scope.currentLanguage == 'ru' then $scope.currentLanguage = 'en' else $scope.currentLanguage = 'ru'
        $translate.use $scope.currentLanguage
        $scope.$emit('locale.changed')

      $scope.isNavbarProfileOpen = false
      # => open navbar above avatar
      $scope.toggleProfileNavbar = ->
        $scope.isNavbarLanguageOpen = false
        $scope.isNavbarProfileOpen = !$scope.isNavbarProfileOpen


angular.module('companion_app')
.config ($translateProvider)->
  # => set default language
  $translateProvider.preferredLanguage('ru');  
