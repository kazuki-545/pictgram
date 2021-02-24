Rails.application.routes.draw do
  get 'pages/sample02'
  root 'pages#index'
   get 'pages/help'
   get 'pages/index'
   get 'pages/discription'
   get 'pages/sample01'
   get 'pages/sample02'
   
   
   get    '/login',   to: 'sessions#new'
   post   '/login',   to: 'sessions#create'
   delete '/logout',  to: 'sessions#destroy'
   delete '/users_destroy', to: 'users#destroy'
  
  resources :users
  resources :topics
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  
end