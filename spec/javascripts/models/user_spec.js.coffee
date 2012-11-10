describe 'Downtime.User', ->
  it 'has a name', ->
    user = new Downtime.User({ first_name: 'Bob', last_name: 'Roberts' })
    expect(user.name()).toEqual('Bob Roberts')

  it 'has a default type', ->
    user = new Downtime.User
    expect(user.get('user_type')).toEqual 'standard'



