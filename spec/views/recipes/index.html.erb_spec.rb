require 'rails_helper'

RSpec.describe "recipes/index", :type => :view do
  before(:each) do
    assign(:recipes, [
      Recipe.create!(
        :title => "Title",
        :procedure => "MyText",
        :preparationTime => "9.99",
        :cookingTime => "9.99",
        :serves => "9.99"
      ),
      Recipe.create!(
        :title => "Title",
        :procedure => "MyText",
        :preparationTime => "9.99",
        :cookingTime => "9.99",
        :serves => "9.99"
      )
    ])
  end

  it "renders a list of recipes" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
