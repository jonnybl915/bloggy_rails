Given(/^that I am logged in as a user$/) do
  @user = User.create!(email: 'jon@test.com', password: 'password')
  visit '/users/sign_in'
  fill_in('user_email', with: 'jon@test.com')
  fill_in('user_password', with: 'password')
  click_on('Log in')
  expect(page).to have_no_content('Log in')
  expect(page).to have_content('Log Out')
end

When(/^I hit the logout button$/) do
  click_on('Log Out')
end

Then(/^I am logged out \(not logged in\)$/) do
  expect(page).to have_no_content('Log Out')
end

And(/^I am on the sign in page$/) do
  expect(page).to have_content('Log in')
end