require 'rails_helper'

RSpec.describe "ingredients_nutrients/new", :type => :view do
  before(:each) do
    assign(:ingredients_nutrient, IngredientsNutrient.new(
      :ingredient => nil,
      :nutrient => nil,
      :valor => "9.99"
    ))
  end

  it "renders new ingredients_nutrient form" do
    render

    assert_select "form[action=?][method=?]", ingredients_nutrients_path, "post" do

      assert_select "input#ingredients_nutrient_ingredient_id[name=?]", "ingredients_nutrient[ingredient_id]"

      assert_select "input#ingredients_nutrient_nutrient_id[name=?]", "ingredients_nutrient[nutrient_id]"

      assert_select "input#ingredients_nutrient_valor[name=?]", "ingredients_nutrient[valor]"
    end
  end
end
