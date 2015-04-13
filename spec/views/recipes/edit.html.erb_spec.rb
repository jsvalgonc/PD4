require 'rails_helper'

RSpec.describe "recipes/edit", :type => :view do
  before(:each) do
    @recipe = assign(:recipe, Recipe.create!(
      :title => "MyString",
      :procedure => "MyText",
      :preparationTime => "9.99",
      :cookingTime => "9.99",
      :serves => "9.99"
    ))
  end

  it "renders the edit recipe form" do
    render

    assert_select "form[action=?][method=?]", recipe_path(@recipe), "post" do

      assert_select "input#recipe_title[name=?]", "recipe[title]"

      assert_select "textarea#recipe_procedure[name=?]", "recipe[procedure]"

      assert_select "input#recipe_preparationTime[name=?]", "recipe[preparationTime]"

      assert_select "input#recipe_cookingTime[name=?]", "recipe[cookingTime]"

      assert_select "input#recipe_serves[name=?]", "recipe[serves]"
    end
  end
end
