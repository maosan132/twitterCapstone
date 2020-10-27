Rails.application.routes.draw do
  root 'login_pages#login'
  resources :tastes, only: %i[new create index]
  resources :users
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  post '/login', to: 'sessions#create'

  get '/discover', to: 'tastes#discover', as: 'discover'

end
