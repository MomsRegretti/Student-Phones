Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :phones
  resources :students
  resources :apps
  # Defines the root path route ("/")
  # root "articles#index"
end
