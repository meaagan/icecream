Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :sundaes, only: [:create,:new,:show,:index]
end
