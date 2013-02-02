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
    event.preventDefault()
    #TODO: work out how to automap form to model
    @model.set 'email', $("input[name=user_email]").val()
    @model.set 'password', $("input[name=user_password]").val()
    @model.save @model.attributes,
      success: (userSession, response) ->
        console.log 'success'
        console.log response
        #TODO: deserialise the model
        #$(@el).find('input.btn-primary').button('reset');
        #BD.currentUser = new BD.Models.User(response);
        #BD.vent.trigger("authentication:logged_in");
      error: (userSession, response) ->
        console.log 'error'
        result = $.parseJSON(response.responseText)
        console.log result
        #TODO: display an error message
        #$(@el).find('form').prepend(BD.Helpers.Notifications.error(result.error));
        #$(@el).find('input.btn-primary').button('reset') )

