Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  post 'login', to: 'home#login'

  resources :doctors do
    resources :appointments, only: [:index, :new, :create, :destroy]
  end
end
