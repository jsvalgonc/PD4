require 'rails_helper'

RSpec.describe "measurement_units/edit", :type => :view do
  before(:each) do
    @measurement_unit = assign(:measurement_unit, MeasurementUnit.create!(
      :Unit => "MyString",
      :Symbol => "MyString"
    ))
  end

  it "renders the edit measurement_unit form" do
    render

    assert_select "form[action=?][method=?]", measurement_unit_path(@measurement_unit), "post" do

      assert_select "input#measurement_unit_Unit[name=?]", "measurement_unit[Unit]"

      assert_select "input#measurement_unit_Symbol[name=?]", "measurement_unit[Symbol]"
    end
  end
end
