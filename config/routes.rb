Rails.application.routes.draw do
  devise_for :users
  root to: "cars#index"
    resources :cars do
      resources :bookings
  end
  resources :cars, except: [:index]
end
