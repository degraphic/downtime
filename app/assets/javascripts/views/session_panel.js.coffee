class Downtime.SessionPanel extends Backbone.View
  el: '#sessionPanel'

  initialize: (model) ->
    @loggedOutTemplate ||= JST['templates/session_panel/logged_out']
    @model = model

  events:
    'click #login': 'openForm'

  render: ->
    @$el.empty().html(@loggedOutTemplate(@model))
    $('form', @$el).hide()

  openForm: ->
    $('form', @$el).show()

