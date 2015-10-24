class Experiment.Participant extends Backbone.Model
  url: ->
    if @.isNew()
      '/participants'
    else
      "/participants/#{@id}"

  initialize: ->
    @results = new Experiment.Results()