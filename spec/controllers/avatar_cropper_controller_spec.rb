require 'spec_helper'

describe AvatarCropperController do

  describe "GET 'crop'" do
    it "returns http success" do
      get 'crop'
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it "returns http success" do
      get 'edit'
      response.should be_success
    end
  end

end
