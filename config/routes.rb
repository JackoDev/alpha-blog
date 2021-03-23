Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/home'
  get 'pages/about'
  resources  :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
