class Experiment.Router extends Backbone.Router
  routes:
    '': 'showIndex'

  showIndex: =>
    @sign_up_view = new Experiment.WelcomeView()
    $('#forms').html(@sign_up_view.render().el)