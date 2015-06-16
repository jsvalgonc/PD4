require 'rails_helper'

RSpec.describe "ingredients_nutrients/index", :type => :view do
  before(:each) do
    assign(:ingredients_nutrients, [
      IngredientsNutrient.create!(
        :ingredient => nil,
        :nutrient => nil,
        :valor => "9.99"
      ),
      IngredientsNutrient.create!(
        :ingredient => nil,
        :nutrient => nil,
        :valor => "9.99"
      )
    ])
  end

  it "renders a list of ingredients_nutrients" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
