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


	%w[index about contact].each do |page|
		get page, controller: 'pages', action: page
	end


	get "/dashboard", to: "pages#dashboard", as: :dashboard
	root to: "pages#index"


    resources :event_types

end

