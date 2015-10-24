# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.Experiment =
  init: ->
    Experiment.router = new Experiment.Router()
    Experiment.participant = new Experiment.Participant()
    Backbone.history.start()