angular.module('companion_app')
.config ($translateProvider)->
  $translateProvider.translations 'ru', {
    'SEARCH_FORM_FROM_LABEL': "Откуда"
    'SEARCH_FORM_TO_LABEL': "Куда"
    'SEARCH_FORM_DATE_LABEL': "Дата"
    'SEARCH_FORM_DATEPICKER_TODAY': "Сегодня"
    'SEARCH_FORM_DATEPICKER_CLEAR': "Очистить"
    'SEARCH_FORM_DATEPICKER_CLOSE': "Закрыть"
  }

  $translateProvider.preferredLanguage('ru');