require "rails_helper"

RSpec.describe NutrientsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/nutrients").to route_to("nutrients#index")
    end

    it "routes to #new" do
      expect(:get => "/nutrients/new").to route_to("nutrients#new")
    end

    it "routes to #show" do
      expect(:get => "/nutrients/1").to route_to("nutrients#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/nutrients/1/edit").to route_to("nutrients#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/nutrients").to route_to("nutrients#create")
    end

    it "routes to #update" do
      expect(:put => "/nutrients/1").to route_to("nutrients#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/nutrients/1").to route_to("nutrients#destroy", :id => "1")
    end

  end
end
