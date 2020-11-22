Rails.application.routes.draw do
  root to: "steams#index"
  resources :sessions do
    post :logout, on: :collection
  end
  resources :users
  resources :steams
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
