Rails.application.routes.draw do
        
	resources :amenities
	
	resources :venues do
		resources :rooms do
		    resources :bookings
		end
	end


	resources :event_types
end
