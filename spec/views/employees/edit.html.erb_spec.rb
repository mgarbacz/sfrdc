require 'spec_helper'

describe "employees/edit" do
  before(:each) do
    @employee = assign(:employee, stub_model(Employee,
      :name => "MyString",
      :employee_type => "MyString",
      :department => "MyString",
      :bio => "MyText"
    ))
  end

  it "renders the edit employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => employees_path(@employee), :method => "post" do
      assert_select "input#employee_name", :name => "employee[name]"
      assert_select "input#employee_employee_type", :name => "employee[employee_type]"
      assert_select "input#employee_department", :name => "employee[department]"
      assert_select "textarea#employee_bio", :name => "employee[bio]"
    end
  end
end
