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

RSpec.describe Api::V1::SubscriptionsController, type: :controller do

  let!(:subscription) {
    create(:subscription)
  }

  # This should return the minimal set of attributes required to create a valid
  # Subscription. As you add validations to Subscription, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    attributes_for :subscription
  }

  let(:invalid_attributes) {
    attributes_for :subscription, threshold_price: -1
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SubscriptionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all subscriptions as @subscriptions" do
      get :index, {}, valid_session
      expect(assigns(:subscriptions)).to eq([subscription])
    end
  end

  describe "GET #show" do
    it "assigns the requested subscription as @subscription" do
      get :show, {:id => subscription.to_param}, valid_session
      expect(assigns(:subscription)).to eq(subscription)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Subscription" do
        expect {
          post :create, {:subscription => valid_attributes}, valid_session
        }.to change(Subscription, :count).by(1)
      end

      it "assigns a newly created subscription as @subscription" do
        post :create, {:subscription => valid_attributes}, valid_session
        expect(assigns(:subscription)).to be_a(Subscription)
        expect(assigns(:subscription)).to be_persisted
      end

      it "returns with status Created" do
        post :create, {:subscription => valid_attributes}, valid_session
        expect(response).to have_http_status(201)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved subscription as @subscription" do
        post :create, {:subscription => invalid_attributes}, valid_session
        expect(assigns(:subscription)).to be_a_new(Subscription)
      end

      it "returns with status Unprocessable Entity" do
        post :create, {:subscription => invalid_attributes}, valid_session
        expect(response).to have_http_status(422)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { threshold_price: 16.50 }
      }

      it "updates the requested subscription" do
        put :update, {:id => subscription.to_param, :subscription => new_attributes}, valid_session
        subscription.reload
        expect(assigns(:subscription).threshold_price).to eq(16.5)
      end

      it "assigns the requested subscription as @subscription" do
        put :update, {:id => subscription.to_param, :subscription => valid_attributes}, valid_session
        expect(assigns(:subscription)).to eq(subscription)
      end

      it "returns with status No Content" do
        put :update, {:id => subscription.to_param, :subscription => valid_attributes}, valid_session
        expect(response).to have_http_status(204)
      end
    end

    context "with invalid params" do
      it "assigns the subscription as @subscription" do
        put :update, {:id => subscription.to_param, :subscription => invalid_attributes}, valid_session
        expect(assigns(:subscription)).to eq(subscription)
      end

      it "returns with status Unprocessable Entity" do
        put :update, {:id => subscription.to_param, :subscription => invalid_attributes}, valid_session
        expect(response).to have_http_status(422)
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested subscription" do
      expect {
        delete :destroy, {:id => subscription.to_param}, valid_session
      }.to change(Subscription, :count).by(-1)
    end

    it "returns with status No Content" do
      delete :destroy, {:id => subscription.to_param}, valid_session
      expect(response).to have_http_status(204)
    end
  end

end
