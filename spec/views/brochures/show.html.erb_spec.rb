require 'spec_helper'

describe "brochures/show" do
  before(:each) do
    @brochure = assign(:brochure, stub_model(Brochure,
      :department => "Department"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Department/)
  end
end
