require 'rails_helper'

RSpec.describe FoosController, :type => :controller do

  let(:valid_attributes) {
    {bar: 'cool'}
  }

  let(:invalid_attributes) {
    {bar: ''}
  }

  let(:valid_session) { {} }





  describe "GET index" do
    it "assigns all foos as @foos" do
      foo = Foo.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:foos)).to eq([foo])
    end
  end

  describe "GET show" do
    it "assigns the requested foo as @foo" do
      foo = Foo.create! valid_attributes
      get :show, {:id => foo.to_param}, valid_session
      expect(assigns(:foo)).to eq(foo)
    end
  end

  describe "GET new" do
    it "assigns a new foo as @foo" do
      get :new, {}, valid_session
      expect(assigns(:foo)).to be_a_new(Foo)
    end
  end

  describe "GET edit" do
    it "assigns the requested foo as @foo" do
      foo = Foo.create! valid_attributes
      get :edit, {:id => foo.to_param}, valid_session
      expect(assigns(:foo)).to eq(foo)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Foo" do
        expect {
          post :create, {:foo => valid_attributes}, valid_session
        }.to change(Foo, :count).by(1)
      end

      it "assigns a newly created foo as @foo" do
        post :create, {:foo => valid_attributes}, valid_session
        expect(assigns(:foo)).to be_a(Foo)
        expect(assigns(:foo)).to be_persisted
      end

      it "redirects to the created foo" do
        post :create, {:foo => valid_attributes}, valid_session
        expect(response).to redirect_to(Foo.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved foo as @foo" do
        post :create, {:foo => invalid_attributes}, valid_session
        expect(assigns(:foo)).to be_a_new(Foo)
      end

      it "re-renders the 'new' template" do
        post :create, {:foo => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        {bar: "yay"}
      }

      it "updates the requested foo" do
        foo = Foo.create! valid_attributes
        put :update, {:id => foo.to_param, :foo => new_attributes}, valid_session
        foo.reload
        expect(assigns(:foo).bar).to eq('yay')
      end

      it "assigns the requested foo as @foo" do
        foo = Foo.create! valid_attributes
        put :update, {:id => foo.to_param, :foo => valid_attributes}, valid_session
        expect(assigns(:foo)).to eq(foo)
      end

      it "redirects to the foo" do
        foo = Foo.create! valid_attributes
        put :update, {:id => foo.to_param, :foo => valid_attributes}, valid_session
        expect(response).to redirect_to(foo)
      end
    end

    describe "with invalid params" do
      it "assigns the foo as @foo" do
        foo = Foo.create! valid_attributes
        put :update, {:id => foo.to_param, :foo => invalid_attributes}, valid_session
        expect(assigns(:foo)).to eq(foo)
      end

      it "re-renders the 'edit' template" do
        foo = Foo.create! valid_attributes
        put :update, {:id => foo.to_param, :foo => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested foo" do
      foo = Foo.create! valid_attributes
      expect {
        delete :destroy, {:id => foo.to_param}, valid_session
      }.to change(Foo, :count).by(-1)
    end

    it "redirects to the foos list" do
      foo = Foo.create! valid_attributes
      delete :destroy, {:id => foo.to_param}, valid_session
      expect(response).to redirect_to(foos_url)
    end
  end

end
