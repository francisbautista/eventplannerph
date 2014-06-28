Rails.application.routes.draw do

<<<<<<< HEAD
    get 'pages/index'

    %w[index about contact].each do |page|
        get page, controller: 'pages', action: page
    end

    root to: "pages#index"

    devise_for :suppliers

    devise_for :users

    resources :amenities
=======
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
>>>>>>> 61b156201c2cadb067262a5c2fa4ce81d3d7973d

	%w[index about contact].each do |page|
		get page, controller: 'pages', action: page
	end

	get 'pages/index'
	root to: "pages#index"

<<<<<<< HEAD
    resources :event_types
=======
>>>>>>> 61b156201c2cadb067262a5c2fa4ce81d3d7973d
end

