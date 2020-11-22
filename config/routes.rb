Rails.application.routes.draw do
  root to: "steams#index"
  resources :sessions do
    post :logout, on: :collection
  end
  resources :users
  resources :steams do
    get :purchase, on: :collection
    post :purchase_create, on: :collection
  end
  resources :orders do
    get :my, on: :collection
  end
  resources :statistics, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
