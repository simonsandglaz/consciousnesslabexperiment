class Experiment.WelcomeView extends Backbone.View
  template: JST['welcome']
  
  className: 'dialog-form'

  events:
    "click button": "showSignUp"

  render: ->
    @$el.html(@template())
    this

  showSignUp: ->
    sign_up_view = new Experiment.SignUpView(model: Experiment.participant)
    @remove()
    $('#forms').html(sign_up_view.render().el)
