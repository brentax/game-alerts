require "rails_helper"

RSpec.describe Api::V1::GamesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/api/v1/games").to route_to(:controller => "api/v1/games", :action => "index", :format => "json")
    end

    it "routes to #show" do
      expect(:get => "/api/v1/games/1").to route_to(:controller => "api/v1/games", :action => "show", :id => "1", :format => "json")
    end

    it "routes to #create" do
      expect(:post => "/api/v1/games").to route_to(:controller => "api/v1/games", :action => "create", :format => "json")
    end

    it "routes to #update" do
      expect(:put => "/api/v1/games/1").to route_to(:controller => "api/v1/games", :action => "update", :id => "1", :format => "json")
    end

    it "routes to #destroy" do
      expect(:delete => "/api/v1/games/1").to route_to(:controller => "api/v1/games", :action => "destroy", :id => "1", :format => "json")
    end

  end
end
