require 'spec_helper'

describe "PageContents" do
  describe "GET /page_contents" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get page_contents_path
      response.status.should be(200)
    end
  end
end
