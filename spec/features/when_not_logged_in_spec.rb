require 'rails_helper'

feature 'when_not_logged_in tests' do

  scenario 'submitting names returns new game' do
    visit('/')
    expect(page).to have_content 'You need to sign in or sign up before continuing.'
  end

  scenario 'sign up' do
    visit('/users/sign_up')
    fill_in :user_email, with: 'ben@ben.com'
    fill_in :user_password, with: 'ben-ben'
    fill_in :user_password_confirmation, with: 'ben-ben'
    click_button "Sign up"
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end

end