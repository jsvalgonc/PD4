require 'rails_helper'

RSpec.describe "menus/new", :type => :view do
  before(:each) do
    assign(:menu, Menu.new(
      :weekday => "MyText",
      :meal => "MyText",
      :recipe => nil
    ))
  end

  it "renders new menu form" do
    render

    assert_select "form[action=?][method=?]", menus_path, "post" do

      assert_select "textarea#menu_weekday[name=?]", "menu[weekday]"

      assert_select "textarea#menu_meal[name=?]", "menu[meal]"

      assert_select "input#menu_recipe_id[name=?]", "menu[recipe_id]"
    end
  end
end
