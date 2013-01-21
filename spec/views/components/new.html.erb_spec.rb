require 'spec_helper'

describe "components/new" do
  before(:each) do
    assign(:component, stub_model(Component).as_new_record)
  end

  it "renders new component form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => components_path, :method => "post" do
    end
  end
end
