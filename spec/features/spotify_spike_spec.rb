require 'spec_helper'

feature 'User can see a list of bands' do
  scenario 'view a list of bands' do
    visit '/'
    fill_in 'search_term', with: 'Rolling Stones'
    click_on 'Submit'
    expect(page).to have_content 'Gimme Shelter'
  end
end