Rails.application.routes.draw do
  get 'pages/index'

	%w[index about contact].each do |page|
	get page, controller: 'pages', action: page
	end

	get "pages/index"
	root to: "pages#index"

  devise_for :users

  resources :amenities


    resources :venues do
        resources :rooms do
            resources :bookings
        end
    end


	resources :event_types
end
