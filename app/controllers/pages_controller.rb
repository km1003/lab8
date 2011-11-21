class PagesController < ApplicationController
  def home
    @title = "Home"
    @page_label = "Home Page"
  end

  def login
    @title = "Login"
    @page_label = "Login Page"
  end

  def orders
    @title = "Orders"
    @page_label = "Orders Page"
  end

  def customize
    @title = "Customize"
    @page_label = "Customize a PC Page"
  end

end
