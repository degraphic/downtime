describe 'Downtime.SessionPanel', ->

  beforeEach ->
    setFixtures("<div id='sessionPanel'></div>")

  describe 'when not logged in', ->

    beforeEach ->
      @model = new Downtime.UserSession
      @view = new Downtime.SessionPanel(@model)
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

    it 'filling in the login form with valid credentials establishes a user session', ->
      $("input[name='user_email']").val('bob@roberts.com')
      $("input[name='user_password']").val('secret')
      $('#sign_in').click()

    xit 'filling in the login form with invalid credentials displays an error message', ->
      pending()

  describe 'when logged in', ->

    beforeEach ->
      # TODO: Setup logged in user session model
      @model = new Downtime.UserSession { loggedIn: true, name: 'Bob Roberts' }
      @view = new Downtime.SessionPanel @model
      @view.render()

    it 'renders a sign out link', ->
      expect(@view.el.innerHTML).toContain('Sign out')

    it 'renders a user name', ->
      expect(@view.el.innerHTML).toContain('Bob Roberts')

    xit 'sign out button ends the user session', ->
      pending()

