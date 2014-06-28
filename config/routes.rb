Rails.application.routes.draw do
        
  devise_for :users
    resources :venues do
        resources :rooms do
            resources :bookings
        end
    end

    resources :event_types
end
