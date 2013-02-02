describe 'Downtime.UserSession', ->
  it 'is logged out by default', ->
    session = new Downtime.UserSession
    expect(session.get('loggedIn')).toEqual(false)

  xit 'logs in a user with valid credentials', ->
    # TODO: Mock the Ajax request to return valid auth token on login
    session = new Downtime.UserSession
    session.login('Bob', 'secret')
    expect(session.get('loggedIn')).toEqual(true)

  xit 'does not log in a user with invalid credentials', ->
    # TODO: Mock the Ajax request to return error on login
    session = new Downtime.UserSession
    session.login('Bob', 'wrongPassword')
    expect(session.get('loggedIn')).toEqual(false)

