require "rails_helper"

RSpec.describe Api::V1::SubscriptionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/api/v1/subscriptions").to route_to(:controller => "api/v1/subscriptions", :action => "index", :format => "json")
    end

    it "routes to #show" do
      expect(:get => "/api/v1/subscriptions/1").to route_to(:controller => "api/v1/subscriptions", :action => "show", :id => "1", :format => "json")
    end

    it "routes to #create" do
      expect(:post => "/api/v1/subscriptions").to route_to(:controller => "api/v1/subscriptions", :action => "create", :format => "json")
    end

    it "routes to #update" do
      expect(:put => "/api/v1/subscriptions/1").to route_to(:controller => "api/v1/subscriptions", :action => "update", :id => "1", :format => "json")
    end

    it "routes to #destroy" do
      expect(:delete => "/api/v1/subscriptions/1").to route_to(:controller => "api/v1/subscriptions", :action => "destroy", :id => "1", :format => "json")
    end

  end
end
