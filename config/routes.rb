Rails.application.routes.draw do

 	# get "/dashboard", to: "pages#dashboard", as: :dashboard

  #--Page Controller Resource Nesting--------#
  %w[index about contact dashboard].each do |page|
      get page, controller: 'pages', action: page
  end

  #--Page Root Declaration-------------------#
  root to: "pages#index"

  #--Login Resource Nesting via Devise-------#
	devise_for :suppliers
	devise_for :users

  #--Navigation Resource Declarations--------#
	resources :amenities
  resources :assets
  resources :pages
  resources :event_types

  #--Navigation Resource Nesting-------------#
	resources :venues do
    resources :assets
		resources :rooms do
			resources :bookings
		end
	end

end
