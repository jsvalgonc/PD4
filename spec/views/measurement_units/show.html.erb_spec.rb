require 'rails_helper'

RSpec.describe "measurement_units/show", :type => :view do
  before(:each) do
    @measurement_unit = assign(:measurement_unit, MeasurementUnit.create!(
      :Unit => "Unit",
      :Symbol => "Symbol"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(/Symbol/)
  end
end
