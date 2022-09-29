require 'rails_helper'

RSpec.describe 'User/index', type: :feature do
  before(:all) do
    Like.destroy_all
    Comment.destroy_all
    Post.destroy_all
    User.destroy_all
    @user_1 = User.create(name: 'ABDUL ALI',
                          photo: 'https://th.bing.com/th/id/R.cac8d4103bf81d61aaaaacfb235fe5f4?rik=YF8SpstLPwM%2f1w&pid=ImgRaw&r=0&sres=1&sresct=1', bio: 'Teacher from Pakistan')
    @post_1 = Post.create(authorId: @user_1.id, title: 'Post One',
                          text: 'This is the post one. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!')
  end

  it 'I can see the username of all other users.' do
    visit(root_path)
    expect(page).to have_content('Number of posts: 1')
  end

  it 'I can see the profile picture for each user.' do
    visit(users_path)
    expect(page).to have_xpath("//img[contains(@src,'https://th.bing.com/th/id/R.cac8d4103bf81d61aaaaacfb235fe5f4?rik=YF8SpstLPwM%2f1w&pid=ImgRaw&r=0&sres=1&sresct=1')]")
  end

  it 'I can see the number of posts each user has written.' do
    visit(root_path)
    expect(page).to have_content('Number of posts: 1')
  end

  it 'When I click on a user, I am redirected to that users show page.' do
    visit root_path
    click_link 'ABDUL ALI'
    expect(page).to have_current_path user_path(@user_1.id)
  end
end
