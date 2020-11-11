Rails.application.routes.draw do
   root to: 'home#index'
   get '/login', to: 'home#index'
   get '/:id', to: 'home#index'
   get '/signup', to: 'home#index'
   namespace :api, format: 'json' do
      resources :tasks, only: [:index, :create, :update, :show, :destroy]
   end
   
   namespace :api, format: 'json' do
      resources :users, only: [:index, :create, :update, :show, :destroy]
   end
   
   
end
