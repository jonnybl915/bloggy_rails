Given(/^There exists a user account$/) do
  @user = User.create!(email: 'jon@exampl15.com', password: 'password')
end

When(/^I navigate to the sign in page$/) do
  visit 'users/sign_in'
  save_and_open_page
end

And(/^I log in with the correct credentials$/) do
  fill_in('user_email', with: 'jon@exampl15.com')
  fill_in('user_password', with: 'password')
  click_on('Log in')
end

Then(/^I am logged in$/) do
  visit '/'
  expect(page).to have_content 'All Posts'
end

