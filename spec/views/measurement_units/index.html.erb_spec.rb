require 'rails_helper'

RSpec.describe "measurement_units/index", :type => :view do
  before(:each) do
    assign(:measurement_units, [
      MeasurementUnit.create!(
        :Unit => "Unit",
        :Symbol => "Symbol"
      ),
      MeasurementUnit.create!(
        :Unit => "Unit",
        :Symbol => "Symbol"
      )
    ])
  end

  it "renders a list of measurement_units" do
    render
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => "Symbol".to_s, :count => 2
  end
end
