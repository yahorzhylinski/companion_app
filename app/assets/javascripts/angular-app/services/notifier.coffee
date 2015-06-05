angular.module('companion_app').service 'Notifier',

  class Notifier
    constructor: (notify) ->
      @notify = notify

    open: (opts) ->
      console.log opts
      if opts.type == "danger"
        opts.classes = "alert-danger"

      opts.position = "right"
      opts.duration = 7000
      
      # => call notification
      @notify opts

  new Notifier  