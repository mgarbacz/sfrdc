require 'spec_helper'

describe "brochures/new" do
  before(:each) do
    assign(:brochure, stub_model(Brochure,
      :department => "MyString"
    ).as_new_record)
  end

  it "renders new brochure form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => brochures_path, :method => "post" do
      assert_select "input#brochure_department", :name => "brochure[department]"
    end
  end
end
