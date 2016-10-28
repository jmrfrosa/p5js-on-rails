Rails.application.routes.draw do
  root to: 'pages#show'
  get 'pages/show'
  post 'pages/show', to: 'pages#update'

  resources :sketches
end