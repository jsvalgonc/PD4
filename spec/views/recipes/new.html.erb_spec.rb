require 'rails_helper'

RSpec.describe "recipes/new", :type => :view do
  before(:each) do
    assign(:recipe, Recipe.new(
      :title => "MyString",
      :procedure => "MyText",
      :preparationTime => "9.99",
      :cookingTime => "9.99",
      :serves => "9.99"
    ))
  end

  it "renders new recipe form" do
    render

    assert_select "form[action=?][method=?]", recipes_path, "post" do

      assert_select "input#recipe_title[name=?]", "recipe[title]"

      assert_select "textarea#recipe_procedure[name=?]", "recipe[procedure]"

      assert_select "input#recipe_preparationTime[name=?]", "recipe[preparationTime]"

      assert_select "input#recipe_cookingTime[name=?]", "recipe[cookingTime]"

      assert_select "input#recipe_serves[name=?]", "recipe[serves]"
    end
  end
end
