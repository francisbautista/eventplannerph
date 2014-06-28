Rails.application.routes.draw do


    get 'pages/index'

    %w[index about contact].each do |page|
        get page, controller: 'pages', action: page
    end

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



	get "/dashboard", to: "pages#dashboard", as: :dashboard
	root to: "pages#index"

end

