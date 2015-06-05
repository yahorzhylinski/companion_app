angular.module('companion_app')
.config ($translateProvider)->
  $translateProvider.translations 'ru', {
    'SEARCH_FORM_FROM_LABEL': "Откуда"
    'SEARCH_FORM_TO_LABEL': "Куда"
    'SEARCH_FORM_DATE_LABEL': "Дата"
    'SEARCH_FORM_FIND_CAR_BTN': "Найти машину!"
    'SEARCH_FORM_DATETIMEPICKER_LABEL': "Дата и время",
    'SEARCH_FORM_FROM_REQUIRED': "Вы должны выбрать пункт отправления"
    'SEARCH_FORM_TO_REQUIRED': "Вы должны выбрать пункт прибытия"
    'SEARCH_FORM_DATETIME_REQUIRED': "Вы должны выбрать дату и время"
    'SEARCH_FORM_FROM_TO_UNIQUE': "Пункты отправления и прибытия должны быть разными"
  }