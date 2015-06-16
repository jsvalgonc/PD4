require 'rails_helper'

RSpec.describe "IngredientsNutrients", :type => :request do
  describe "GET /ingredients_nutrients" do
    it "works! (now write some real specs)" do
      get ingredients_nutrients_path
      expect(response).to have_http_status(200)
    end
  end
end
