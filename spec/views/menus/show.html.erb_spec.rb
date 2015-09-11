require 'rails_helper'

RSpec.describe "menus/show", :type => :view do
  before(:each) do
    @menu = assign(:menu, Menu.create!(
      :weekday => "MyText",
      :meal => "MyText",
      :recipe => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
