Rails.application.routes.draw do
  resources :mood_posts

  get 'posts', to: 'posts#index'
  get 'moods', to: 'moods#index'
  
  get '/posts/:id', to: 'posts#show'
  get '/moods/:id', to: 'moods#show'
  get 'users/:id' ,to: 'users#show'

  post 'posts', to: 'posts#create'



  resources :moods, only: [ :create, :edit,:update, :create, :destroy]
  resources :users, only: [:show, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
