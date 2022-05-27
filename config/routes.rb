Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :vans, only: %i[index new create show destroy edit update] do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: [:show, :destroy]
  get "dashboard", to: "pages#dashboard"
  get "accept", to: "pages#accept_reservation"
  get "cancel", to: "pages#cancel_reservation"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
