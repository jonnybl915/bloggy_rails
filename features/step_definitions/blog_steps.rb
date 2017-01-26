Given(/^I'm a user$/) do
 @user = User.create!(email: 'jon@example5.com', password: 'password')
end

When(/^I favorite a post$/) do
  @post = Post.create(title: 'hello-cucumber', body: 'blal;')
  @user.add_favorite(@post)
end

Then(/^that post is in my favorites$/) do
  expect(@user.favorite_posts.include?(@post)).to eq true
end

And(/^I am in the posts' followers$/) do
  expect(@post.followers.include?(@user)).to eq true
end

Given(/^I'm logged in$/) do
  @user = User.create! email: 'a@b.com', password: 'password'
  
  visit '/users/sign_in'
  fill_in 'user_email', with: 'a@b.com'
  fill_in 'user_password', with: 'password'
  click_on 'Log in'
  
end

And(/^I'm viewing "([^"]*)"$/) do |title|
  @post = Post.create!(title: title, body: 'body', user_id: @user.id)
  visit "/posts/#{@post.id}"
  click_on 'favorite'
  
end

When(/^I click the favorite button$/) do
  # Model
  expect(@user.favorite_posts).to include @post
  
  #view
  visit '/users/show_favs'
  expect(page).to have_content 'How to Ruby'
end

Then(/^"([^"]*)" should show up in my favorites$/) do |arg|
  visit '/users/show_favs'
  expect(page).to have_content arg
end


And(/^I'm viewing a post which I have already favorited$/) do
  @post2 = Post.create!(title: 'this post is not my favorite anymore', body: 'body of post', user_id: @user.id)
  @favorite = Favorite.create!(user_id: @user.id, post_id: @post2.id)
  visit "posts/#{@post2.id}"
  expect(@user.favorite_posts).to include @post2
  click_on 'favorite'
end

When(/^I click the unfavorite button$/) do
  # Model
  expect(@user.favorite_posts.include? @post2).to eq false
  end

Then(/^that post is removed from my favorites$/) do
  #view
  visit '/users/show_favs'
  expect(page).to have_no_content(@post2.title)
end