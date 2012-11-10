class Downtime.User extends Backbone.Model
  defaults:
    user_type: 'standard'

  initialize: ->

  name: ->
    "#{this.get('first_name')} #{this.get('last_name')}"

  getCalendar: (year) ->
    # Create or get the calendar for this year
    Downtime.UserCalendar.new

