Rails.application.routes.draw do
  devise_for :fighters
  resources :fights
  get 'home/profile'
  root "home#index"
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
