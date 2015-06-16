require 'rails_helper'

RSpec.describe "nutrients/show", :type => :view do
  before(:each) do
    @nutrient = assign(:nutrient, Nutrient.create!(
      :nutrno => "Nutrno",
      :units => "Units",
      :tagname => "Tagname",
      :nutrdesc => "Nutrdesc",
      :numdec => "9.99",
      :srorder => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nutrno/)
    expect(rendered).to match(/Units/)
    expect(rendered).to match(/Tagname/)
    expect(rendered).to match(/Nutrdesc/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
