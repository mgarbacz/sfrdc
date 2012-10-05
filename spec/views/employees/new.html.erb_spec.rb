require 'spec_helper'

describe "employees/new" do
  before(:each) do
    assign(:employee, stub_model(Employee,
      :name => "MyString",
      :type => "",
      :department => "MyString",
      :bio => "MyText"
    ).as_new_record)
  end

  it "renders new employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => employees_path, :method => "post" do
      assert_select "input#employee_name", :name => "employee[name]"
      assert_select "input#employee_type", :name => "employee[type]"
      assert_select "input#employee_department", :name => "employee[department]"
      assert_select "textarea#employee_bio", :name => "employee[bio]"
    end
  end
end
