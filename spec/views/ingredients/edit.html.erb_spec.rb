require 'rails_helper'

RSpec.describe "ingredients/edit", :type => :view do
  before(:each) do
    @ingredient = assign(:ingredient, Ingredient.create!(
      :measurment_unit => nil,
      :description => "MyString"
    ))
  end

  it "renders the edit ingredient form" do
    render

    assert_select "form[action=?][method=?]", ingredient_path(@ingredient), "post" do

      assert_select "input#ingredient_measurment_unit_id[name=?]", "ingredient[measurment_unit_id]"

      assert_select "input#ingredient_description[name=?]", "ingredient[description]"
    end
  end
end
