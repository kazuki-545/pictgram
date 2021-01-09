Rails.application.routes.draw do
  get 'users/new'
  root 'pages#index'
   get 'pages/help'
   get 'pages/index'
   get 'pages/help'
   get 'pages/discription'
   get 'pages/sample01'
   
   resources :users
   
   get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end