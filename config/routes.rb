Rails.application.routes.draw do
  root to: "steams#index"
  resources :sessions do
    post :logout, on: :collection
  end
  resources :users
  resources :steams
  resources :orders
  resources :statistics, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
