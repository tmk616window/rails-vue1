Rails.application.routes.draw do
   get 'sessions/new'
   root to: 'home#index'
   get '/login', to: 'home#index'
   get '/:id', to: 'home#index'
   get '/signup', to: 'home#index'
   namespace :api, format: 'json' do
      resources :tasks, only: [:index, :create, :update, :show, :destroy]
      resources :users, only: [:index, :create, :update, :show, :destroy]
      resources :sessions, only: [:new, :create, :destroy]
      resources :protags, only: [:index, :create, :update, :show, :destroy]
   end
end
