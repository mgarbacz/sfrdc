require 'spec_helper'

describe "jobs/show" do
  before(:each) do
    @job = assign(:job, stub_model(Job,
      :position => "Position",
      :department => "Department",
      :description => "MyText",
      :apply => "Apply"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Position/)
    rendered.should match(/Department/)
    rendered.should match(/MyText/)
    rendered.should match(/Apply/)
  end
end
