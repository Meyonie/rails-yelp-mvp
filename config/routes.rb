Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create, :show]
  end

  # # READ / read all restaurants
  # get '/restaurants', to: 'restaurants#index'

  # # DISPLAY  / form
  # get '/restaurants/new', to: 'restaurants#new'

  # # CREATE / create a new resto
  # post '/restaurants', to: 'restaurants#create'

  #  # READ / read one restaurant
  # get '/restaurants/:id', to: 'restaurants#show'
end
