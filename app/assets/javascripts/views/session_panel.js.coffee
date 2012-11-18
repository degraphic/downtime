class Downtime.SessionPanel extends Backbone.View
  el: '#sessionPanel'

  initialize: (model) ->
    @loggedOutTemplate ||= _.template($('#loggedOut').html())
    @model = model

  render: ->
    @$el.empty().html(@loggedOutTemplate(@model))
