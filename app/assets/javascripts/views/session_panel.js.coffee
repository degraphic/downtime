class Downtime.SessionPanel extends Backbone.View
  el: '#sessionPanel'

  initialize: (model) ->
    @loggedOutTemplate ||= JST['templates/session_panel/logged_out']
    @model = model

  render: ->
    @$el.empty().html(@loggedOutTemplate(@model))
