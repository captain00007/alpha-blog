Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#home'

  #About page
  get 'about', to: 'pages#about'

  #Articles
  resources :articles

  #User
  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  #Searching
  get 'search', to: 'searches#search_articles'

  #Categories
  resources :categories
end
