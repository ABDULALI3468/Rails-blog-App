require 'rails_helper'

RSpec.feature 'Post/show', type: :feature do

  before(:each) do
    @user_1 = User.create(name: 'Test Name', photo: 'https://randomuser.me/api/portraits/men/42.jpg', bio: 'Teacher from Pakistan')
    @post_1 = Post.create(authorId: @user_1.id, title: 'Post One', text: 'This is the post one. Lorem ipsum,')
    Comment.create(post_id: @post_1.id, authorId: @user_1.id, text: 'This is user 1 comment in post 1 Lorem')
    Like.create(post_id: @post_1.id, authorId: @user_1.id)
    @post_2 = Post.create(authorId: @user_1.id, title: 'Post Two', text: 'This is the post two. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!')
    @post_3 = Post.create(authorId: @user_1.id, title: 'Post Three', text: 'This is the post three. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!')
    @post_4 = Post.create(authorId: @user_1.id, title: 'Post Four', text: 'This is the post four. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!')
  end

  it 'I can see the Post Title.' do
    visit user_post_path(@user_1.id, @post_1.id)
    expect(page).to have_content("Post One")
  end

  it 'I can see how many comments it has.' do
    visit user_post_path(@user_1.id, @post_1.id)
    expect(page).to have_content('Comments: 1')
  end

  it 'I can see how many Likes it has.' do
    visit user_post_path(@user_1.id, @post_1.id)
    expect(page).to have_content('Likes: 1')
  end

  it 'I can see who wrote the post.' do
    visit user_post_path(@user_1.id, @post_1.id)
    expect(page).to have_content('Test Name')
  end

  it 'I can see the Post Body.' do
    visit user_post_path(@user_1.id, @post_1.id)
    expect(page).to have_content('This is the post one')
  end

end
