require 'rails_helper'

RSpec.describe "ingredients/new", :type => :view do
  before(:each) do
    assign(:ingredient, Ingredient.new(
      :measurment_unit => nil,
      :description => "MyString"
    ))
  end

  it "renders new ingredient form" do
    render

    assert_select "form[action=?][method=?]", ingredients_path, "post" do

      assert_select "input#ingredient_measurment_unit_id[name=?]", "ingredient[measurment_unit_id]"

      assert_select "input#ingredient_description[name=?]", "ingredient[description]"
    end
  end
end
