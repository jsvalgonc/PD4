require "rails_helper"

RSpec.describe IngredientsNutrientsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ingredients_nutrients").to route_to("ingredients_nutrients#index")
    end

    it "routes to #new" do
      expect(:get => "/ingredients_nutrients/new").to route_to("ingredients_nutrients#new")
    end

    it "routes to #show" do
      expect(:get => "/ingredients_nutrients/1").to route_to("ingredients_nutrients#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ingredients_nutrients/1/edit").to route_to("ingredients_nutrients#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ingredients_nutrients").to route_to("ingredients_nutrients#create")
    end

    it "routes to #update" do
      expect(:put => "/ingredients_nutrients/1").to route_to("ingredients_nutrients#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ingredients_nutrients/1").to route_to("ingredients_nutrients#destroy", :id => "1")
    end

  end
end
