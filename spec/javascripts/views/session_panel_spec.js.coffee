describe 'Downtime.SessionPanel', ->

  beforeEach ->
    # TODO: Work out a better way to share fixtures with the implementation
    setFixtures("<div id='sessionPanel'></div>")

  describe 'when not logged in', ->

    beforeEach ->
      @view = new Downtime.SessionPanel(null)
      @view.render()

    it 'renders a login link', ->
      expect(@view.el.innerHTML).toContain('Login')

    it 'the form is initially hidden', ->
      console.log($('html')[0].innerHTML)
      form = $('form', @view.el)
      expect(form).not.toBeVisible()

    it 'the login link opens the form', ->
      $('#login').click()
      form = $('form', @view.el)
      expect(form).toBeVisible()


  describe 'when logged in', ->

    beforeEach ->
      @view = new Downtime.SessionPanel(null)

    xit 'renders a login link', ->
      pending()
      expect(@view).toBeDefined()
      @view.render()
      expect(@view.el.innerHTML).notToContain('Login')
