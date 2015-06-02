angular.module('companion_app')
.config ($translateProvider)->
  $translateProvider.translations 'ru', {
    'WELCOME_INDEX_DESCRIPTION': "Вы всегда можете найти себе попутчика!"
    'WELCOME_INDEX_TITLE': "Попутчик.by"
  }

  $translateProvider.preferredLanguage('ru');