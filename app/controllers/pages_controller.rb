class PagesController < ApplicationController

  def index
  	 
  end

  def dashboard
  	  @supplier = Supplier.find(current_supplier)
  end


end 
