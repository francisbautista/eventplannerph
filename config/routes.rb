Rails.application.routes.draw do
       
	resources :amenities
	resources :pages
	resources :venues do
		resources :rooms do
		    resources :bookings
		end
	end
	resources :event_types
	root to: "pages#index"
end
