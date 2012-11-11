describe 'Downtime.SessionPanel', ->
  beforeEach ->
    # TODO: Work out a better way to share fixtures with the implementation
    setFixtures("<div id='sessionPanel'></div><script id='loggedOut' type='text/html'><a href='/login'>Login</a></script>")
    @view = new Downtime.SessionPanel(null)

  it 'renders a login link', ->
    expect(@view).toBeDefined()
    @view.render()
    expect(@view.el.innerHTML).toContain('Login')
