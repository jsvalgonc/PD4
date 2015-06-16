require 'rails_helper'

RSpec.describe "Nutrients", :type => :request do
  describe "GET /nutrients" do
    it "works! (now write some real specs)" do
      get nutrients_path
      expect(response).to have_http_status(200)
    end
  end
end
