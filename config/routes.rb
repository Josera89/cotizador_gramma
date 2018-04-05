Rails.application.routes.draw do
  get '/', to: 'landing#index'
  get '/signup', to: 'landing#signup'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
