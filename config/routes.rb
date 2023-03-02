Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
    resources :cars do
      resources :bookings
  end

  resources :users, only: %i[index show]
end
