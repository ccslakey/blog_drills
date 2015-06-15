Rails.application.routes.draw do
  ##############
  #home/articles
  ##############

  #render
  root to: 'articles#index'
  get '/articles', to: 'articles#index'
  
  #new article
  get 'articles/new', to: 'articles#new', as: 'new_article'
  post 'articles', to: 'articles#create'

  #show 1 article
  get '/articles/:id', to: 'articles#show'

  ############
  #users
  ############

  #new user
  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'

  #see someone's page
  get 'users/:id', to: 'users#show'
  
  #########
  #sessions
  #########

  #sessions helper methods
  get '/sign_in', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  
  resources :users

end
