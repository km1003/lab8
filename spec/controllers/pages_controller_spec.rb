require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'login'" do
    it "returns http success" do
      get 'login'
      response.should be_success
    end
  end

  describe "GET 'orders'" do
    it "returns http success" do
      get 'orders'
      response.should be_success
    end
  end

  describe "GET 'customize'" do
    it "returns http success" do
      get 'customize'
      response.should be_success
    end
  end

end
