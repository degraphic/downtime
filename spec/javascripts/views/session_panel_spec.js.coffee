describe 'Downtime.SessionPanel', ->

  beforeEach ->
    # TODO: Work out a better way to share fixtures with the implementation
    setFixtures("<div id='sessionPanel'></div><script id='loggedOut' type='text/html'><a href='/login'>Login</a></script>")

  describe 'when not logged in', ->

    beforeEach ->
      @view = new Downtime.SessionPanel(null)

    it 'renders a login link', ->
      expect(@view).toBeDefined()
      @view.render()
      expect(@view.el.innerHTML).toContain('Login')

  describe 'when logged in', ->

    beforeEach ->
      @view = new Downtime.SessionPanel(null)

    xit 'renders a login link', ->
      pending()
      expect(@view).toBeDefined()
      @view.render()
      expect(@view.el.innerHTML).notToContain('Login')
