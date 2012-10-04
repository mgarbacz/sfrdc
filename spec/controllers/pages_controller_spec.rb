require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'about_us'" do
    it "returns http success" do
      get 'about_us'
      response.should be_success
    end
  end

  describe "GET 'opportunities'" do
    it "returns http success" do
      get 'opportunities'
      response.should be_success
    end
  end

  describe "GET 'interns_and_staff'" do
    it "returns http success" do
      get 'interns_and_staff'
      response.should be_success
    end
  end

  describe "GET 'benefits'" do
    it "returns http success" do
      get 'benefits'
      response.should be_success
    end
  end

  describe "GET 'partnerships'" do
    it "returns http success" do
      get 'partnerships'
      response.should be_success
    end
  end

  describe "GET 'contact_us'" do
    it "returns http success" do
      get 'contact_us'
      response.should be_success
    end
  end

  describe "GET 'admin'" do
    it "returns http success" do
      get 'admin'
      response.should be_success
    end
  end

end
