require 'spec_helper'

describe "page_contents/edit" do
  before(:each) do
    @page_content = assign(:page_content, stub_model(PageContent))
  end

  it "renders the edit page_content form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => page_contents_path(@page_content), :method => "post" do
    end
  end
end
