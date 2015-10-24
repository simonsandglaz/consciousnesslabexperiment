class Experiment.ExperimentView extends Backbone.View
  template: JST['experiment']

  className: 'dialog-form'

  render: ->
    console.log('rendering')
    @$el.html(@template())
    this
