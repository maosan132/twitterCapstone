Rails.application.routes.draw do
  get 'tastes/index'
  get 'tastes/new'
  get 'tastes/create'
  get 'tastes/findout'
  root 'login_pages#login'
  resources :tastes, only: %i[new create index]

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  post '/login', to: 'sessions#create'
end
