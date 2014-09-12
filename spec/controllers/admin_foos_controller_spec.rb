require 'rails_helper'

RSpec.describe AdminFoosController, :type => :controller do

  let(:valid_attributes) {
    {bar: 'cool'}
  }

  let(:invalid_attributes) {
    {bar: ''}
  }

  let(:valid_session) { {} }




  describe "read-only" do
    describe "GET index" do
      it "assigns all admin_foos as @admin_foos" do
        admin_foo = AdminFoo.create! valid_attributes
        get :index, {}, valid_session
        expect(assigns(:admin_foos)).to eq([admin_foo])
      end
    end

    describe "GET show" do
      it "assigns the requested admin_foo as @admin_foo" do
        admin_foo = AdminFoo.create! valid_attributes
        get :show, {:id => admin_foo.to_param}, valid_session
        expect(assigns(:admin_foo)).to eq(admin_foo)
      end
    end

    after { expect(response).to have_http_status(200) }
  end

  describe "writing" do
    describe "GET new" do
      it "does not assign @admin_foo" do
        get :new, {}, valid_session
      end
    end

    describe "GET edit" do
      it "does not assign @admin_foo" do
        admin_foo = AdminFoo.create! valid_attributes
        get :edit, {:id => admin_foo.to_param}, valid_session
      end
    end

    describe "POST create" do
      it "does not assign @admin_foo" do
        post :create, {:admin_foo => valid_attributes}, valid_session
      end
    end

    describe "PUT update" do
      it "does not assign @admin_foo" do
        admin_foo = AdminFoo.create! valid_attributes
        put :update, {:id => admin_foo.to_param, :admin_foo => valid_attributes}, valid_session
      end
    end

    describe "DELETE destroy" do
      it "does not assign @admin_foo" do
        admin_foo = AdminFoo.create! valid_attributes
        delete :destroy, {:id => admin_foo.to_param}, valid_session
      end
    end

    after do
      expect(assigns(:admin_foo)).to eq(nil)
      expect(response).to have_http_status(401)
    end
  end

end
