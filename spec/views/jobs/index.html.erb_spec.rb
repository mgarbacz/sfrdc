require 'spec_helper'

describe "jobs/index" do
  before(:each) do
    assign(:jobs, [
      stub_model(Job,
        :position => "Position",
        :department => "Department",
        :description => "MyText",
        :apply => "Apply"
      ),
      stub_model(Job,
        :position => "Position",
        :department => "Department",
        :description => "MyText",
        :apply => "Apply"
      )
    ])
  end

  it "renders a list of jobs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "Department".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Apply".to_s, :count => 2
  end
end
