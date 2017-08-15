Rails.application.routes.draw do
  root 'home#index'
  resources :posts do
  	resources :comments
  end
  resources :users
  get '/signup' =>'signup#index'
  get '/signin' =>'signin#index'
  post '/sign-in' => 'signin#create'
  get '/signout' => 'signin#destroy'
  # put '/user/update' => 'users#update'
end
