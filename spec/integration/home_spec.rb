require 'spec_helper'

describe 'Home page', :js do
  before { visit root_path }

  it 'displays a welcome message' do
    page.should have_content('Hello')
  end

  it 'has a login link' do
    page.should have_button('Login')
  end

  context 'when I click the login button' do
    before { click_button 'Login' }

    it 'I can fill in a username and password' do
      page.should have_field 'user_name'
      page.should have_field 'password'
    end
  end

end
