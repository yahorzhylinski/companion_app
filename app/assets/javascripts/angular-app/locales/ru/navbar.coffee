angular.module('companion_app')
.config ($translateProvider)->
  $translateProvider.translations 'ru', {
    'NAVBAR_LOGIN_BTN': "Войти"
  }