require "rails_helper"

RSpec.describe MeasurementUnitsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/measurement_units").to route_to("measurement_units#index")
    end

    it "routes to #new" do
      expect(:get => "/measurement_units/new").to route_to("measurement_units#new")
    end

    it "routes to #show" do
      expect(:get => "/measurement_units/1").to route_to("measurement_units#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/measurement_units/1/edit").to route_to("measurement_units#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/measurement_units").to route_to("measurement_units#create")
    end

    it "routes to #update" do
      expect(:put => "/measurement_units/1").to route_to("measurement_units#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/measurement_units/1").to route_to("measurement_units#destroy", :id => "1")
    end

  end
end
