Rails.application.routes.draw do
  namespace :api do
    get 'transactions/index'
    get 'transactions/show'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
