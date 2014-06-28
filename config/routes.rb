Rails.application.routes.draw do

<<<<<<< HEAD

    get 'pages/index'

    %w[index about contact].each do |page|
        get page, controller: 'pages', action: page
    end

    devise_for :suppliers

    devise_for :users

    resources :amenities
=======

	devise_for :suppliers
	devise_for :users
>>>>>>> 2571a130a195997e22e04593ba183230bbfb9948



	resources :venues do
		resources :rooms do
			resources :bookings
		end
	end

	resources :pages
<<<<<<< HEAD
=======
	resources :event_types
>>>>>>> 2571a130a195997e22e04593ba183230bbfb9948


	%w[index about contact].each do |page|
		get page, controller: 'pages', action: page
	end


	get "/dashboard", to: "pages#dashboard", as: :dashboard
	root to: "pages#index"


<<<<<<< HEAD
    resources :event_types

=======
>>>>>>> 2571a130a195997e22e04593ba183230bbfb9948
end

