class WelcomeController < ApplicationController
  def index
    puts "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
  	@product = Allproduct.search(params[:search])
    puts "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
  	#@product = Electrical.search(params[:search])
  	#@product = Grocery.search(params[:search])
  	#@product = Readymade.search(params[:search])
  	
  end
  def productprice
  end
  def groceries
  end
end
