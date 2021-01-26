Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :show]
      post '/login', to: 'auth#login'
      get '/profile', to: 'users#profile'

      resources :moods, only:[:create, :destroy, :show]
      resources :posts
    end
  end
end

# resources :mood_posts

# get 'posts', to: 'posts#index'
# get 'moods', to: 'moods#index'

# get '/posts/:id', to: 'posts#show'
# get '/moods/:id', to: 'moods#show'
# get 'users/:id' ,to: 'users#show'

# post 'posts', to: 'posts#create'



# resources :moods, only: [ :create, :edit,:update, :create, :destroy]
# resources :users, only: [:show, :create, :edit, :update, :destroy]