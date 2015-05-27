angular.module('companion_app').directive 'search-directive', ->
  restrict: 'E'
  template: 'assets/angular-app/templates/directives/search_directive.html.haml'
  controller: ($scope)->
    console.log "testt"

