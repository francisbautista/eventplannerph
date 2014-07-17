class PagesController < ApplicationController

  def index
  	  @supplier = Supplier.find(current_supplier)
  end

  def dashboard
  	  @supplier = Supplier.find(current_supplier)
  end


end 
