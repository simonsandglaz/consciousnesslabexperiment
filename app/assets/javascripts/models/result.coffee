class Experiment.Result extends Backbone.Model
  url: ->
    if @.isNew()
      '/results'
    else
      "/results/#{@id}"