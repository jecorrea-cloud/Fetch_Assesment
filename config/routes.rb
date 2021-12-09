Rails.application.routes.draw do
  resources :transactions
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/users', to: 'user#index'

  get '/balance', to: 'transactions#index'
  post '/add_transaction', to: 'transactions#create'
  put '/spend_points', to: 'transactions#spend_pts'


end
