require 'spec_helper'

describe "brochures/edit" do
  before(:each) do
    @brochure = assign(:brochure, stub_model(Brochure,
      :department => "MyString"
    ))
  end

  it "renders the edit brochure form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => brochures_path(@brochure), :method => "post" do
      assert_select "input#brochure_department", :name => "brochure[department]"
    end
  end
end
