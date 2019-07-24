require 'rails_helper'
require_relative "../support/devise"

RSpec.describe GamesController, type: :controller do
  
  describe "static_pages#index" do
    it "should successfully show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "games#new action" do
  login_user
    it "should return 200:OK" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  
end
