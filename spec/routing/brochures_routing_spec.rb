require "spec_helper"

describe BrochuresController do
  describe "routing" do

    it "routes to #index" do
      get("/brochures").should route_to("brochures#index")
    end

    it "routes to #new" do
      get("/brochures/new").should route_to("brochures#new")
    end

    it "routes to #show" do
      get("/brochures/1").should route_to("brochures#show", :id => "1")
    end

    it "routes to #edit" do
      get("/brochures/1/edit").should route_to("brochures#edit", :id => "1")
    end

    it "routes to #create" do
      post("/brochures").should route_to("brochures#create")
    end

    it "routes to #update" do
      put("/brochures/1").should route_to("brochures#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/brochures/1").should route_to("brochures#destroy", :id => "1")
    end

  end
end
