angular.module('companion_app').directive 'searchDirective', ->
  restrict: 'E'
  templateUrl: 'assets/angular-app/templates/directives/search_directive.html.haml'
  controller: ($scope, $locale, $filter)->

    # init materialize selects
    $('#hours_start, #minutes_start').material_select();
    
    # init hours and minutes arrays
    # i wrote bicycle because there is no timepicker in materialize and i don't want to use bootstraped timepicker
    #$scope.possibleHours = []
    #index = 0
    #while index != 24
    #  $scope.possibleHours.push index
    #  index += 1
    #$scope.possibleMinutes = [0, 15, 30, 45]
    #
    #$scope.hours = [1,2,3,4,5,6];

    DEFAULT_OPTIONS_FOR_AUTOCOMPLETE = { types: ['(cities)'] }

    fromPlaceAutocomplete = new google.maps.places.Autocomplete document.getElementById('from_place'), DEFAULT_OPTIONS_FOR_AUTOCOMPLETE
    toPlaceAutocomplete = new google.maps.places.Autocomplete document.getElementById('to_place'), DEFAULT_OPTIONS_FOR_AUTOCOMPLETE    

    $scope.openDatePicker = ()->
      #$('#itinerary_date').pickadate DATEPICKER_OPTIONS