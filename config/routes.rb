Rails.application.routes.draw do
  root to: "pages#home"
  resources :users do
    resources :cars do
      resources :bookings
    end
  end
  resources :cars, except: [:index]
end
