require 'rails_helper'

RSpec.describe CatController, :type => :controller do

  describe "GET one" do
    it "returns http success" do
      get :one
      expect(response).to have_http_status(:success)
      expect(assigns(:cat)).to eq("one")
    end
  end

  describe "GET two" do
    it "returns http success" do
      get :two
      expect(response).to have_http_status(:success)
      expect(assigns(:cat)).to eq("after two")
    end
  end

  describe "GET three" do
    it "returns http success" do
      get :three
      expect(response).to have_http_status(:success)
      expect(assigns(:cat)).to eq("three")
    end
  end

end