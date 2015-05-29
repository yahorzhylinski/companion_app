angular.module('companion_app', ['ui.bootstrap', 'ui.router','pascalprecht.translate', 'templates'])
.config ['$stateProvider', ($stateProvider)->
  $stateProvider
  .state 'root', {
    url: '',
    templateUrl: 'assets/angular-app/templates/welcome/index.html.haml',
    controller: 'WelcomeIndexCtrl'
  }

]