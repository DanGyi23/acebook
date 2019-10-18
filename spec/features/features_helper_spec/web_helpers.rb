def sign_up
  visit('/users/sign_up')
  fill_in :user_email, with: 'ben@ben.com'
  fill_in :user_password, with: 'ben-ben'
  fill_in :user_password_confirmation, with: 'ben-ben'
  click_button "Sign up"
end