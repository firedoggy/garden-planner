Rails.application.routes.draw do
    root 'sessions#home'

    get '/signup' => 'users#new'
    post '/signup' => 'users#create'

    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    post '/logout' => 'sessions#destroy'

    post 'plants/search' => 'plants#search', as: 'plants_search'
    
    resources :gardens
    resources :plants
    resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
