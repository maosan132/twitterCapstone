Rails.application.routes.draw do
  root 'login_pages#login'
  resources :tastes, only: %i[new create index]

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

end
