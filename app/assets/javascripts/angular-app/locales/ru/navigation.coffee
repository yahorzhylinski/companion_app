angular.module('companion_app')
.config ($translateProvider)->
  $translateProvider.translations 'ru', {
    'NAVIGATION_ROOT_LINK': "Найти машину"
    'NAVIGATION_ABOUT_LINK': "О нас"
  }