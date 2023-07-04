Rails.application.routes.draw do
  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'



  resources :bikes do
    resources :reviews
  end

  resources :reviews do
    put '/like', to: 'reviews#like'
  end
end
