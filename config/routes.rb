Rails.application.routes.draw do
  root 'login_pages#login'
  resources :tastes, only: %i[new create index]
  resources :users
  resources :followings, only: %i[create destroy]
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'  

  get '/discover', to: 'tastes#discover', as: 'discover'

end
