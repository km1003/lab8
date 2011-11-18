require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content => "Home")
    end
  end

  describe "GET 'login'" do
    it "returns http success" do
      get 'login'
      response.should be_success
    end
    it "should have the right title" do
      get 'login'
      response.should have_selector("title", :content => "Login")
    end
  end

  describe "GET 'orders'" do
    it "returns http success" do
      get 'orders'
      response.should be_success
    end
    it "should have the right title" do
      get 'orders'
      response.should have_selector("title", :content => "Orders")
    end
  end

  describe "GET 'customize'" do
    it "returns http success" do
      get 'customize'
      response.should be_success
    end
    it "should have the right title" do
      get 'customize'
      response.should have_selector("title", :content => "Customize")
    end
  end

end
