class Downtime.Router extends Backbone.Router
  routes: 
    "": "home"

  home: ->

$ ->
  router = new Downtime.Router
  Backbone.history.start()
  session = new Downtime.UserSession()
  view = new Downtime.SessionPanel(session)
  view.render()

