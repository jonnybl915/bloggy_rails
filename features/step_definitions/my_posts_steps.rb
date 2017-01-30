Given(/^I sign up as a new user$/) do
  visit '/users/sign_up'
  # @user = User.create!(email: 'jeff@example3.com', password: 'password')
  fill_in('user_email', with: 'jeff@example3.com')
  fill_in('user_password', with: 'password')
  fill_in('user_password_confirmation', with: 'password')
  click_on('Sign up')

end

And(/^I navigate to the create posts page and create a post$/) do
  visit '/posts/new'
  fill_in('title', with: 'TESTING TITLE')
  fill_in('body', with: 'TESTING BODY')
  click_on('Create Post')

end

And(/^I navigate to my dashboard$/) do
visit '/users/show_favs'
  save_and_open_page
end

Then(/^My newly created post is displayed on my dashboard$/) do
  expect(page).to have_content 'TESTING TITLE'
end

