class Experiment.ExperimentView extends Backbone.View
  template: JST['questions_form']

  className: 'dialog-form'

  render: ->
    @$el.html(@template())
    this
