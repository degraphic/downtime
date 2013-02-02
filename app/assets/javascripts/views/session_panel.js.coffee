class Downtime.SessionPanel extends Backbone.View
  el: '#sessionPanel'

  initialize: (model) ->
    @loggedOutTemplate ||= JST['templates/session_panel/logged_out']
    @loggedInTemplate ||= JST['templates/session_panel/logged_in']
    @model = model

  events:
    'click #login': 'openForm'
    'click #sign_in': 'submitForm'

  render: ->
    @$el.empty().html @getTemplate()
    $('form', @$el).hide()

  getTemplate: ->
    if @model && @model.get('loggedIn')
      @loggedInTemplate({ model: @model })
    else
      @loggedOutTemplate({ model: @model })

  openForm: ->
    $('form', @$el).show()

  submitForm: (event) ->
    data = $('form', @$el).serialize()
    $.ajax url: '/users/sign_in',
      type: 'POST',
      beforeSend: (xhr) -> xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content')),
      data: data,
      success: (response) -> console.log 'success'
    event.preventDefault()

