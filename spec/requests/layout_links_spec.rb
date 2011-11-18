require 'spec_helper'

describe "LayoutLinks" do
  
    it "should have a home page at 'pages/home'" do
      get 'pages/home'
      response.should have_selector("title", :content => "Home")
    end
  
     it "should have a contact page at '/contact'" do
      get '/contact'
      response.should have_selector("title", :content => "Contact")
    end
    
     it "should have an about page at '/about'" do
      get '/about'
      response.should have_selector("title", :content => "About")
    end
    
    it "should have a help page at '/help'" do
      get '/help'
      response.should have_selector("title", :content => "Help")
    end
    
#     it "should have a sign-up page at '/signup'" do
#      get '/signup'
#      response.should have_selector("title", :content => "Sign up")
#    end
    
    it "should have the right links on the layout" do
      visit root_path
      response.should have_selector('title', :content => "Home")
      click_link "Customize this PC"
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