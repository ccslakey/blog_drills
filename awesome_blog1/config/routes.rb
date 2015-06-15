Rails.application.routes.draw do
  
  # home
  root to: 'users#index'
  # create new user
  get '/users', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'

  #see your page
  get 'users/:id', to: 'users#show'

  #sessions from sessions helper
  get '/sign_in', to: "sessions#new"
  post "/sessions", to: "sessions#create"
  get '/logout', to: 'sessions#destroy'
  
  #render articles
  get '/articles', to: 'articles#index'
  get '/articles/new', to: 'articles#new', as: 'new_article'

  #create an article
  post 'articles', to: 'articles#create'

  resources :users

end
