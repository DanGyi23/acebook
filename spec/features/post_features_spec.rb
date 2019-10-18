require 'rails_helper'

feature 'when_not_logged_in tests' do
  feature 'Going to homepage' do
    scenario 'Expects post page' do
      sign_up
      expect(page).to have_content 'Posts'
    end
  end
end