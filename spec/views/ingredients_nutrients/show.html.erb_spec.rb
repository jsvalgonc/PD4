require 'rails_helper'

RSpec.describe "ingredients_nutrients/show", :type => :view do
  before(:each) do
    @ingredients_nutrient = assign(:ingredients_nutrient, IngredientsNutrient.create!(
      :ingredient => nil,
      :nutrient => nil,
      :valor => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
  end
end
