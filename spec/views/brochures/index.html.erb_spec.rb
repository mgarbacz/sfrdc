require 'spec_helper'

describe "brochures/index" do
  before(:each) do
    assign(:brochures, [
      stub_model(Brochure,
        :department => "Department"
      ),
      stub_model(Brochure,
        :department => "Department"
      )
    ])
  end

  it "renders a list of brochures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Department".to_s, :count => 2
  end
end
