require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/posts/index'
      expect(response).to have_http_status(:success)
    end

    it 'Should render the index template' do
      get '/posts/index'
      expect(response).to render_template(:index)
    end

    it 'Should include the correct placeholder' do
      get '/posts/index'
      expect(response.body).to include('Here are the list of POSTS')
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/posts/show'
      expect(response).to have_http_status(:success)
    end

    it 'Should render the index template' do
      get '/posts/show'
      expect(response).to render_template(:show)
    end

    it 'Should include the correct placeholder' do
      get '/posts/show'
      expect(response.body).to include('Here are the list of POSTS for specific USER')
    end
  end
end
