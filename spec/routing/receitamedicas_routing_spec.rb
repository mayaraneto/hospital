require "spec_helper"

describe ReceitamedicasController do
  describe "routing" do

    it "routes to #index" do
      get("/receitamedicas").should route_to("receitamedicas#index")
    end

    it "routes to #new" do
      get("/receitamedicas/new").should route_to("receitamedicas#new")
    end

    it "routes to #show" do
      get("/receitamedicas/1").should route_to("receitamedicas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/receitamedicas/1/edit").should route_to("receitamedicas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/receitamedicas").should route_to("receitamedicas#create")
    end

    it "routes to #update" do
      put("/receitamedicas/1").should route_to("receitamedicas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/receitamedicas/1").should route_to("receitamedicas#destroy", :id => "1")
    end

  end
end
