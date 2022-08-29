Rails.application.routes.draw do
  resources :sales
  devise_for :users
  resources :ads
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
