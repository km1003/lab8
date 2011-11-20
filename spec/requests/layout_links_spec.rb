require 'spec_helper'

describe "LayoutLinks" do
  
    it "should have a customize page at '/customize'" do
      get '/customize'
      response.should have_selector("title", :content => "Customize")
    end
  
     it "should have a home page at '/home'" do
      get '/home'
      response.should have_selector("title", :content => "Home")
    end
    
     it "should have a login page at '/login'" do
      get '/login'
      response.should have_selector("title", :content => "Login")
    end
    
     it "should have an orders page at '/orders'" do
      get '/orders'
      response.should have_selector("title", :content => "Orders")
    end
    
    it "should have the right links on the layout" do
      visit root_path
      response.should have_selector('title', :content => "Home")
      click_link "Customize"
      response.should have_selector('title', :content => "Customize")
      click_link "Login"
      response.should have_selector('title', :content => "Login")
      click_link "Orders"
      response.should have_selector('title', :content => "Orders")
      click_link "Home"
      response.should have_selector('title', :content => "Home")
#      response.should have_selector('a[href="/"]>img')
    end
end