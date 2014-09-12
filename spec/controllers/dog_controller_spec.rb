require 'rails_helper'

RSpec.describe DogController, :type => :controller do

  describe "GET one" do
    it "returns http success" do
      get :one
      expect(response).to have_http_status(:success)
      expect(assigns(:dog)).to eq("before one and two")
    end
  end

  describe "GET two" do
    it "returns http success" do
      get :two
      expect(response).to have_http_status(:success)
      expect(assigns(:dog)).to eq("before one and two")
    end
  end

  describe "GET three" do
    it "returns http success" do
      get :three
      expect(response).to have_http_status(:success)
      expect(assigns(:dog)).to eq("three")
    end
  end

end
