require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe Api::V1::UsersController, type: :controller do

  let!(:user) {
    create(:user)
  }

  # This should return the minimal set of attributes required to create a valid
  # User. As you add validations to User, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    attributes_for :user
  }

  let(:invalid_attributes) {
    attributes_for :user, email: " "
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UsersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all users as @users" do
      get :index, {}, valid_session
      expect(assigns(:users)).to eq([user])
    end
  end

  describe "GET #show" do
    it "assigns the requested user as @user" do
      get :show, {:id => user.to_param}, valid_session
      expect(assigns(:user)).to eq(user)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new User" do
        expect {
          post :create, {:user => valid_attributes}, valid_session
        }.to change(User, :count).by(1)
      end

      it "assigns a newly created user as @user" do
        post :create, {:user => valid_attributes}, valid_session
        expect(assigns(:user)).to be_a(User)
        expect(assigns(:user)).to be_persisted
      end

      it "returns with status Created" do
        post :create, {:user => valid_attributes}, valid_session
        expect(response).to have_http_status(201)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved user as @user" do
        post :create, {:user => invalid_attributes}, valid_session
        expect(assigns(:user)).to be_a_new(User)
      end

      it "returns with status Unprocessable Entity" do
        post :create, {:user => invalid_attributes}, valid_session
        expect(response).to have_http_status(422)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { email: "a@b.c" }
      }

      it "updates the requested user" do
        put :update, {:id => user.to_param, :user => new_attributes}, valid_session
        user.reload
        expect(assigns(:user).email).to eq("a@b.c")
      end

      it "assigns the requested user as @user" do
        put :update, {:id => user.to_param, :user => valid_attributes}, valid_session
        expect(assigns(:user)).to eq(user)
      end

      it "returns with status No Content" do
        put :update, {:id => user.to_param, :user => valid_attributes}, valid_session
        expect(response).to have_http_status(204)
      end
    end

    context "with invalid params" do
      it "assigns the user as @user" do
        put :update, {:id => user.to_param, :user => invalid_attributes}, valid_session
        expect(assigns(:user)).to eq(user)
      end

      it "returns with status Unprocessable Entity" do
        put :update, {:id => user.to_param, :user => invalid_attributes}, valid_session
        expect(response).to have_http_status(422)
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested user" do
      expect {
        delete :destroy, {:id => user.to_param}, valid_session
      }.to change(User, :count).by(-1)
    end

    it "returns with status No Content" do
      delete :destroy, {:id => user.to_param}, valid_session
      expect(response).to have_http_status(204)
    end
  end

end
