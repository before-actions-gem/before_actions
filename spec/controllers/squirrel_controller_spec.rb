require 'rails_helper'

RSpec.describe SquirrelController, :type => :controller do

  describe "GET one" do
    it "returns http success" do
      get :one
      expect(response).to have_http_status(:success)
      expect(assigns(:squirrel)).to eq("one")
    end
  end

  describe "GET two" do
    it "returns http success" do
      get :two
      expect(response).to have_http_status(:success)
      expect(assigns(:squirrel)).to eq("except before one")
    end
  end

  describe "GET three" do
    it "returns http success" do
      get :three
      expect(response).to have_http_status(:success)
      expect(assigns(:squirrel)).to eq("except before one")
    end
  end

end
