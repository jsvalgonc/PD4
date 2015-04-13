require 'rails_helper'

RSpec.describe "recipes/show", :type => :view do
  before(:each) do
    @recipe = assign(:recipe, Recipe.create!(
      :title => "Title",
      :procedure => "MyText",
      :preparationTime => "9.99",
      :cookingTime => "9.99",
      :serves => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
