require 'spec_helper'

describe 'Home page', :js do
  before { visit root_path }

  it 'displays a welcome message' do
    page.should have_content('Hello')
  end

  it 'has a login link' do
    page.should have_link('Login')
  end

  context 'when I click the login button' do
    before { click_link 'Login' }

    it 'I can fill in a username and password' do
      fill_in 'user_email', with: 'bob@example.com'
      fill_in 'user_password', with: 'secret'
      click_button 'sign_in'
    end
  end

end
