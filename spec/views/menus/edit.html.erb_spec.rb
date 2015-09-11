require 'rails_helper'

RSpec.describe "menus/edit", :type => :view do
  before(:each) do
    @menu = assign(:menu, Menu.create!(
      :weekday => "MyText",
      :meal => "MyText",
      :recipe => nil
    ))
  end

  it "renders the edit menu form" do
    render

    assert_select "form[action=?][method=?]", menu_path(@menu), "post" do

      assert_select "textarea#menu_weekday[name=?]", "menu[weekday]"

      assert_select "textarea#menu_meal[name=?]", "menu[meal]"

      assert_select "input#menu_recipe_id[name=?]", "menu[recipe_id]"
    end
  end
end
