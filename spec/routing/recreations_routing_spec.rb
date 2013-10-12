require "spec_helper"

describe RecreationsController do
  describe "routing" do

    it "routes to #index" do
      get("/recreations").should route_to("recreations#index")
    end

    it "routes to #new" do
      get("/recreations/new").should route_to("recreations#new")
    end

    it "routes to #show" do
      get("/recreations/1").should route_to("recreations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/recreations/1/edit").should route_to("recreations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/recreations").should route_to("recreations#create")
    end

    it "routes to #update" do
      put("/recreations/1").should route_to("recreations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/recreations/1").should route_to("recreations#destroy", :id => "1")
    end

  end
end
