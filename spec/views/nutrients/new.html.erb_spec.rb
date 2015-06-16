require 'rails_helper'

RSpec.describe "nutrients/new", :type => :view do
  before(:each) do
    assign(:nutrient, Nutrient.new(
      :nutrno => "MyString",
      :units => "MyString",
      :tagname => "MyString",
      :nutrdesc => "MyString",
      :numdec => "9.99",
      :srorder => "9.99"
    ))
  end

  it "renders new nutrient form" do
    render

    assert_select "form[action=?][method=?]", nutrients_path, "post" do

      assert_select "input#nutrient_nutrno[name=?]", "nutrient[nutrno]"

      assert_select "input#nutrient_units[name=?]", "nutrient[units]"

      assert_select "input#nutrient_tagname[name=?]", "nutrient[tagname]"

      assert_select "input#nutrient_nutrdesc[name=?]", "nutrient[nutrdesc]"

      assert_select "input#nutrient_numdec[name=?]", "nutrient[numdec]"

      assert_select "input#nutrient_srorder[name=?]", "nutrient[srorder]"
    end
  end
end
