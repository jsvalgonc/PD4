require 'rails_helper'

RSpec.describe "nutrients/index", :type => :view do
  before(:each) do
    assign(:nutrients, [
      Nutrient.create!(
        :nutrno => "Nutrno",
        :units => "Units",
        :tagname => "Tagname",
        :nutrdesc => "Nutrdesc",
        :numdec => "9.99",
        :srorder => "9.99"
      ),
      Nutrient.create!(
        :nutrno => "Nutrno",
        :units => "Units",
        :tagname => "Tagname",
        :nutrdesc => "Nutrdesc",
        :numdec => "9.99",
        :srorder => "9.99"
      )
    ])
  end

  it "renders a list of nutrients" do
    render
    assert_select "tr>td", :text => "Nutrno".to_s, :count => 2
    assert_select "tr>td", :text => "Units".to_s, :count => 2
    assert_select "tr>td", :text => "Tagname".to_s, :count => 2
    assert_select "tr>td", :text => "Nutrdesc".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
