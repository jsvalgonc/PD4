require 'rails_helper'

RSpec.describe "menus/index", :type => :view do
  before(:each) do
    assign(:menus, [
      Menu.create!(
        :weekday => "MyText",
        :meal => "MyText",
        :recipe => nil
      ),
      Menu.create!(
        :weekday => "MyText",
        :meal => "MyText",
        :recipe => nil
      )
    ])
  end

  it "renders a list of menus" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
