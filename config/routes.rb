Rails.application.routes.draw do

 	# get "/dashboard", to: "pages#dashboard", as: :dashboard

  %w[index about contact dashboard].each do |page|
      get page, controller: 'pages', action: page
  end

  root to: "pages#index"

	devise_for :suppliers
	devise_for :users

	resources :amenities
  resources :assets
  resources :pages
  resources :event_types

	resources :venues do
    resources :assets
		resources :rooms do
			resources :bookings
		end
	end
  	
end
