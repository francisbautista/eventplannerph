Rails.application.routes.draw do

  resources :event_types

  resources :bookings

  resources :rooms
  resources :venues


end
