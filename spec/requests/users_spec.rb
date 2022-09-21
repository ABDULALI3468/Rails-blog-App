require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/users/index'
      expect(response).to have_http_status(:success)
    end

    it 'Should render the index template' do
      get '/users#index'
      expect(response).to render_template(:index)
    end

    it 'Should include the correct placeholder' do
      get '/users#index'
      expect(response.body).to include('Here is a list of USERS')
    end
  end


  describe 'GET /show' do
    it 'returns http success' do
      get '/users/show'
      expect(response).to have_http_status(:success)
    end

    it 'Should render the index template' do
      get '/users/show'
      expect(response).to render_template(:show)
    end

    it 'Should include the correct placeholder' do
      get '/users/show'
      expect(response.body).to include('Here is a USERS by ID')
    end
  end

end
