Rails.application.routes.draw do
  get 'topics/new'
  get 'users/new'
  root 'pages#index'
   get 'pages/help'
   get 'pages/index'
   get 'pages/help'
   get 'pages/discription'
   get 'pages/sample01'
   
   
   get    '/login',   to: 'sessions#new'
   post   '/login',   to: 'sessions#create'
   delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  resources :topics
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  
end