angular.module('companion_app')
.config ($translateProvider)->
  $translateProvider.translations 'ru', {
    'SEARCH_FORM_FROM_LABEL': "Откуда"
    'SEARCH_FORM_TO_LABEL': "Куда"
    'SEARCH_FORM_DATE_LABEL': "Дата"
    'SEARCH_FORM_FIND_CAR_BTN': "Найти машину!"
    'SEARCH_FORM_DATETIMEPICKER_LABEL': "Дата и время"
  }

  $translateProvider.preferredLanguage('ru');