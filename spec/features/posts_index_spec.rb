require 'rails_helper'

RSpec.feature 'Posts/index', type: :feature do

  before(:each) do
    @user_1 = User.create(name: 'ABDUL ALI', photo: 'https://th.bing.com/th/id/R.cac8d4103bf81d61aaaaacfb235fe5f4?rik=YF8SpstLPwM%2f1w&pid=ImgRaw&r=0&sres=1&sresct=1', bio: 'Teacher from Pakistan')
    @post_1 = Post.create(authorId: @user_1.id, title: 'Post One', text: 'This is the post one. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!')
    Comment.create(post_id: @post_1.id, authorId: @user_1.id, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!')
    Like.create(post_id: @post_1.id, authorId: @user_1.id)
    @post_2 = Post.create(authorId: @user_1.id, title: 'Post Two', text: 'This is the post two. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!')
    @post_3 = Post.create(authorId: @user_1.id, title: 'Post Three', text: 'This is the post three. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!')
    @post_4 = Post.create(authorId: @user_1.id, title: 'Post Four', text: 'This is the post four. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!')
  end

  it 'I can see the users profile picture.' do
    visit user_posts_path(@user_1.id)
    expect(page).to have_xpath("//img[contains(@src,'https://th.bing.com/th/id/R.cac8d4103bf81d61aaaaacfb235fe5f4?rik=YF8SpstLPwM%2f1w&pid=ImgRaw&r=0&sres=1&sresct=1')]")
  end

  it 'I can see the users username.' do
    visit user_posts_path(@user_1.id)
    expect(page).to have_content('ABDUL ALI')
  end

  it 'I can see the number of posts the user has written.' do
    visit user_posts_path(@user_1.id)
    expect(page).to have_content('4')
  end

  it 'I can see a posts title.' do
    visit user_posts_path(@user_1.id)
    expect(page).to have_content('Post Four')
  end

  it 'I can see some of the posts body.' do
    visit user_posts_path(@user_1.id)
    expect(page).to have_content('This is the post one.')
  end

  it 'I can see the first comments on a post.' do
    visit user_path(@user_1.id)
    expect(page).to have_content('Comments: 0')
  end

  it 'I can see how many comments a post has.' do
    visit user_path(@user_1.id)
    expect(page).to have_content('Comments: 0')
  end

  it 'I can see how many likes a post has.' do
    visit user_path(@user_1.id)
    expect(page).to have_content('Likes: 0')
  end

  it 'When I click on a post, it redirects me to that posts show page' do
    visit user_path(@user_1.id)
    click_link 'Post Two'
    expect(page).to have_current_path(user_post_path(@user_1, @post_2))
  end

end
