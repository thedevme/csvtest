require "spec_helper"

describe RushingStatsController do
  describe "routing" do

    it "routes to #index" do
      get("/rushing_stats").should route_to("rushing_stats#index")
    end

    it "routes to #new" do
      get("/rushing_stats/new").should route_to("rushing_stats#new")
    end

    it "routes to #show" do
      get("/rushing_stats/1").should route_to("rushing_stats#show", :id => "1")
    end

    it "routes to #edit" do
      get("/rushing_stats/1/edit").should route_to("rushing_stats#edit", :id => "1")
    end

    it "routes to #create" do
      post("/rushing_stats").should route_to("rushing_stats#create")
    end

    it "routes to #update" do
      put("/rushing_stats/1").should route_to("rushing_stats#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/rushing_stats/1").should route_to("rushing_stats#destroy", :id => "1")
    end

  end
end
