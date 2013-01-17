require 'spec_helper'

describe "page_contents/show" do
  before(:each) do
    @page_content = assign(:page_content, stub_model(PageContent))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
