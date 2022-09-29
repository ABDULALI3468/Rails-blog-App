require 'rails_helper'

RSpec.feature 'User/show', type: :feature do
  before(:all) do
    Like.destroy_all
    Comment.destroy_all
    Post.destroy_all
    User.destroy_all
    @user_1 = User.create(name: 'ABDUL ALI',
                          photo: 'https://th.bing.com/th/id/R.cac8d4103bf81d61aaaaacfb235fe5f4?rik=YF8SpstLPwM%2f1w&pid=ImgRaw&r=0&sres=1&sresct=1', bio: 'Teacher from Pakistan')
    @post_1 = Post.create(authorId: @user_1.id, title: 'Post One',
                          text: 'This is the post one. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!')
    Comment.create(post_id: @post_1.id, authorId: @user_1.id,
                   text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!')
    Like.create(post_id: @post_1.id, authorId: @user_1.id)
    @post_2 = Post.create(authorId: @user_1.id, title: 'Post Two',
                          text: 'This is the post two. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!')
    @post_3 = Post.create(authorId: @user_1.id, title: 'Post Three',
                          text: 'This is the post three. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!')
    @post_4 = Post.create(authorId: @user_1.id, title: 'Post Four',
                          text: 'This is the post four. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!')
  end

  it 'I can see the users profile picture.' do
    visit user_path(@user_1.id)
    expect(page).to have_xpath("//img[contains(@src,'https://th.bing.com/th/id/R.cac8d4103bf81d61aaaaacfb235fe5f4?rik=YF8SpstLPwM%2f1w&pid=ImgRaw&r=0&sres=1&sresct=1')]")
  end

  it 'I can see the users username.' do
    visit(root_path)
    expect(page).to have_content('ABDUL ALI')
  end

  it 'I can see the number of posts each user has written.' do
    visit user_path(@user_1.id)
    expect(page).to have_content('Number of posts: 4')
  end

  it 'I can see the users Bio.' do
    visit user_path(@user_1.id)
    expect(page).to have_content('Bio: Teacher from Pakistan')
  end

  it 'has recent three posts' do
    visit user_path(@user_1.id)
    expect(page).to have_content('Post Four')
    expect(page).to have_content('Post Three')
    expect(page).to have_content('Post Two')
  end

  it 'I can see a button that lets me view all of a users posts.' do
    visit user_path(@user_1.id)
    expect(page).to have_selector(:link_or_button, 'See all posts')
  end

  it 'redirects to user post show page' do
    visit user_path(@user_1.id)
    click_link 'Title : Post Two'
    expect(page).to have_current_path(user_post_path(@user_1, @post_2))
  end

  it 'When I click to see all posts, it redirects me to the users posts index page.' do
    visit user_path(@user_1.id)
    click_link 'See all posts'
    expect(page).to have_current_path(user_posts_path(@user_1.id))
  end
end
