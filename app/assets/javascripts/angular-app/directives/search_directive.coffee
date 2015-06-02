angular.module('companion_app').directive 'searchDirective', ->
  restrict: 'E'
  templateUrl: 'assets/angular-app/templates/directives/search_directive.html.haml'
  controller: ($scope, $locale, $filter)->
    
    DEFAULT_OPTIONS_FOR_AUTOCOMPLETE = { types: ['(cities)'] }

    fromPlaceAutocomplete = new google.maps.places.Autocomplete document.getElementById('from_place'), DEFAULT_OPTIONS_FOR_AUTOCOMPLETE
    toPlaceAutocomplete = new google.maps.places.Autocomplete document.getElementById('to_place'), DEFAULT_OPTIONS_FOR_AUTOCOMPLETE    

    $('#datetimepicker').datetimepicker({locale: 'ru'});