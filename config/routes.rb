Rails.application.routes.draw do

  %w[index about contact].each do |page|
      get page, controller: 'pages', action: page
  end

  get "/dashboard", to: "pages#dashboard", as: :dashboard
  root to: "pages#index"

  devise_for :suppliers
  devise_for :users

  resources :pages
  resources :event_types

  resources :amenities
	resources :venues do
		resources :rooms do
			resources :bookings
		end
	end




end
