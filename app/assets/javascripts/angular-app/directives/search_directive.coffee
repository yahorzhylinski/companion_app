angular.module('companion_app').directive 'searchDirective', ->
  restrict: 'E'
  templateUrl: 'assets/angular-app/templates/directives/search_directive.html.haml'
  controller: ($scope, $locale, Itinerary, Notifier, $filter)->

    DEFAULT_OPTIONS_FOR_AUTOCOMPLETE = { types: ['(cities)'] }

    DATE_SAVE_FORMAT = "YYYY-MM-DDTHH:mm:ssZZ"

    fromPlaceAutocomplete = new google.maps.places.Autocomplete document.getElementById('from_place'), DEFAULT_OPTIONS_FOR_AUTOCOMPLETE
    toPlaceAutocomplete = new google.maps.places.Autocomplete document.getElementById('to_place'), DEFAULT_OPTIONS_FOR_AUTOCOMPLETE    

    $('.datetimepicker').datetimepicker { locale: 'ru' }

    $scope.findItinerary = ()->

      fromPlaceId = fromPlaceAutocomplete.getPlace()
      toPlaceId = toPlaceAutocomplete.getPlace()
      datetimeInput = $('#datetime')

      if moment($('#datetime').val()).utc()._d == "Invalid Date"
        Notifier.open { message: $filter('translate')('SEARCH_FORM_DATETIME_REQUIRED'), type: 'danger' } 
        return
      if !fromPlaceId
        Notifier.open { message: $filter('translate')('SEARCH_FORM_FROM_REQUIRED'), type: 'danger' } 
        return
      if !toPlaceId
        Notifier.open { message: $filter('translate')('SEARCH_FORM_TO_REQUIRED'), type: 'danger' } 
        return
      if fromPlaceId.place_id == toPlaceId.place_id 
        Notifier.open { message: $filter('translate')('SEARCH_FORM_FROM_TO_UNIQUE'), type: 'danger' } 
        return

      Itinerary.findItinerary fromPlaceId.place_id, toPlaceId.place_id