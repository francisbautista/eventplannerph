class PagesController < ApplicationController

  def index
  	 
  end

  def dashboard
  	if current_supplier.present?
  		@supplier = Supplier.find(current_supplier)
  	else
  		@user = User.find(current_user)
  	end
  end


end 
