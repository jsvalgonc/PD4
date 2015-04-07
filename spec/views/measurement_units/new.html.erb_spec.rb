require 'rails_helper'

RSpec.describe "measurement_units/new", :type => :view do
  before(:each) do
    assign(:measurement_unit, MeasurementUnit.new(
      :Unit => "MyString",
      :Symbol => "MyString"
    ))
  end

  it "renders new measurement_unit form" do
    render

    assert_select "form[action=?][method=?]", measurement_units_path, "post" do

      assert_select "input#measurement_unit_Unit[name=?]", "measurement_unit[Unit]"

      assert_select "input#measurement_unit_Symbol[name=?]", "measurement_unit[Symbol]"
    end
  end
end
