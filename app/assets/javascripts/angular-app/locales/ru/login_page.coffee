angular.module('companion_app')
.config ($translateProvider)->
  $translateProvider.translations 'ru', {
    'LOGIN_PAGE_LOGIN_TITLE': "Вы можете войти на сайт используя соц. сети:"
  }