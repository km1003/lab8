class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def login
    @title = "Login"
  end

  def orders
    @title = "Orders"
  end

  def customize
    @title = "Customize"
  end

end
