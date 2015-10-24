class Experiment.SignUpView extends Backbone.View
  template: JST['sign_up']

  events:
    'click button': 'showConsentForm'
    'change input': 'inputChange'

  className: 'dialog-form'

  render: ->
    @$el.html(@template())
    this

  inputChange: ->
    @$('input').removeClass('required')
    @$('select').removeClass('required')

  showConsentForm: ->
    if @$('#name').val() == ""
      @$('#name').addClass('required')
    else if @$('#age').val() == ''
      @$('#age').addClass('required')
    else if @$('#gender').val() == 'null'
      @$('#gender').addClass('required')
    else
      @model.set('name', @$('#name').val())
      @model.set('age', @$('#age').val())
      @model.set('gender', @$('#gender').val())
      consent_view = new Experiment.ConsentView(model: @model)
      @remove()
      $('#forms').html(consent_view.render().el)
