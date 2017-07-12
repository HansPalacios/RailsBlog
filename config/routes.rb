Rails.application.routes.draw do
  root 'home#index'
  resources :posts do
  	resources :comments
  end
  resources :users
  get '/signup' =>'signup#index'
  get '/signin' =>'signin#index'
  post '/sign-in' => 'signin#create'
  post '/signout' => 'signin#destroy'
  get '/post' => 'home#index'
  resources :profile, only: [:index,:show,:update,:create,:destroy]
end
