require 'spec_helper'

describe 'Home page', :js do
  it 'opens the home page' do
    visit root_path
    page.should have_content('Hello')
  end
end
