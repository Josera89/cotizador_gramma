Rails.application.routes.draw do
  get '/', to: 'sessions#new'
  get '/home', to: 'home#index'

  get '/bills', to: 'bills#index'
  post 'bills' => 'bills#create'
  get '/bills/new' => 'bills#new'

  get '/signup', to: 'users#new'

  get '/login', to: 'sessions#new'
  post '/login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'

  get '/error' => 'error#index'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
