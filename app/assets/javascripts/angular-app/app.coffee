angular.module('companion_app', ['ngRoute','pascalprecht.translate', 'templates'])
.config ['$routeProvider', ($routeProvider)->
  $routeProvider
  .when '/', {
    templateUrl: 'welcome/index.html',
    controller: 'WelcomeIndexCtrl'
  }

]