require 'spec_helper'

describe "page_contents/new" do
  before(:each) do
    assign(:page_content, stub_model(PageContent).as_new_record)
  end

  it "renders new page_content form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => page_contents_path, :method => "post" do
    end
  end
end
