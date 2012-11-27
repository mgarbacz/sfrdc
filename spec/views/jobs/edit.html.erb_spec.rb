require 'spec_helper'

describe "jobs/edit" do
  before(:each) do
    @job = assign(:job, stub_model(Job,
      :position => "MyString",
      :department => "MyString",
      :description => "MyText",
      :apply => "MyString"
    ))
  end

  it "renders the edit job form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => jobs_path(@job), :method => "post" do
      assert_select "input#job_position", :name => "job[position]"
      assert_select "input#job_department", :name => "job[department]"
      assert_select "textarea#job_description", :name => "job[description]"
      assert_select "input#job_apply", :name => "job[apply]"
    end
  end
end
