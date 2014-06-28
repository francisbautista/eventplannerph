Rails.application.routes.draw do
        
    resources :venues do
        resources :rooms do
            resources :bookings
        end
    end

    resources :event_types
end
