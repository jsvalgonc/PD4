require 'rails_helper'

RSpec.describe "ingredients/show", :type => :view do
  before(:each) do
    @ingredient = assign(:ingredient, Ingredient.create!(
      :measurment_unit => nil,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Description/)
  end
end
