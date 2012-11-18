describe 'Downtime.UserSession', ->
  it 'is logged out by default', ->
    user = new Downtime.UserSession
    expect(user.get('loggedIn')).toEqual(false)
