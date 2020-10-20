Rails.application.routes.draw do
  root 'login_pages#login'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

end
