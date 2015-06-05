angular.module('companion_app').factory 'Itinerary', ['$http', ($http) ->
  class Itinerary
    constructor: ->

    findItinerary: (from, to, datetime)->
      request = $http.get '/itineraries/find', params: { from: from, to: to, datetime: datetime }
      request.then (result)->
        result.data


  new Itinerary
]