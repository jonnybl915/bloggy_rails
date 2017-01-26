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


Given(/^That (\S+) does not have an account$/) do |email|
  expect(User.find_by(email: email)).to eq nil
end

# step here taken care of above #

And(/^I try to log in as (\S+)$/) do |email|
  fill_in('user_email', with: email)
  fill_in('user_password', with: 'password')
  click_on('Log in')
end

Then(/^I am still on the login page$/) do
  expect(page).to have_content 'Log in'
end

And(/^I should see that the email\/password combination is invalid$/) do
  expect(page).to have_content 'Invalid Email or password'
end