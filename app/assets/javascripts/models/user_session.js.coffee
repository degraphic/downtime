class Downtime.UserSession extends Backbone.Model
  url: '/users/sign_in.json',
  paramRoot: 'user',

  defaults:
    loggedIn: false
    email: ''
    password: ''
    name: ''
