Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'
  namespace :api do
    resources :transactions, only: [:index, :show, :create]
    resources :users, only: [:create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
