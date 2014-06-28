Rails.application.routes.draw do

	devise_for :suppliers
	devise_for :users

	resources :amenities


	resources :venues do
		resources :rooms do
			resources :bookings
		end
	end

	resources :pages
	resources :event_types
	root to: "pages#index"
	end
