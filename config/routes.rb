Rails.application.routes.draw do
  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/users', to: 'users#index'
  get '/users/me', to: 'users#show'
  

  resources :bikes, only: [:index, :show, :create, :update, :destroy] do
    resources :reviews
    

  end

  resources :reviews do
    put '/like', to: 'reviews#like'
  end
end

