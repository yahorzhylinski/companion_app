angular.module('companion_app', ['ui.bootstrap', 'ui.router','pascalprecht.translate', 'templates', 'cgNotify'])
.config ['$stateProvider', ($stateProvider)->
  $stateProvider
  .state 'root', {
    url: '/',
    templateUrl: 'assets/angular-app/templates/welcome/index.html.haml',
    controller: 'WelcomeIndexCtrl'
  }
  .state 'login', {
    url: '/login',
    templateUrl: 'assets/angular-app/templates/login/new.html.haml',
    controller: 'LoginCtrl'    
  }
  .state 'about', {
    url: '/about',
    templateUrl: 'assets/angular-app/templates/about/index.html.haml',
    controller: 'AboutCtrl'
  }

]