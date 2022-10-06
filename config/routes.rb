Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"

  #About page
  get "about", to: "pages#about"

  #Articles
  resources :articles

  #Signup for user
  get "signup", to: "users#new"
  resources :users, except: [:new]
end
