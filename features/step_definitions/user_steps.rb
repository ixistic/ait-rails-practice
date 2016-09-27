Given(/^There is a role names admin$/) do
  @role = FactoryGirl.create :role
end

Given(/^I am a admin$/) do
  @user = FactoryGirl.create :user
end

Given(/^I am signed in$/) do
  visit '/users/sign_in'
  fill_in 'user_email', with: @user.email
  fill_in 'user_password', with: @user.password
  click_button 'Log in'
end