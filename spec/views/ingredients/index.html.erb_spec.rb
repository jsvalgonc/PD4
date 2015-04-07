require 'rails_helper'

RSpec.describe "ingredients/index", :type => :view do
  before(:each) do
    assign(:ingredients, [
      Ingredient.create!(
        :measurment_unit => nil,
        :description => "Description"
      ),
      Ingredient.create!(
        :measurment_unit => nil,
        :description => "Description"
      )
    ])
  end

  it "renders a list of ingredients" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
