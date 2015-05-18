angular.module('companion_app', ['ngRoute','pascalprecht.translate', 'templates'])
.config ($routeProvider)->
  $routeProvider
  .when('/', {
    templateUrl: 'angular-app/templates/login/new.html',
    controller: 'WelcomeIndexCtrl'
  })
  .otherwise({
      redirectTo: '/'
  });