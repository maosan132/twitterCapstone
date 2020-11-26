Rails.application.routes.draw do
  root 'login_pages#login'
  resources :tastes, only: %i[new create index]
  resources :users
  resources :followings, only: %i[create destroy]
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'  

  post '/users/:id/follow', to: "users#follow", as: "follow_user"
  post '/users/:id/unfollow', to: "users#unfollow", as: "unfollow_user"



end
