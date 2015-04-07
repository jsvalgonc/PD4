require 'rails_helper'

RSpec.describe "MeasurementUnits", :type => :request do
  describe "GET /measurement_units" do
    it "works! (now write some real specs)" do
      get measurement_units_path
      expect(response).to have_http_status(200)
    end
  end
end
