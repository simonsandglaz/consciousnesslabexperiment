class Experiment.ConsentView extends Backbone.View
  template: JST['consent_form']

  events:
    'click button': 'showExperimentDescription'

  className: 'dialog-form'

  render: ->
    @$el.html(@template())
    this

  showExperimentDescription: ->
    xhr = @model.save()
    @$('button').attr('disabled', true)
    xhr.success =>
      @remove()
      description_view = new Experiment.ExperimentView(model: @model)
      $('#forms').html(description_view.render().el)        

