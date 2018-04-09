Rails.application.routes.draw do
  # get '/landing', to: 'login#index'
  get '/', to: 'sessions#new'
  get '/home', to: 'home#index'

  get '/login', to: 'sessions#new'
  post '/login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'

  get '/signup', to: 'users#new'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
